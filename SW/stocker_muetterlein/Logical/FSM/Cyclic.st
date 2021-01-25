
PROGRAM _CYCLIC
	(* Insert code here *)
	CASE ENUM_FSM_STATE OF 
		IDLE:
			//check case:
			IF DI_SWITCH_GREEN = TRUE THEN
				//new case:
				ENUM_FSM_STATE := STEP1;
				//set outputs
				DO_LAMP_GREEN := TRUE;
				DO_LAMP_RED := FALSE;
				bMotorOn := TRUE;
			END_IF
			
		STEP1:
			IF DI_SWITCH_RED = TRUE THEN
				//new case:
				ENUM_FSM_STATE := IDLE;
				//set outputs
				DO_LAMP_GREEN := FALSE;
				DO_LAMP_RED := TRUE;
				bMotorOn := FALSE;
			END_IF
			IF bWrongSizePartOnPiston = TRUE THEN
				//new case:
				ENUM_FSM_STATE := STEP2;
				//set outputs
				bMotorOn := FALSE;
			END_IF
		STEP2:
			cntWaitInput := cntWaitInput -1;
			bWrongSizePartOnPiston := FALSE;
			IF cntWaitInput = 0 THEN //5s timer elapsed = espulsion
				//new case:
				ENUM_FSM_STATE := STEP3;
				//reset counters
				cntWaitInput := WAIT_TIME_5S;
				//set outputs
				DO_PNEO_VENT := 1;
			END_IF
			//check case:
			IF DI_SWITCH_GREEN = TRUE THEN // resume 
				//new case:
				ENUM_FSM_STATE := STEP1;
				//reset counters
				cntWaitInput := WAIT_TIME_5S;
				//set outputs
				cntPartOk := cntPartOk + 1;
				bMotorOn := TRUE;
			END_IF
			
		// here the part is at the piston and will be ejected
		STEP3:
			cntWaitPiston := cntWaitPiston -1;
			IF cntWaitPiston = WAIT_TIME_PISTON / 2 THEN //timer elapsed = espulsion
				DO_PNEO_VENT := 0;
				cntPartRej := cntPartRej+1;
			END_IF
			IF cntWaitPiston = 0 THEN
				//new case:
				ENUM_FSM_STATE := STEP1;
				//reset counters
				cntWaitPiston := WAIT_TIME_PISTON;
				//set outputs
				bMotorOn := TRUE;
			END_IF
		
	END_CASE
END_PROGRAM
