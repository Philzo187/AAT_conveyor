
PROGRAM _CYCLIC
	(* Insert code here *)
	IF ENUM_FSM_STATE = STEP1 THEN
		IF (DI_LIGHT_SENSE1 = TRUE) AND (DI_LIGHT_SENSE1_OLD = FALSE) THEN
			currentPartStartPos := AIN_ABS_POS;
			// TODO ADD velocity
		END_IF
		IF (DI_LIGHT_SENSE1 = FALSE) AND (DI_LIGHT_SENSE1_OLD = TRUE) THEN
			LastPartLengh := (AIN_ABS_POS - currentPartStartPos) / SCALE_POS;
			aPartLengh[idxPartLenghStart] := LastPartLengh;
			cntParts := cntParts +1;
			//add to queue:
			IF idxPartLenghStart >19 THEN
				idxPartLenghStart := 0;
			ELSE
				idxPartLenghStart := idxPartLenghStart +1;
			END_IF
		END_IF
		
		IF (DI_LIGHT_SENSE2 = TRUE) AND (DI_LIGHT_SENSE2_OLD = FALSE) THEN
			cntPartTotal := cntPartTotal + 1;
			IF (aPartLengh[idxPartLenghEnd] <= PART_LENGH_MIN) THEN
				bWrongSizePartOnPiston := TRUE; 
				LastPartStatus := "TOO SHORT";
			ELSIF (aPartLengh[idxPartLenghEnd] >= PART_LENGH_MAX) THEN
				bWrongSizePartOnPiston := TRUE; 
				LastPartStatus := "TOO LONG";
			ELSE
				cntPartOk := cntPartOk + 1;
				LastPartStatus := "OK";
			END_IF
		END_IF
		

	END_IF
	
	IF (DI_LIGHT_SENSE2 = FALSE) AND (DI_LIGHT_SENSE2_OLD = TRUE) THEN
		IF idxPartLenghEnd >19 THEN
			idxPartLenghEnd := 0;
		ELSE
			idxPartLenghEnd := idxPartLenghEnd +1;
		END_IF
		cntParts := cntParts - 1;
	END_IF
	
	DI_LIGHT_SENSE1_OLD := DI_LIGHT_SENSE1;
	DI_LIGHT_SENSE2_OLD := DI_LIGHT_SENSE2;

END_PROGRAM