Param ([Parameter(Mandatory=$true,ValueFromPipeline=$true,position=1)]$userinput )
      
echo "the Object Type is as follows."

$userinput.GetType()

echo "Object name is as follows."

$userinput.GetType().Name

echo "Object FullName is as follows."

$userinput.GetType().fullname