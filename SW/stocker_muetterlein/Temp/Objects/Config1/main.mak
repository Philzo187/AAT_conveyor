SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files\Novell\iPrint;C:\Program Files (x86)\Novell\ZENworks\bin;C:\Program Files\MiKTeX 2.9\miktex\bin\x64\;C:\Program Files\TortoiseGit\bin;C:\Program Files\TortoiseSVN\bin;C:\Program Files (x86)\IVI Foundation\VISA\WinNT\Bin\;C:\Program Files\IVI Foundation\VISA\Win64\Bin\;C:\Program Files (x86)\Microsoft SQL Server\80\Tools\Binn\;C:\Program Files (x86)\IVI Foundation\VISA\WinNT\Bin;C:\Program Files (x86)\IVI Foundation\IVI\bin;C:\Program Files\IVI Foundation\IVI\bin;C:\Program Files (x86)\National Instruments\Shared\LabVIEW CLI;C:\Program Files (x86)\Microsoft SQL Server\100\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL Server\100\DTS\Binn\;C:\Program Files\Git\cmd;C:\Program Files\MATLAB\R2019b\runtime\win64;C:\Program Files\MATLAB\R2019b\bin;C:\Program Files (x86)\GNU Arm Embedded Toolchain\10 2020-q4-major\bin;C:\Program Files\doxygen\bin;C:\openocd-0.10.0\bin-x64;C:\Users\laboruser\AppData\Local\Microsoft\WindowsApps;C:\Users\laboruser\AppData\Local\Microsoft\WindowsApps
export AS_BUILD_MODE := BuildAndCreateCompactFlash
export AS_VERSION := 4.5.2.102
export AS_COMPANY_NAME := TCC - TILAK Competence Center
export AS_USER_NAME := laboruser
export AS_PATH := C:/Program Files/BrAutomation/AS45
export AS_BIN_PATH := C:/Program Files/BrAutomation/AS45/Bin-en
export AS_PROJECT_PATH := C:/Users/laboruser/Desktop/MuetterleinStockerAAT/AAT_conveyor/SW/stocker_muetterlein
export AS_PROJECT_NAME := stocker_muetterlein
export AS_SYSTEM_PATH := C:/Program\ Files/BrAutomation/AS/System
export AS_VC_PATH := C:/Program\ Files/BrAutomation/AS45/AS/VC
export AS_TEMP_PATH := C:/Users/laboruser/Desktop/MuetterleinStockerAAT/AAT_conveyor/SW/stocker_muetterlein/Temp
export AS_CONFIGURATION := Config1
export AS_BINARIES_PATH := C:/Users/laboruser/Desktop/MuetterleinStockerAAT/AAT_conveyor/SW/stocker_muetterlein/Binaries
export AS_GNU_INST_PATH := C:/Program\ Files/BrAutomation/AS45/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/Program Files/BrAutomation/AS45/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := C:/Program\ Files/BrAutomation/AS45
export WIN32_AS_PATH := "C:\Program Files\BrAutomation\AS45"
export WIN32_AS_BIN_PATH := "C:\Program Files\BrAutomation\AS45\Bin-en"
export WIN32_AS_PROJECT_PATH := "C:\Users\laboruser\Desktop\MuetterleinStockerAAT\AAT_conveyor\SW\stocker_muetterlein"
export WIN32_AS_SYSTEM_PATH := "C:\Program Files\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\Program Files\BrAutomation\AS45\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\Users\laboruser\Desktop\MuetterleinStockerAAT\AAT_conveyor\SW\stocker_muetterlein\Temp"
export WIN32_AS_BINARIES_PATH := "C:\Users\laboruser\Desktop\MuetterleinStockerAAT\AAT_conveyor\SW\stocker_muetterlein\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\Program Files\BrAutomation\AS45\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\Program Files\BrAutomation\AS45"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/stocker_muetterlein.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'BuildAndCreateCompactFlash'   

