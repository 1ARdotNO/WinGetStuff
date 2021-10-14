$runasuser="test"

$action=New-ScheduledTaskAction -Execute "winget" -Argument "upgrade --all"
$action2=New-ScheduledTaskAction -Execute "cmd" 
$principal=New-ScheduledTaskPrincipal -userid "test" -RequiredPrivilege Administrator
Register-ScheduledTask -Action $action,$action2 -Principal $principal -TaskName "test123"


