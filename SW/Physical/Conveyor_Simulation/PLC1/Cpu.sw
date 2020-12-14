<?xml version="1.0" encoding="utf-8"?>
<?AutomationStudio Version=3.0.81.27 SP05?>
<SwConfiguration CpuAddress="SL1" xmlns="http://br-automation.co.at/AS/SwConfiguration">
  <TaskClass Name="Cyclic#1">
    <Task Name="Conveyor_S" Source="Conveyor_Simulator.prg" Memory="UserROM" Language="ANSIC" Debugging="true" />
    <Task Name="Stop_at_Li" Source="Stop_at_Lightsensor.prg" Memory="UserROM" Language="ANSIC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#2" />
  <TaskClass Name="Cyclic#3" />
  <TaskClass Name="Cyclic#4" />
  <TaskClass Name="Cyclic#5" />
  <TaskClass Name="Cyclic#6" />
  <TaskClass Name="Cyclic#7" />
  <TaskClass Name="Cyclic#8" />
  <DataObjects>
    <DataObject Name="arsdmhtm" Source="" Memory="UserROM" Language="Binary" />
    <DataObject Name="arsdmsvg" Source="" Memory="UserROM" Language="Binary" />
    <DataObject Name="arsdmsvp" Source="" Memory="UserROM" Language="Binary" />
  </DataObjects>
  <NcDataObjects />
  <VcDataObjects />
  <Binaries>
    <BinaryObject Name="webserv" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="arsdm" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="sysconf" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="ashwd" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="arconfig" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="asfw" Source="" Memory="SystemROM" Language="Binary" />
  </Binaries>
  <Libraries>
    <LibraryObject Name="runtime" Source="" Memory="UserROM" Language="Binary" />
    <LibraryObject Name="astcp" Source="" Memory="UserROM" Language="Binary" />
    <LibraryObject Name="dataobj" Source="" Memory="UserROM" Language="Binary" />
    <LibraryObject Name="fileio" Source="" Memory="UserROM" Language="Binary" />
    <LibraryObject Name="asmem" Source="" Memory="UserROM" Language="Binary" />
    <LibraryObject Name="astime" Source="" Memory="UserROM" Language="Binary" />
    <LibraryObject Name="convert" Source="" Memory="UserROM" Language="Binary" />
    <LibraryObject Name="sys_lib" Source="" Memory="UserROM" Language="Binary" />
  </Libraries>
</SwConfiguration>