#Connect with the TARGET admin

Connect-ExchangeOnline

$user = Import-Csv C:\Script\GetUserInformation.csv

foreach($item in $user) {

Set-MailUser $item.Alias -ExternalEmailAddress $item.PrimarySmtpAddress
Set-MailUser $item.Alias -ExchangeGuid $item.ExchangeGuid
Set-MailUser $item.Alias -EmailAddresses "x500:" + "$($item.LegacyExchangeDN)"

}
