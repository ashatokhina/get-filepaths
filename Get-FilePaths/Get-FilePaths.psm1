function Get-FilePaths {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$false)] 
        [string]$Filemask
    )

    PROCESS {
        ForEach ($item in (Get-ChildItem -Path ./$Filemask)) {
            Write-Host $item.FullName
        }
    }
}

Export-ModuleMember -Function Get-FilePaths

<#
.SYNOPSIS
Вывод путей файлов в консоль с заданной маской.

.DESCRIPTION
Простая утилита для облегчения жизни пользователям Pureref.

.PARAMETER Filemask
Name of the computer that is failing.

.EXAMPLE
Get-FilePaths -Filemask IMG_*

.EXAMPLE
Get-FilePaths -Filemask *.png

.INPUTS
System.String

Принимает строку как аргумент

.OUTPUTS
Выводит список полных путей файлов в консоль.

.NOTES
FunctionName : Get-FilePaths
Created by   : Sasha Shatokhina
Date Coded   : 11/11/2020

.LINK 
Out-File
#>
