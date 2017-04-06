int N = 10;
int A[N];

proctype swap(int num){

	printf("In Swapper Proc %d\n",num);

	printf("Swapper Proc %d done\n",num);
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

	i = 0;
	do
		:: i < N ->
			run swap(i);
			i++;
		:: else -> break;
	od;

	printf("Init Done\n");
}