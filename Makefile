CC = mpicc
CFLAGS = -O3
RM = rm -f

EXECUTABLES_DATASETS = main_datasets.out

EXECUTABLES_RAND = main_rand.out

DEPENDENCIES = distribute_by_median.c functions.c 

datasets: $(EXECUTABLES_DATASETS)

main_datasets.out:  main_datasets.c $(DEPENDENCIES)
	$(CC) $(CFLAGS) $^ -o $@ -lm

rand: $(EXECUTABLES_RAND)

main_rand.out:  main_rand.c $(DEPENDENCIES)
	$(CC) $(CFLAGS) $^ -o $@ -lm

clean:
	$(RM) $(EXECUTABLES_RAND) $(EXECUTABLES_DATASETS)