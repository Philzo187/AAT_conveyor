
PROGRAM _CYCLIC
	(* Insert code here *)
	IF (DI_LIGHT_SENSE1 = TRUE) AND (bMotorOn = TRUE) THEN
		currentPartLengh := currentPartLengh + 1
	END_IF
	IF (DI_LIGHT_SENSE1 = FALSE) AND (currentPartLengh != 0) THEN
		aPartLengh[idxPartLenghStart] := currentPartLengh
		cntParts := cntParts +1
		//add to queue:
		IF idxPartLenghStart >19 THEN
			idxPartLenghStart := idxPartLenghStart +1
		ELSE
			idxPartLenghStart := 0
		END_IF
		
		
	END_IF
	
		
END_PROGRAM
