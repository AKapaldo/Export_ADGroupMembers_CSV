$ADGroup = Read-Host "Export Members of What AD Group?"
Get-adgroupmember -identity $ADGroup -recursive | get-aduser -property name | select name | Export-CSV "c:\temp\$ADGroup.csv"
