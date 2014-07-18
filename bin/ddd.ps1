#Requires -Version 3

# Requires 3.0, because of Invoke-WebRequest. Using WebClient.DownloadFile is pointless because of the way this script is supposed to be launched. If not for Invoke-WebRequest, 1.0 seems to be enough.



echo "[*] Starting DDD Bootstrap..."



# Easy Powershell ZIP extraction without .net 4.0 or external applications

function Expand-ZIPFile($file) {

	$shell = New-Object -ComObject "Shell.Application"

	$file = Convert-Path $file # Converts to full path

	$zip = $shell.NameSpace($file)

	$workingDir = (Get-Location).Path

	

	If ($zip -ne $null) {

		foreach($item in $zip.items()) {

			$shell.Namespace($workingDir).CopyHere($item)

		}

	}

}



If ( [Environment]::Is64BitProcess ) { $bit = "64" } Else { $bit = "32" }



echo "[*] Fetching binaries..."	

Invoke-WebRequest ("https://github.com/thegoddambatman/diy-dogecoin-digger/raw/master/bin/pooler-cpuminer-2.3.3-win" + $bit + ".zip") -OutFile ("pooler-cpuminer-2.3.3-win" + $bit + ".zip")

echo "[*] Unzipping cpuminer..."

Expand-ZIPFile ("pooler-cpuminer-2.3.3-win" + $bit + ".zip")



If (-Not (Test-Path "p2p.conf")) {

	Invoke-WebRequest "https://github.com/thegoddambatman/diy-dogecoin-digger/raw/master/conf/p2p.conf" -OutFile "p2p.conf"

}



# Removing the zipfile

Remove-Item ("pooler-cpuminer-2.3.3-win" + $bit + ".zip")



echo "[*] All right, let's get mining!"

.\minerd -c p2p.conf
