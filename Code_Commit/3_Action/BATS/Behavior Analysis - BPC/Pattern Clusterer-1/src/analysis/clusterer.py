'''
Created on June 28, 2013

.. codeauthor:: 
     gyucel <gonenc.yucel (at) boun (dot) edu (dot) tr>,
                
a simplified stand-alone version of the clusterer function of the EMA Workbench. 
This version is developed to accompany the pattern recognition chapter of the XXYY book
For more information about the EMA Workbench check www or contact JK 

'''
from __future__ import division
import matplotlib.pyplot as plt
import numpy as np
from scipy.cluster.hierarchy import fcluster, linkage, dendrogram, inconsistent
from scipy.spatial.distance import squareform

import xlrd as xlrd
from xlrd import open_workbook #http://pypi.python.org/pypi/xlrd
from expWorkbench.EMAlogging import info
from expWorkbench import EMAError
from expWorkbench import util
from clusterCode.distance_pattern import distance_pattern
from clusterCode.distance_triangle import distance_triangle
from clusterCode.distance_sse import distance_sse
from clusterCode.distance_mse import distance_mse
import clusterCode.clusterPlotter as plotter

distance_functions = {'pattern': distance_pattern,
                      'triangle':distance_triangle,
                      'sse': distance_sse,
                      'mse': distance_mse}

# Global variables
runLogs = []
varName = ""
clusterCount = 0

def import_data(inputFileName):
    relPathFileFolder = '../../datasets'    #Relative path to the folder in which dataset files reside
    fileName = inputFileName

    book = open_workbook(relPathFileFolder+'/'+inputFileName+'.xlsx')
    sheet = book.sheet_by_name('data')
    noRuns = sheet.nrows-1
    noDataPoints = sheet.ncols-4
    print noRuns, noDataPoints

    dataSet = np.zeros((noRuns,noDataPoints))
    for i in range(noRuns):
        output = sheet.row_values(i+1,4)
        dataSet[i] = output
    
    results = {'outcome':dataSet}   #Saves the results as if it is from a simulation experiment set, and only one outcome of interest is recorded, which is named "outcome"
    cases = np.zeros(noRuns, dtype=[('No','i4'),('Label','a30'),('Class ID', 'i4'),('Class Desc','a40')])

    for i in range(noRuns):
        no = sheet.cell(i+1,0).value        #ID of the dataset
        label = sheet.cell(i+1,1).value     #Label of the dataset, i.e. a string that includes the class of the dataset and its ID
        classID = sheet.cell(i+1,2).value   #ID of the behaviour class to which the dataset belongs 
        classDesc = sheet.cell(i+1,3).value
        instance = (no,label,classID, classDesc)
        cases [i] = instance

    data = (cases,results)
    util.save_results(data, relPathFileFolder+'/'+fileName+'.cpickle')


def cluster(data, 
            outcome,
            distance='pattern',
            interClusterDistance='complete',
            cMethod='inconsistent',
            cValue=1.5,
            plotDendrogram=True,
            plotClusters=True,
            groupPlot=False,
            **kwargs):
    '''
    
    Method that clusters time-series data from the specified cpickle file 
    according to a selected distance measure.
    
    :param data: return from meth:`perform_experiments`.
    :param outcome: Name of outcome/variable whose behavior is being analyzed
    :param distance: The distance metric to be used.
    :param interClusterDistance: How to calculate inter cluster distance.
                                 see `linkage <http://docs.scipy.org/doc/scipy/reference/generated/scipy.cluster.hierarchy.linkage.html#scipy.cluster.hierarchy.linkage>`_ 
                                 for details.
    :param cMethod: Cutoff method, 
                    see `fcluster <http://docs.scipy.org/doc/scipy/reference/generated/scipy.cluster.hierarchy.fcluster.html#scipy.cluster.hierarchy.fcluster>`_ 
                    for details.
    :param cValue: Cutoff value, see 
                   `fcluster <http://docs.scipy.org/doc/scipy/reference/generated/scipy.cluster.hierarchy.fcluster.html#scipy.cluster.hierarchy.fcluster>`_ 
                   for details.
    :param plotDendogram: Boolean, if true, plot dendogram.
    :param plotCluster: Boolean, true if you want to plot clusters.
    :param groupPlot: Boolean, if true plot clusters in a single window, 
                      else the clusters are plotted in separate windows.
    :rtype: A tuple containing the list of distances, the list of Cluster objects (for each cluster a Cluster object that contains basic info about the cluster), 
            and a list that gives the index of the cluster each data series is allocated.     
    
    The remainder of the arguments are passed on to the specified distance 
    function.
    
    Pattern Distance:
    
    * 'distance': String that specifies the distance to be used. 
                  Options: pattern (default), mse, sse, triangle
    * 'filter?': Boolean that specifies whether the data series will be 
                 filtered (for bmd distance)
    * 'slope filter': A float number that specifies the filtering threshold 
                     for the slope (for every data point if change__in_the_
                     outcome/average_value_of_the_outcome < threshold, 
                     consider slope = 0) (for bmd distance)
    * 'curvature filter': A float number that specifies the filtering 
                          threshold for the curvature (for every data point if 
                          change__in_the_slope/average_value_of_the_slope < 
                          threshold, consider curvature = 0) (for bmd distance)
    * 'no of sisters': 50 (for pattern distance)

    '''
    
    global varName 
    varName = outcome
    data = data[1][outcome]
    
    # Construct a list with distances. This list is the upper triangle
    # of the distance matrix
    dRow, runLogs = construct_distances(data, distance, **kwargs)
    info('finished distances')
    
    # Allocate individual runs into clusters using hierarchical agglomerative 
    # clustering. clusterSetup is a dictionary that customizes the clustering 
    # algorithm to be used.
    z, clusters, runLogs = flatcluster(dRow, 
                                    runLogs, 
                                    plotDendrogram=plotDendrogram,
                                    interClusterDistance=interClusterDistance,
                                    cMethod=cMethod,
                                    cValue=cValue)


    clusterList = make_data_structure(clusters, dRow, runLogs)

    if plotClusters:
        plot_clusters(groupPlot, runLogs)
    
    return dRow, clusterList, clusters

def make_data_structure(clusters, distRow, runLogs):
    nr_clusters = np.max(clusters)
    cluster_list = []
    for i in range(1, nr_clusters+1):
        #determine the indices for cluster i
        indices = np.where(clusters==i)[0]
        
        drow_indices = np.zeros((indices.shape[0]**2-indices.shape[0])/2, dtype=int)
        s = 0
        #get the indices for the distance for the runs in the cluster
        for q in range(indices.shape[0]):
            for r in range(q+1, indices.shape[0]):
                b = indices[q]
                a = indices[r]
                
                drow_indices[s] = get_drow_index(indices[r],
                                                 indices[q], 
                                                 clusters.shape[0])
                s+=1
        
        #get the distance for the runs in the cluster
        dist_clust = distRow[drow_indices]
        
        #make a distance matrix
        dist_matrix = squareform(dist_clust)

        #sum across the rows
        row_sum = dist_matrix.sum(axis=0)
        
        #get the index of the result with the lowest sum of distances
        min_cIndex = row_sum.argmin()
    
        # convert this cluster specific index back to the overall cluster list 
        # of indices
        originalIndices = np.where(clusters==i)
        originalIndex = originalIndices[0][min_cIndex]

        a = list(np.where(clusters==i)[0])
        a = [int(entry) for entry in a]
        
        cluster = Cluster(i, 
                          np.where(clusters==i)[0], 
                          originalIndex,
                          [runLogs[entry] for entry in a])
        cluster_list.append(cluster)
        
    return cluster_list

def get_drow_index(i,j, size):
    '''
    Get the index in the distance row for the distance between i and j.
    
    :param i; result i
    :param j: result j
    :param size: the number of results
    
    ...note:: i > j
    
    '''
    assert i > j

    index = 0
    for q in range(size-j, size):
        index += q
    index = index+(i-(1*j))-1

    return index

def construct_distances(data, distance='pattern', **kwargs):
    """ 
    Constructs a n-by-n matrix of distances for n data-series in data 
    according to the specified distance.
    
    Distance argument specifies the distance measure to be used. Options are as follows;
    * pattern: a distance based on qualitative dynamic pattern features 
    * sse: regular sum of squared errors
    * mse: regular mean squared error
    * triangle: triangular distance 
    """
    
    # Sets up the distance function according to user specification
    try:
        return distance_functions[distance](data, **kwargs)
    except KeyError:
        raise EMAError("trying to use an unknown distance: %s" %(distance))

def flatcluster(dRow, runLogs, 
                interClusterDistance='complete',
                plotDendrogram=True,
                cMethod='inconsistent',
                cValue=2.5):

    z = linkage(dRow, interClusterDistance)
    
    if plotDendrogram:
        plotdendrogram(z)
    
    clusters = fcluster(z, cValue, cMethod)
    
    noClusters = max(clusters)
    print 'Total number of clusters:', noClusters
    for i in range(noClusters):
        counter = 0
        for j in range(len(clusters)):
            if clusters[j]==(i+1):
                counter+=1
        print "Cluster",str(i+1),":",str(counter)
    
    global clusterCount
    clusterCount = noClusters
    for i, log in enumerate(runLogs):
        log[0]['Cluster'] = str(clusters[i])
    
    return z, clusters, runLogs
           
def plotdendrogram(z):
    
    dendrogram(z,
               truncate_mode='lastp',
               show_leaf_counts=True,
               show_contracted=True
               )
    plt.show()

def plot_clusters(groupPlot, runLogs):
    global varName
    global clusterCount
    noRuns = len(runLogs)
    
    clustersToPlot = []
    #print 'Cluster Sayisi ', clusterCount
    # For each cluster, create a data structure
    for clust in range(clusterCount):    
        runSubset = []
        for runIndex in range(noRuns):
            if runLogs[runIndex][0]['Cluster']==str(clust+1):
                runSubset.append(runLogs[runIndex])
        
        # Dumps data about each cluster to a different cpickle file
        if groupPlot:
            clustersToPlot.append(runSubset)
        else:
            callSinglePlotter(runSubset)
   
    if groupPlot:
        callGroupPlotter(clustersToPlot)
   
def callSinglePlotter(data):
    plt = plotter.singlePlot()
    plt.setData(data)
    global varName
    plt.setVarName(varName)
    plt.configure_traits()

def callGroupPlotter(data):
    plt = plotter.groupPlot()
    plt.setData(data)
    global varName
    plt.setVarName(varName)
    plt.configure_traits()  


class Cluster(object):
    '''
    Contains information about a data-series cluster, as well as some methods to help analyzing a cluster.
    Basic attributes of a cluster (e.g. c) object are as follows;
        c.no : Cluster number/index
        c.indices : Original indices of the dataseries that are in cluster c
        c.sample : Original index of the dataseries that is the representative of cluster c (i.e. median element of the cluster)
        c.size : Number of elements (i.e. dataseries) in the cluster c
    '''

    def __init__(self, 
                 cluster_no, 
                 all_ds_indices, 
                 sample_ds_index,
                 runLogs):
        '''
        Constructor
        '''
        self.no = cluster_no
        self.indices = all_ds_indices
        self.sample = int(sample_ds_index)
        self.size = self.indices.size
        self.runLogs = runLogs
        
        
    def error(self):
        return self.sample


'''
The main method where the use needs to specify the path to the simulation results

'''
   
if __name__ == '__main__':
    from expWorkbench import load_results
    inputFileName = 'TestModel_Demo'
    print xlrd.__VERSION__
    import_data(inputFileName)
    results = load_results('../../datasets/'+inputFileName +'.cPickle')
    distance, list, clusters = cluster(results, 'outcome',cMethod='distance', cValue=0.4, groupPlot=False, plotDendrogram=True)

    
        
    


