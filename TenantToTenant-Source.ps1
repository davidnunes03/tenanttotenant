#TESTE-CONTOSO - CONTOSO - Source
$CONTOSO_Tenant = "be80bafc-dadd-4961-a2ac-13a65a1d4983"
$CONTOSO_Subscription = "f54f54cc-0d8d-4557-9854-6a5bac1f6b9b"
$CONTOSO_DOMAIN = "testeCONTOSOmail.onmicrosoft.com"
$CONTOSO_ADMIN = admin@testeCONTOSOmail.onmicrosoft.com


#TESTE-FABRIKAM - FABRIKAN - Destination
$FABRIKAM_Tenant = "313494ba-73c3-4a79-a1fc-5cf7237775ef"
$FABRIKAM_Subscription = "3a5934a8-a001-4d46-b8e3-6b545a0091eb"
$FABRIKAM_DOMAIN = "testeFABRIKAMmail.onmicrosoft.com"
$FABRIKAM_ADMIN = admin@testeFABRIKAMmail.onmicrosoft.com
 

#VARIAVEIS DO SEGUNDO SCRIPT
$GSHM = "move.fabrikam" #Security group created on source. 
$appID = "19e616a6-6fba-4cd2-98d4-bd4686697789" #Insert the appId genereted from TenantToTenant-Target.ps1

#Run SetupCrossTenantRelationshipForResourceTenant.ps1 with testeCONTOSOmail.onmicrosoft.com admin

Connect-ExchangeOnline
./SetupCrossTenantRelationshipForResourceTenant.ps1 `
-SourceMailboxMovePublishedScopes $GSHM `
-ResourceTenantDomain $CONTOSO_DOMAIN `
-TargetTenantDomain $FABRIKAM_DOMAIN `
-ApplicationId $appID `
-TargetTenantId $FABRIKAM_Tenant  
