""
 "                                  System Information Report"
"                                  =========================="
Get-WmiObject -Class win32_operatingsystem |
Select-Object Name, Version | FL 
"Hardware "
 "======="
 Get-wmiobject -Class Win32_computerSystem |Select-Object Name,description, Manufacturer,
  SystemType,Model
   
"Processor "
"---------"
Get-WmiObject -Class Win32_Processor | Select-Object  Manufacturer,Description,
MaxClockSpeed,NumberOfCores,L2CacheSize,L3CacheSize | FL
"RAM "
"---"
$totalcapacity = 0
get-wmiobject -class win32_physicalmemory | 
foreach {
                  new-object -TypeName psobject -Property @{
                              Manufacturer = $_.manufacturer
                              "Speed(MHz)" = $_.speed
                              "Size(MB)" = $_.capacity/1mb
                              Bank = $_.banklabel
                              Description = $_.description
                              Slot = $_.devicelocator
                  }
                 $totalcapacity += $_.capacity/1mb
} |
ft -auto Manufacturer, "Size(MB)", "Speed(MHz)", Bank,Description, Slot
"================================="
" Total RAM: ${totalcapacity} MB "
"================================="

"Physical Disk Driver "
"--------------------"
gwmi -class win32_logicaldisk |? size -gt 0 | format-table -autosize DeviceID,    @{n="Size(GB)"; e={$_.size/1gb -as [int]}},    @{n="Free(GB)"; e={$_.freespace/1gb -as [int]}},    @{n="% Free"; e={100*$_.freespace/$_.size -as [int]}},    ProviderName,DriveType,Description
gwmi-diskdrive | select model 


"Video Card "
 "----------"
 Get-WmiObject -Class Win32_VideoController | Select-Object  Name,@{n="Vendor"; e={$_.AdapterCompatibility}},VideoModeDescription,
 CurrentHorizontalResolution,CurrentVerticalResolution  ,Description | FL