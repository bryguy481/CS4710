/*
* Assignment: Spin Project One
* Class: CS4710 Sping 2-17
* Authors: Brian Keith
*		   Jake Timmer
*/


int N = 3;
int A[N];
int B[N];

int cs = 0;
#define mutex (cs <= 1);
//Represents locks
byte indexLocks[N];

//swaps A[i] and A[j]
proctype swap(int i; int j){


	//atomicly checks if a lock is taken and if so loops. Otherwise take the lock 
	do
		:: atomic{
			if 
				:: indexLocks[i] == 1 && indexLocks[j] == 1 && cs == false->
					cs ++;
					indexLocks[i] = 0;
					indexLocks[j] = 0;
					cs --;
					break;
				:: else -> 
					cs ++;
					printf("Lock %d or %d Taken\n",i,j);
					cs --;
			fi;
			}
	od;
			
	printf("Swapping A[%d] and A[%d]\n",i,j);
	int temp = A[i];
	A[i] = A[j];
	A[j] = temp;

	//unlock i and j
	atomic{
		indexLocks[i] = 1;
		indexLocks[j] = 1;
	}
	
	printf("Swapped A[%d] and A[%d]\n",i,j);
}


init{

	//fill A with distinct values
	int i = 0;
	do
		:: i < N -> 

			indexLocks[i] = 1;

			A[i] = i;
			assert(A[i] == i);
			printf("A[%d] = %d\n",i,i);
			i++;
		:: else -> break;
	od;

	//start N swap processes
	i = 0;
	do
		:: i < N ->

			//gets random number 0 - N-1
			int j;
			select(j : 0  .. N-1);
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
			B[A[i]] = B[A[i]] + 1;
			//assertion to ensure distinction
			assert(B[A[i]] == 1);
			i++;
		:: else -> break;
	od;


	printf("Init Done\n");
}

ltl mutex {
	[]mutex;
}