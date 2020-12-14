/********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Program: Stop_at_Lightsensor
 * File: Stop_at_LightsensorCyclic.c
 * Author: Christoph Gruber
 * Created: October 24, 2011
 ********************************************************************
 * Implementation of program Stop_at_Lightsensor
 ********************************************************************/

#include <../Global.h>

#ifdef _DEFAULT_INCLUDES
 #include <AsDefault.h>
#endif

void _INIT Stop_at_LightsensorInit( void )
{
	gaoMotorMode = 2;
}

void _CYCLIC Stop_at_LightsensorCyclic( void )
{
	unsigned int motor_status = gaiStatusword & 0x0000000f;
	
	if (motor_status == STATUS_OPERATION_ENABLED) 
	{
		if (!gdiLightSensor1)
		{
			gaoVelocity = 1000;
		}
		else
		{
			gaoVelocity = 0;
		}
	}
	else
	{
		switch (motor_status)
		{
		case STATUS_SWITCHED_ON:
			gaoControlword = CONTROL_OPERATION_ENABLE; 
			break;
		case STATUS_READY_TO_SWITCH_ON:
			gaoControlword = CONTROL_SWITCH_ON; 
			break;
		default:
			gaoControlword = CONTROL_SHUTDOWN; 
		}
	}
}
