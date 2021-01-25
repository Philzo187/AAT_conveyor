export AS_SYSTEM_PATH := C:/Program\ Files/BrAutomation/AS/System
export AS_BIN_PATH := C:/Program Files/BrAutomation/AS45/Bin-en
export AS_INSTALL_PATH := C:/Program\ Files/BrAutomation/AS45
export AS_PATH := C:/Program Files/BrAutomation/AS45
export AS_VC_PATH := C:/Program\ Files/BrAutomation/AS45/AS/VC
export AS_GNU_INST_PATH := C:/Program\ Files/BrAutomation/AS45/AS/GnuInst/V4.1.2
export AS_STATIC_ARCHIVES_PATH := C:/Users/laboruser/Desktop/MuetterleinStockerAAT/AAT_conveyor/SW/stocker_muetterlein/Temp/Archives/Config1/X20CP1484_1
export AS_CPU_PATH := C:/Users/laboruser/Desktop/MuetterleinStockerAAT/AAT_conveyor/SW/stocker_muetterlein/Temp/Objects/Config1/X20CP1484_1
export AS_CPU_PATH_2 := C:/Users/laboruser/Desktop/MuetterleinStockerAAT/AAT_conveyor/SW/stocker_muetterlein/Temp/Objects/Config1/X20CP1484_1
export AS_TEMP_PATH := C:/Users/laboruser/Desktop/MuetterleinStockerAAT/AAT_conveyor/SW/stocker_muetterlein/Temp
export AS_BINARIES_PATH := C:/Users/laboruser/Desktop/MuetterleinStockerAAT/AAT_conveyor/SW/stocker_muetterlein/Binaries
export AS_PROJECT_CPU_PATH := C:/Users/laboruser/Desktop/MuetterleinStockerAAT/AAT_conveyor/SW/stocker_muetterlein/Physical/Config1/X20CP1484_1
export AS_PROJECT_CONFIG_PATH := C:/Users/laboruser/Desktop/MuetterleinStockerAAT/AAT_conveyor/SW/stocker_muetterlein/Physical/Config1
export AS_PROJECT_PATH := C:/Users/laboruser/Desktop/MuetterleinStockerAAT/AAT_conveyor/SW/stocker_muetterlein
export AS_PROJECT_NAME := stocker_muetterlein
export AS_PLC := X20CP1484_1
export AS_TEMP_PLC := X20CP1484_1
export AS_USER_NAME := laboruser
export AS_CONFIGURATION := Config1
export AS_COMPANY_NAME := TCC\ -\ TILAK\ Competence\ Center
export AS_VERSION := 4.5.2.102


default: \
	$(AS_CPU_PATH)/Visu.br \
	vcPostBuild_Visu \



include $(AS_CPU_PATH)/Visu/Visu.mak
