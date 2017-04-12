#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM never_0 */
	case 3: // STATE 7 - parallelSwap.pml.nvr:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][7] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 4: // STATE 1 - parallelSwap.pml:60 - [((i<N))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((P1 *)this)->i<now.N)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 2 - parallelSwap.pml:62 - [indexLocks[i] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((int)now.indexLocks[ Index(((P1 *)this)->i, 3) ]);
		now.indexLocks[ Index(((P1 *)this)->i, 3) ] = 1;
#ifdef VAR_RANGES
		logval("indexLocks[:init::i]", ((int)now.indexLocks[ Index(((P1 *)this)->i, 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 3 - parallelSwap.pml:64 - [A[i] = i] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = now.A[ Index(((P1 *)this)->i, 3) ];
		now.A[ Index(((P1 *)this)->i, 3) ] = ((P1 *)this)->i;
#ifdef VAR_RANGES
		logval("A[:init::i]", now.A[ Index(((P1 *)this)->i, 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 4 - parallelSwap.pml:65 - [assert((A[i]==i))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		spin_assert((now.A[ Index(((P1 *)this)->i, 3) ]==((P1 *)this)->i), "(A[i]==i)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 5 - parallelSwap.pml:66 - [printf('A[%d] = %d\\n',i,i)] (0:9:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		Printf("A[%d] = %d\n", ((P1 *)this)->i, ((P1 *)this)->i);
		/* merge: i = (i+1)(9, 6, 9) */
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 10, 9) */
		reached[1][10] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 9: // STATE 12 - parallelSwap.pml:72 - [i = 0] (0:27:1 - 3)
		IfNotBlocked
		reached[1][12] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[1][28] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 10: // STATE 13 - parallelSwap.pml:74 - [((i<N))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!((((P1 *)this)->i<now.N)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 14 - parallelSwap.pml:78 - [j = 0] (0:19:2 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->j;
		((P1 *)this)->j = 0;
#ifdef VAR_RANGES
		logval(":init::j", ((P1 *)this)->j);
#endif
		;
		/* merge: j = 0(19, 15, 19) */
		reached[1][15] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->j;
		((P1 *)this)->j = 0;
#ifdef VAR_RANGES
		logval(":init::j", ((P1 *)this)->j);
#endif
		;
		/* merge: .(goto)(0, 20, 19) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 12: // STATE 18 - parallelSwap.pml:78 - [goto :b3] (0:23:0 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		;
		/* merge: assert(((j>=0)&&(i<=9)))(23, 22, 23) */
		reached[1][22] = 1;
		spin_assert(((((P1 *)this)->j>=0)&&(((P1 *)this)->i<=9)), "((j>=0)&&(i<=9))", II, tt, t);
		_m = 3; goto P999; /* 1 */
	case 13: // STATE 16 - parallelSwap.pml:78 - [((j<(N-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!((((P1 *)this)->j<(now.N-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 17 - parallelSwap.pml:78 - [j = (j+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->j;
		((P1 *)this)->j = (((P1 *)this)->j+1);
#ifdef VAR_RANGES
		logval(":init::j", ((P1 *)this)->j);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 22 - parallelSwap.pml:79 - [assert(((j>=0)&&(i<=9)))] (0:23:0 - 2)
		IfNotBlocked
		reached[1][22] = 1;
		spin_assert(((((P1 *)this)->j>=0)&&(((P1 *)this)->i<=9)), "((j>=0)&&(i<=9))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 23 - parallelSwap.pml:82 - [(run swap(i,j))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		if (!(addproc(II, 1, 0, ((P1 *)this)->i, ((P1 *)this)->j)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: j */  (trpt+1)->bup.oval = ((P1 *)this)->j;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->j = 0;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 24 - parallelSwap.pml:83 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 30 - parallelSwap.pml:89 - [((_nr_pr==1))] (0:0:0 - 3)
		IfNotBlocked
		reached[1][30] = 1;
		if (!((((int)now._nr_pr)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 31 - parallelSwap.pml:90 - [assert((_nr_pr==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		spin_assert((((int)now._nr_pr)==1), "(_nr_pr==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 32 - parallelSwap.pml:92 - [printf('Swaps Done\\n')] (0:41:1 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		Printf("Swaps Done\n");
		/* merge: i = 0(41, 33, 41) */
		reached[1][33] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[1][42] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 21: // STATE 34 - parallelSwap.pml:96 - [((i<N))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		if (!((((P1 *)this)->i<now.N)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 35 - parallelSwap.pml:97 - [printf('A[%d] = %d\\n',i,A[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		Printf("A[%d] = %d\n", ((P1 *)this)->i, now.A[ Index(((P1 *)this)->i, 3) ]);
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 36 - parallelSwap.pml:98 - [B[A[i]] = (B[A[i]]+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		(trpt+1)->bup.oval = now.B[ Index(now.A[ Index(((P1 *)this)->i, 3) ], 3) ];
		now.B[ Index(now.A[ Index(((P1 *)this)->i, 3) ], 3) ] = (now.B[ Index(now.A[ Index(((P1 *)this)->i, 3) ], 3) ]+1);
#ifdef VAR_RANGES
		logval("B[A[:init::i]]", now.B[ Index(now.A[ Index(((P1 *)this)->i, 3) ], 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 37 - parallelSwap.pml:100 - [assert((B[A[i]]==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		spin_assert((now.B[ Index(now.A[ Index(((P1 *)this)->i, 3) ], 3) ]==1), "(B[A[i]]==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 38 - parallelSwap.pml:101 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 44 - parallelSwap.pml:106 - [printf('Init Done\\n')] (0:45:0 - 3)
		IfNotBlocked
		reached[1][44] = 1;
		Printf("Init Done\n");
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 45 - parallelSwap.pml:107 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC swap */
	case 28: // STATE 1 - parallelSwap.pml:26 - [((((indexLocks[i]==1)&&(indexLocks[j]==1))&&(cs==0)))] (16:0:4 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((((int)now.indexLocks[ Index(((P0 *)this)->i, 3) ])==1)&&(((int)now.indexLocks[ Index(((P0 *)this)->j, 3) ])==1))&&(now.cs==0))))
			continue;
		/* merge: cs = (cs+1)(16, 2, 16) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.cs;
		now.cs = (now.cs+1);
#ifdef VAR_RANGES
		logval("cs", now.cs);
#endif
		;
		/* merge: indexLocks[i] = 0(16, 3, 16) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.indexLocks[ Index(((P0 *)this)->i, 3) ]);
		now.indexLocks[ Index(((P0 *)this)->i, 3) ] = 0;
#ifdef VAR_RANGES
		logval("indexLocks[swap:i]", ((int)now.indexLocks[ Index(((P0 *)this)->i, 3) ]));
#endif
		;
		/* merge: indexLocks[j] = 0(16, 4, 16) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.indexLocks[ Index(((P0 *)this)->j, 3) ]);
		now.indexLocks[ Index(((P0 *)this)->j, 3) ] = 0;
#ifdef VAR_RANGES
		logval("indexLocks[swap:j]", ((int)now.indexLocks[ Index(((P0 *)this)->j, 3) ]));
#endif
		;
		/* merge: cs = (cs-1)(16, 5, 16) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[3] = now.cs;
		now.cs = (now.cs-1);
#ifdef VAR_RANGES
		logval("cs", now.cs);
#endif
		;
		/* merge: goto :b0(16, 6, 16) */
		reached[0][6] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 29: // STATE 12 - parallelSwap.pml:37 - [.(goto)] (0:14:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		;
		/* merge: .(goto)(0, 15, 14) */
		reached[0][15] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 30: // STATE 8 - parallelSwap.pml:33 - [cs = (cs+1)] (0:14:2 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.cs;
		now.cs = (now.cs+1);
#ifdef VAR_RANGES
		logval("cs", now.cs);
#endif
		;
		/* merge: printf('Lock %d or %d Taken\\n',i,j)(14, 9, 14) */
		reached[0][9] = 1;
		Printf("Lock %d or %d Taken\n", ((P0 *)this)->i, ((P0 *)this)->j);
		/* merge: cs = (cs-1)(14, 10, 14) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals[1] = now.cs;
		now.cs = (now.cs-1);
#ifdef VAR_RANGES
		logval("cs", now.cs);
#endif
		;
		/* merge: .(goto)(14, 12, 14) */
		reached[0][12] = 1;
		;
		/* merge: .(goto)(0, 15, 14) */
		reached[0][15] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 31: // STATE 17 - parallelSwap.pml:40 - [printf('Swapping A[%d] and A[%d]\\n',i,j)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		Printf("Swapping A[%d] and A[%d]\n", ((P0 *)this)->i, ((P0 *)this)->j);
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 18 - parallelSwap.pml:42 - [temp = A[i]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = now.A[ Index(((P0 *)this)->i, 3) ];
#ifdef VAR_RANGES
		logval("swap:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 19 - parallelSwap.pml:42 - [A[i] = A[j]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = now.A[ Index(((P0 *)this)->i, 3) ];
		now.A[ Index(((P0 *)this)->i, 3) ] = now.A[ Index(((P0 *)this)->j, 3) ];
#ifdef VAR_RANGES
		logval("A[swap:i]", now.A[ Index(((P0 *)this)->i, 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 20 - parallelSwap.pml:43 - [A[j] = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.oval = now.A[ Index(((P0 *)this)->j, 3) ];
		now.A[ Index(((P0 *)this)->j, 3) ] = ((P0 *)this)->temp;
#ifdef VAR_RANGES
		logval("A[swap:j]", now.A[ Index(((P0 *)this)->j, 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 21 - parallelSwap.pml:47 - [indexLocks[i] = 1] (0:25:2 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.indexLocks[ Index(((P0 *)this)->i, 3) ]);
		now.indexLocks[ Index(((P0 *)this)->i, 3) ] = 1;
#ifdef VAR_RANGES
		logval("indexLocks[swap:i]", ((int)now.indexLocks[ Index(((P0 *)this)->i, 3) ]));
#endif
		;
		/* merge: indexLocks[j] = 1(25, 22, 25) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.indexLocks[ Index(((P0 *)this)->j, 3) ]);
		now.indexLocks[ Index(((P0 *)this)->j, 3) ] = 1;
#ifdef VAR_RANGES
		logval("indexLocks[swap:j]", ((int)now.indexLocks[ Index(((P0 *)this)->j, 3) ]));
#endif
		;
		/* merge: printf('Swapped A[%d] and A[%d]\\n',i,j)(25, 24, 25) */
		reached[0][24] = 1;
		Printf("Swapped A[%d] and A[%d]\n", ((P0 *)this)->i, ((P0 *)this)->j);
		_m = 3; goto P999; /* 2 */
	case 36: // STATE 25 - parallelSwap.pml:52 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

