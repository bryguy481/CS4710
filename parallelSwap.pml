int N = 10;
int A[N];

proctype swap(int i; int j){

	printf("In Swapper Proc %d with j = %d\n",i,j);

	printf("Swapper Proc %d done\n",i);
}


init{

	//fill A with distinct values
	int k = 0;
	do
		:: k < N -> 
			A[k] = k;
			printf("A[%d] = %d\n",k,k);
			k++;
		:: else -> break;
	od;

	k = 0;
	do
		:: k < N ->
			//start swap process i with j
			int j;
			//gets random number 0 - N-1
			select(j : 0  .. N-1)
			assert(j >= 0 && k <= 9);
			run swap(k,j);
			k++;
		:: else -> break;
	od;

	printf("Init Done\n");
}