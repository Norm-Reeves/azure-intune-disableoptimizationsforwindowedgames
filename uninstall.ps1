$keyPath = "HKCU:\Software\Microsoft\DirectX\GraphicsSettings"
$valueName = "SwapEffectUpgradeCache"
if (Get-Itemproperty -Path $keyPath -Name $valueName -ErrorAction Ignore){
	Remove-ItemProperty -Path $keyPath -Name $valueName -Force
}

$keyPath = "HKCU:\Software\Microsoft\DirectX\UserGpuPreferences"
$valueName = "DirectXUserGlobalSettings"
if (Get-Itemproperty -Path $keyPath -Name $valueName -ErrorAction Ignore){
	Remove-ItemProperty -Path $keyPath -Name $valueName -Force
}