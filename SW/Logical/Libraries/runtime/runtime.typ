(********************************************************************
 * COPYRIGHT -- Bernecker + Rainer
 ********************************************************************
 * Library: runtime
 * File: runtime.typ
 * Author: B+R
 ********************************************************************
 * Data types of library runtime
 ********************************************************************)
                                                                      
TYPE
	SFCActionType : STRUCT			(*internal use*)
		x	: BOOL ;			
		_x	: BOOL ;			
		t	: TIME ;			
		_t	: TIME ;			
		AC	: SFCActionControl;	
	END_STRUCT;
	SFCStepType : STRUCT			(*internal use*)
		x	: BOOL ;			
		t	: TIME ;			
		_x	: BOOL ;			
		_t	: TIME ;			
	END_STRUCT;
END_TYPE