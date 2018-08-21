# https://blogs.technet.microsoft.com/deploymentguys/2010/12/04/adding-and-removing-fonts-with-windows-powershell/
# Copyright (C) 2010 Microsoft Corporation
function Add-SingleFont($filePath)
{
    try
    {
        [string]$filePath = (resolve-path $filePath).path
        [string]$fileDir  = split-path $filePath
        [string]$fileName = split-path $filePath -leaf
        [string]$fileExt = (Get-Item $filePath).extension
        [string]$fileBaseName = $fileName -replace($fileExt ,"")

        $shell = new-object -com shell.application
        $myFolder = $shell.Namespace($fileDir)
        $fileobj = $myFolder.Items().Item($fileName)
        $fontName = $myFolder.GetDetailsOf($fileobj,21)

        if ($fontName -eq "") { $fontName = $fileBaseName }

        copy-item $filePath -destination $fontsFolderPath

        $fontFinalPath = Join-Path $fontsFolderPath $fileName
        $retVal = [FontResource.AddRemoveFonts]::AddFont($fontFinalPath)

        if ($retVal -eq 0) {
            Write-Host "Font `'$($filePath)`'`' installation failed"
            Write-Host ""
            1
        }
        else
        {
            Write-Host "Font `'$($filePath)`' installed successfully"
            Write-Host ""
            Set-ItemProperty -path "$($fontRegistryPath)" -name "$($fontName)$($hashFontFileTypes.item($fileExt))" -value "$($fileName)" -type STRING
            0
        }
        ""
    }
    catch
    {
        Write-Host "An error occured installing `'$($filePath)`'"
        Write-Host ""
        Write-Host "$($error[0].ToString())"
        Write-Host ""
        $error.clear()
        1
    }
}

# Enable WSL
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

# Fetch Font
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri "https://github.com/powerline/fonts/raw/master/Inconsolata/Inconsolata%20for%20Powerline.otf" -OutFile "~/Inconsolata.otf"
Add-SingleFont("~/Inconsolata.otf")
