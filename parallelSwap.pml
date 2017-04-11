/*
* Assignment: Spin Project One
* Class: CS4710 Sping 2-17
* Authors: Brian Keith
*		   Jake Timmer
*/

int N = 10;
int A[N];

//THIS DOESN'T WORK ATM. If we can implement these correctly we are golden
chan arrayLock = [0] of {byte};
chan indexLocks[N] = [0] of {byte}

//swaps A[i] and A[j]
proctype swap(int i; int j){

	byte rec;
	//TODO Make this good

	//simulates waiting on a lock
	arrayLock ? rec;
		indexLocks[i] ? rec;
		indexLocks[j] ? rec;
	arrayLock ! 1;
	
	printf("In Swapper Proc %d with j = %d\n",i,j);
	int temp = A[i];
	A[i] = A[j];
	A[j] = temp;

	//unlock i and j
	indexLocks[i] ! 1;
	indexLocks[j] ! 1;
	
	printf("Swapper Proc %d done\n",i);
}


init{

	//fill A with distinct values
	int i = 0;
	do
		:: i < N -> 
			A[i] = i;
			printf("A[%d] = %d\n",i,i);
			i++;
		:: else -> break;
	od;

	//start N swap processes
	i = 0;
	do
		:: i < N ->

			//start all index locks as open
			indexLocks[i] ! 1;
			//gets random number 0 - N-1
			int j;
			select(j : 0  .. N-1)
			assert(j >= 0 && i <= 9);
			
			//start process i with random index j
			run swap(i,j);
			i++;

		:: else -> break;
	od;

	//blocks until one process is running, which will be init
	_nr_pr == 1;
	assert(_nr_pr == 1);

	printf("Swaps Done\n");

	i = 0;
	do
		:: i < N -> 
			printf("A[%d] = %d\n",i,A[i]);
			i++;
		:: else -> break;
	od;
	printf("Init Done\n");
}
