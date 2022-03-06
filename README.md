# MPI project: distribute points by median distance

Suppose a dataset with a total of **N points**, constisting of **d dimensions**, that are evenly distributed accross **p processes**. This assignment's purpose is composing an _MPI algorithm_ that will be able to sort the points according to their distance from a random pivot point chosen by the **Leader** (which is the name we have chosen to give to the process that is both responsible for the points it possesses and organizing the rest of the workers). This is realized by using helper functions and _distributeByMedian_, which is the main part of the algorithm. It takes a group of p processes, and provides the first _p/2 processes_ with the points that are closer to the pivot (i.e. with distances equal or smaller than the median distance) and the rest of the points go to the remaining half.
\
\
_distributeByMedian_ is called multiple times, leading to each process containing the points that are closer to the pivot than the ones of the next process and further than the ones of the previous process.
\
\
We describe our solution in the comments of _distributeByMedian_ and _mainDatasets_ files.
\
\
In order to run the executables at first we run this command:
\
`export OMPI_MCA_btl_vader_single_copy_mechanism=none`
\
and then:
\
`mpirun -np [p] [outputFile.out]`
\
where p is the number of processes we want to use
