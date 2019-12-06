" RAM "

"******"

 $totalcapacity = 0



Get-wmiobject -class win32_physicalmemory |

foreach {

           

new-object -TypeName psobject -Property @{

         vendor = $_.manufacturer

         "Speed(MHz)" = $_.speed

         "Size(MB)" = $_.capacity/1mb

         Bank = $_.banklabel

         Slot = $_.devicelocator

Description = $_.description

         

}

                 

$totalcapacity += $_.capacity/1mb



} |