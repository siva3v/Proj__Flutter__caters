
class ApisAndUrls {
  static const playStoreUri = "market://details?id=com.aquafinance.orbit";

  static const termsAndConditions = "https://orbit-staging-portal.aquafinance.com/terms-and-conditions";
  static const privacyPolicyApi = "https://orbit-staging-portal.aquafinance.com/media/1199/privacy-policy-revised.pdf";
  static const creditDetails = "https://orbit-staging-portal.aquafinance.com/applications/%d/details";
  static const allActivityCreditDetails = "https://orbit-staging-portal.aquafinance.com/applications";
  static const resourcesApi = "https://orbit-staging-portal.aquafinance.com/resources/training";
  static const promotionCalculatorApi = "https://orbit-staging-portal.aquafinance.com/promotions/calculator";

  static const authTokenApi = "https://aquaauthstage.b2clogin.com/9cab6f66-155b-4f07-a365-87e8e101a74e/B2C_1A_Orbit_SignIn_ROPC/oauth2/v2.0/token";
  static const azureLoginUrl = "https://aquaauthstage.b2clogin.com/9cab6f66-155b-4f07-a365-87e8e101a74e/b2c_1a_orbit_signin_web/oauth2/v2.0/authorize?scope=afe8286a-ec4c-4587-a59a-0be73a5fcf6b%20offline_access&response_type=code&client_id=afe8286a-ec4c-4587-a59a-0be73a5fcf6b&redirect_uri=https%3A%2F%2Forbit-staging-portal.aquafinance.com%2Fsignin&acr_values=aqua%252Fsecure%252Fname%252Fpassword%252Furi";
  static const azureUserInfo = "https://aquaauthstage.b2clogin.com/9cab6f66-155b-4f07-a365-87e8e101a74e/b2c_1a_orbit_signin_web/openid/v2.0/userinfo";
  static const azureForgotLoginUrl = "https://aquaauthstage.b2clogin.com/9cab6f66-155b-4f07-a365-87e8e101a74e/B2C_1A_Orbit_PasswordReset/oauth2/v2.0/authorize?client_id=afe8286a-ec4c-4587-a59a-0be73a5fcf6b&nonce=defaultNonce&redirect_uri=https://orbit-staging-portal.aquafinance.com/signin&scope=openid&response_type=id_token&prompt=login";
  static const  authTokenParameters = {
    "grant_type" : "password",
    "client_id" : "6998cf08-2d83-4b99-9f30-b1afe2c6a6f5",
    "scope" : "openid 6998cf08-2d83-4b99-9f30-b1afe2c6a6f5 offline_access"
  };

  static const loanAppContentApi = "https://orbit-staging-portal.aquafinance.com/api/loanApplicationContents";
  static const loanAppContentHashApi = "https://orbit-staging-portal.aquafinance.com/api/loanApplicationContentHash";
  static const relatedToUserDealersApi = "https://orbit-staging-api.aquafinance.com/api/dealers?relatedToRequestingUser=true";
  static const relatedToUserDealersApiPrefs = "https://orbit-staging-api.aquafinance.com/api/dealers/preferences";
  static const loanAppSubmissionApi = "https://orbit-staging-api.aquafinance.com/api/applications";

  static const supportingDocumentUrl = "https://orbit-staging-api.aquafinance.com/api/supportingDocuments/byOnBaseId/";
  static const pendingTermsApi = "https://orbit-staging-api.aquafinance.com/api/users/terms/pendingpolicies";
  static const applicationsApi = "https://orbit-staging-api.aquafinance.com/api/applications";
  static const creditDecisionApi = "https://orbit-staging-api.aquafinance.com/api/applications/%d/detail";
  static const whoAmIApi = "https://orbit-staging-api.aquafinance.com/api/users/whoami";
  static const paymentTermsApi = "https://orbit-staging-api.aquafinance.com/api/promotions/calculator?amountToBeFinanced={d2}&dealerId={d1}&stateCode={d3}";
  static const registerDeviceTokenApi = "https://orbit-staging-api.aquafinance.com/api/users/devices";



}