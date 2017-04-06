/*
* Assignment: Spin Project One
* Class: CS4710 Sping 2-17
* Authors: Brian Keith
*		   Jake Timmer
*/

int N = 10;
int A[N];

//swaps A[i] and A[j]
proctype swap(int i; int j){

	printf("In Swapper Proc %d with j = %d\n",i,j);
	
	//TODO Make this good
	int temp = A[i]
	A[i] = A[j];
	A[j] = temp;

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
			//gets random number 0 - N-1
			int j;
			select(j : 0  .. N-1)
			assert(j >= 0 && i <= 9);

			//start process i with random index j
			run swap(i,j);
			i++;

		:: else -> break;
	od;

	//this loop checks the number of running processes
	//once it is 1 you know all the swaps are done and init is the last running process
	do
		:: _nr_pr > 1 -> skip;
		:: else -> break;
	od;

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
