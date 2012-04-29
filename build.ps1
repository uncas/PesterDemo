# Downloads Pester NuGet package to sub-folder packages:
nuget install pester -o packages -s C:\NuGetPackages

# Determines the path to the newest Pester package:
$path = Resolve-Path .
$pesterPackage = gci "$path\packages\Pester.*"
if ($pesterPackage.count) {
  $pesterPackage = $pesterPackage[$pesterPackage.count-1]
}
$pesterPackagePath = $pesterPackage.FullName

# Loads the module:
Import-Module "$pesterPackagePath\tools\Pester.psm1"

# Runs tests in sub-folder src:
Invoke-Pester "$path\src"