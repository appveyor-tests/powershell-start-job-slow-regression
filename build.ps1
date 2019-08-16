appveyor version
systeminfo
$start = Get-Date
$ErrorActionPreference = "Stop"
for ($i = 1; $i -le 3; $i++) {.\runtests.ps1}
$duration = (Get-Date) - $start
if($duration.TotalSeconds -gt 90) { throw "Test execution was too slow!" }
