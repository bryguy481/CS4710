	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM never_0 */

	case 3: // STATE 7
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */
;
		;
		
	case 5: // STATE 2
		;
		now.indexLocks[ Index(((P1 *)this)->i, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 6: // STATE 3
		;
		now.A[ Index(((P1 *)this)->i, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 8: // STATE 6
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 12
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 11: // STATE 15
		;
		((P1 *)this)->j = trpt->bup.ovals[1];
		((P1 *)this)->j = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 12: // STATE 18
		goto R999;
;
		;
		
	case 14: // STATE 17
		;
		((P1 *)this)->j = trpt->bup.oval;
		;
		goto R999;
;
		
	case 15: // STATE 22
		goto R999;

	case 16: // STATE 23
		;
	/* 0 */	((P1 *)this)->j = trpt->bup.oval;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 17: // STATE 24
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 20: // STATE 33
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 23: // STATE 36
		;
		now.B[ Index(now.A[ Index(((P1 *)this)->i, 3) ], 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 25: // STATE 38
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		
	case 26: // STATE 44
		goto R999;

	case 27: // STATE 45
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC swap */

	case 28: // STATE 5
		;
		now.cs = trpt->bup.ovals[3];
		now.indexLocks[ Index(((P0 *)this)->j, 3) ] = trpt->bup.ovals[2];
		now.indexLocks[ Index(((P0 *)this)->i, 3) ] = trpt->bup.ovals[1];
		now.cs = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		
	case 29: // STATE 12
		goto R999;

	case 30: // STATE 10
		;
		now.cs = trpt->bup.ovals[1];
		now.cs = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 32: // STATE 18
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 19
		;
		now.A[ Index(((P0 *)this)->i, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 20
		;
		now.A[ Index(((P0 *)this)->j, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 22
		;
		now.indexLocks[ Index(((P0 *)this)->j, 3) ] = trpt->bup.ovals[1];
		now.indexLocks[ Index(((P0 *)this)->i, 3) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 36: // STATE 25
		;
		p_restor(II);
		;
		;
		goto R999;
	}

