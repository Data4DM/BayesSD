[Frankfurt17_Source](https://ftp.fu-berlin.de/pub/misc/movies/database/frozendata/) (noted as fr17 below)  from IMDb datasets(im17); is more structured (acc. to them)  
a. separation of agents (actor, actress, directors, editor, **complete cast**, complete crew, distributor, editors)

Data format change

New file formats is in [[imdb22]].

>  streamlined, structuralized datasets

![[Pasted image 20221011102003.png]]
- mapping btw person and role; coflow with different outflow rate documented in BayesSD [here](https://github.com/Data4DM/BayesSD/discussions/38#discussioncomment-3821861) 
- [[fr17_aka-titles]]  fr17  has 29k, 
- [[fr17 aka-names]]

Q1. can I discard director information for now (how can it affect durable dominance? star directors?)

>  Data refresh frequency is **daily (prev: weekly)**.

Q2. which file in fr17 to look for?

> IMDb title and name identifiers are included in all the files for ease of matching and linking back to IMDb.


> The files are in tab separated values (TSV) format.

Q4. cannot find way to read list files

> The sets of data we provide are updated to only include the **essential ones** that help with matching and linking to an IMDb title or name.

> AKA Titles have been added to the basic dataset, and further extended datasets are also being developed to assist contributors.

Q5. ?

Q6. example of coflow structure in labor force, building demolition, job candidates and options
![[Pasted image 20221011105059.png]]