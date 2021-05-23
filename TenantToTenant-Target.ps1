#TESTE-CONTOSO - Source
$CONTOSO_Tenant = "be80bafc-dadd-4961-a2ac-13a65a1d4983"
$CONTOSO_Subscription = "f54f54cc-0d8d-4557-9854-6a5bac1f6b9b"
$CONTOSO_DOMAIN = "testeCONTOSOmail.onmicrosoft.com"
$CONTOSO_ADMIN = admin@testeCONTOSOmail.onmicrosoft.com

#TESTE-FABRIKAM - Target
$FABRIKAM_Tenant = "313494ba-73c3-4a79-a1fc-5cf7237775ef"
$FABRIKAM_Subscription = "3a5934a8-a001-4d46-b8e3-6b545a0091eb"
$FABRIKAM_DOMAIN = "testeFABRIKAMmail.onmicrosoft.com"

$FABRIKAM_ADMIN = admin@testeFABRIKAMmail.onmicrosoft.com

#Execute o Script com o admin testeFABRIKAMmail.onmicrosoft.com

.\SetupCrossTenantRelationshipForTargetTenant.ps1 `
-ResourceTenantDomain $CONTOSO_DOMAIN `
-ResourceTenantAdminEmail $CONTOSO_ADMIN `
-TargetTenantDomain $FABRIKAM_DOMAIN `
-ResourceTenantId $CONTOSO_Tenant `
-ResourceGroup "CT-CONTOSO-FABRIKAM" `
-KeyVaultName "CONTOSO2FABRIKAM-KEYNAME" `
-CertificateName "CONTOSO-FABRIKAM-CERT" `
-CertificateSubject "CN=CONTOSO_FABRIKAM-CERT" `
-AzureAppPermissions Exchange, MSGraph `
-UseAppAndCertGeneratedForSendingInvitation `
-KeyVaultAuditStorageAccountName "CONTOSO2FABRIKAMStorage" `
-KeyVaultAuditStorageResourceGroup "ST-KEY-CONTOSO2FABRIKAM" `
-KeyVaultAuditStorageAccountSKU "Standard_GRS" `
-SubscriptionId $FABRIKAM_Subscription `
-AzureResourceLocation 'Brazil South' `

-KeyVaultAuditStorageAccountLocation 'Brazil South'
