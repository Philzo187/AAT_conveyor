/********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Program: Conveyor_Simulator
 * File: Conveyor_SimulatorCyclic.c
 * Author: Christoph Gruber
 * Created: November 15, 2011
 ********************************************************************
 * Implementation of program Conveyor_Simulator
 ********************************************************************/

#include <../Global.h>

#ifdef _DEFAULT_INCLUDES
 #include <AsDefault.h>
#endif

void _INIT Conveyor_SimulatorInit( void )
{
	gaiPos = 0;
	gaiStatusword = STATUS_READY_TO_SWITCH_ON;
	gdiLightSensor1 = 0;
	gdiLightSensor2 = 0;
	gdiLightSensor3 = 0;
	gdiOperating = 0;
	gdiStart = 0;
	gdiStop = 0;
}

void _CYCLIC Conveyor_SimulatorCyclic( void )
{
	/* Motor Simulation */
	unsigned int controlword = old_controlword; /* Lets the motor module remain in the previous state for one more cycle*/
	old_controlword = gaoControlword;
	switch(controlword)
	{
	case CONTROL_SHUTDOWN:
		gaiStatusword = STATUS_READY_TO_SWITCH_ON;
		break;
	case CONTROL_SWITCH_ON:
		if (gaiStatusword == STATUS_READY_TO_SWITCH_ON)
			gaiStatusword = STATUS_SWITCHED_ON;
		break;
	case CONTROL_OPERATION_ENABLE:
		if (gaiStatusword == STATUS_SWITCHED_ON)
			gaiStatusword = STATUS_OPERATION_ENABLED;
		break;
	default:
		break;
	}
	
	if ((gaoMotorMode == MOTOR_VELOCITY_MODE) && (gaiStatusword == STATUS_OPERATION_ENABLED))
	{
		gaiPos = gaiPos + gaoVelocity / MOTOR_MODULE_CYCLE_TIME * SIMULATOR_TASK_CLASS_CYCLE_TIME;
	}
}
