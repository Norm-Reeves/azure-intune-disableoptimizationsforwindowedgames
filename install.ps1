$keyPath = "HKCU:\Software\Microsoft\DirectX\GraphicsSettings"
$valueName = "SwapEffectUpgradeCache"
$valueType = "DWORD"
$valueData = "1"
if (Test-Path $keyPath){
	New-ItemProperty -Path $keyPath -Name $valueName -Value $valueData -PropertyType $valueType -Force | Out-Null
}

else{
	New-Item -Path $keyPath -Force | Out-Null
	New-ItemProperty -Path $keyPath -Name $valueName -Value $valueData -PropertyType $valueType -Force | Out-Null
}

$keyPath = "HKCU:\Software\Microsoft\DirectX\UserGpuPreferences"
$valueName = "DirectXUserGlobalSettings"
$valueType = "String"
$valueData = "SwapEffectUpgradeEnable=0;"
if (Test-Path $keyPath){
	New-ItemProperty -Path $keyPath -Name $valueName -Value $valueData -PropertyType $valueType -Force | Out-Null
}

else{
	New-Item -Path $keyPath -Force | Out-Null
	New-ItemProperty -Path $keyPath -Name $valueName -Value $valueData -PropertyType $valueType -Force | Out-Null
}