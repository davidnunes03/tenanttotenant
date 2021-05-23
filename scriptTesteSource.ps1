#TESTE-CONTOSO - CONTOSO - Source
$CONTOSO_Tenant = "be80bafc-dadd-4961-a2ac-13a65a1d4983" 
$CONTOSO_DOMAIN = "testeCONTOSOmail.onmicrosoft.com"
 
#Variable from first script
$appID = "AppId" 
$keyVaultUrl = "keyUrl" 

#Login with the admin testeFABRIKAMmail
./VerifySetup.ps1 `
-PartnerTenantId $CONTOSO_Tenant `
-ApplicationId $appID `
-ApplicationKeyVaultUrl $keyVaultUrl `
-PartnerTenantDomain $CONTOSO_DOMAIN -Verbose 
