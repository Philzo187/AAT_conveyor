<?xml version="1.0" encoding="utf-8"?>
<?AutomationStudio Version=3.0.81.27 SP05?>
<SwConfiguration CpuAddress="SL1" xmlns="http://br-automation.co.at/AS/SwConfiguration">
  <TaskClass Name="Cyclic#1" />
  <TaskClass Name="Cyclic#2" />
  <TaskClass Name="Cyclic#3" />
  <TaskClass Name="Cyclic#4">
    <Task Name="Stop_at_Li" Source="Stop_at_Lightsensor.prg" Memory="UserROM" Language="ANSIC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#5" />
  <TaskClass Name="Cyclic#6" />
  <TaskClass Name="Cyclic#7" />
  <TaskClass Name="Cyclic#8" />
  <DataObjects>
    <DataObject Name="Acp10sys" Source="" Memory="UserROM" Language="Binary" />
    <DataObject Name="arsdmhtm" Source="" Memory="UserROM" Language="Binary" />
    <DataObject Name="arsdmsvg" Source="" Memory="UserROM" Language="Binary" />
    <DataObject Name="arsdmsvp" Source="" Memory="UserROM" Language="Binary" />
  </DataObjects>
  <NcDataObjects />
  <VcDataObjects />
  <Binaries>
    <BinaryObject Name="arsdm" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="ncglobal" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="Acp10man" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="webserv" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="acp10par" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="sysconf" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="ashwd" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="asfw" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="iomap" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="arconfig" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="Acp10map" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="Acp10cfg" Source="" Memory="UserROM" Language="Binary" />
  </Binaries>
  <Libraries>
    <LibraryObject Name="sys_lib" Source="Libraries.sys_lib.lby" Memory="UserROM" Language="Binary" />
    <LibraryObject Name="brsystem" Source="Libraries.brsystem.lby" Memory="UserROM" Language="Binary" />
    <LibraryObject Name="Runtime" Source="Libraries.Runtime.lby" Memory="UserROM" Language="Binary" />
    <LibraryObject Name="astcp" Source="" Memory="UserROM" Language="Binary" />
    <LibraryObject Name="dataobj" Source="" Memory="UserROM" Language="Binary" />
    <LibraryObject Name="powerlnk" Source="" Memory="UserROM" Language="Binary" />
    <LibraryObject Name="astime" Source="" Memory="UserROM" Language="Binary" />
    <LibraryObject Name="fileio" Source="" Memory="UserROM" Language="Binary" />
    <LibraryObject Name="asmem" Source="" Memory="UserROM" Language="Binary" />
    <LibraryObject Name="convert" Source="" Memory="UserROM" Language="Binary" />
  </Libraries>
</SwConfiguration>