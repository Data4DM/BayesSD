from distutils.core import setup

setup(
      name = "ISTS",
      version = "1.0",
      py_modules = ["ists/ists","ists/__init__"],
      author = "Bogazici University SESDYN",
      requires = ["numpy", "os", "sys","xlrd","scipy"],
      data_files = [('lib/site-packages/ists/lib',['lib/ISTS_Training_Data_07_2013.txt'])]
      
     )