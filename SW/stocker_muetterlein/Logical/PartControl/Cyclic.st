
PROGRAM _CYCLIC
	(* Insert code here *)
	IF ENUM_FSM_STATE = STEP1 THEN
		IF (DI_LIGHT_SENSE1 = TRUE) AND (DI_LIGHT_SENSE1_OLD = FALSE) THEN
			currentPartStartPos := AIN_ABS_POS;
			// TODO ADD velocity
		END_IF
		IF (DI_LIGHT_SENSE1 = FALSE) AND (DI_LIGHT_SENSE1_OLD = TRUE) THEN
			aPartLengh[idxPartLenghStart] := (AIN_ABS_POS - currentPartStartPos) * SCALE_POS;
			cntParts := cntParts +1;
			LastPartLengh := aPartLengh[idxPartLenghStart];
			//add to queue:
			IF idxPartLenghStart >19 THEN
				idxPartLenghStart := idxPartLenghStart +1;
			ELSE
				idxPartLenghStart := 0;
			END_IF
		END_IF
		DI_LIGHT_SENSE1_OLD := DI_LIGHT_SENSE1;
		
		IF (DI_LIGHT_SENSE2 = TRUE) AND ((aPartLengh[idxPartLenghEnd] <= PART_LENGH_MIN) OR (aPartLengh[idxPartLenghEnd] >= PART_LENGH_MAX)) THEN
			bWrongSizePartOnPiston := TRUE;
		END_IF
		
		IF (DI_LIGHT_SENSE2 = FALSE) AND (DI_LIGHT_SENSE2_OLD = TRUE) THEN
			IF idxPartLenghEnd >19 THEN
				idxPartLenghEnd := idxPartLenghEnd +1;
			ELSE
				idxPartLenghEnd := 0;
			END_IF
			cntParts := cntParts - 1;
		END_IF
		DI_LIGHT_SENSE2_OLD := DI_LIGHT_SENSE2;
	END_IF
	

END_PROGRAM