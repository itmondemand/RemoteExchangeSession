$credential = Get-Credential
$MailServer = Read-Host -Prompt "State the name of the server hosting Exchange services"
$Exchsession = New-PSSession -ConnectionUri http://$MailServer/powershell/ -ConfigurationName Microsoft.Exchange -Authentication Kerberos -Credential $credential
Import-PSSession $Exchsession
Import-Module ActiveDirectory
if (!$Error) {
Write-Host -ForegroundColor Green "You are now connected to the Exchange and ActiveDirectory sessions"
}