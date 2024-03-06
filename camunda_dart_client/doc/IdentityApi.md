# openapi.api.IdentityApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkPassword**](IdentityApi.md#checkpassword) | **POST** /identity/password-policy | Validate Password
[**getGroupInfo**](IdentityApi.md#getgroupinfo) | **GET** /identity/groups | Get a User's Groups
[**getPasswordPolicy**](IdentityApi.md#getpasswordpolicy) | **GET** /identity/password-policy | Get Password Policy
[**verifyUser**](IdentityApi.md#verifyuser) | **POST** /identity/verify | Verify User


# **checkPassword**
> CheckPasswordPolicyResultDto checkPassword(passwordPolicyRequestDto)

Validate Password

A password policy consists of a list of rules that new passwords must follow to be policy compliant. A password can be checked for compliancy via this end point. More information on password policies in Camunda can be found in the password policy [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/password-policy/) and in the [security instructions](https://docs.camunda.org/manual/7.20/user-guide/security/).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = IdentityApi();
final passwordPolicyRequestDto = PasswordPolicyRequestDto(); // PasswordPolicyRequestDto | 

try {
    final result = api_instance.checkPassword(passwordPolicyRequestDto);
    print(result);
} catch (e) {
    print('Exception when calling IdentityApi->checkPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **passwordPolicyRequestDto** | [**PasswordPolicyRequestDto**](PasswordPolicyRequestDto.md)|  | [optional] 

### Return type

[**CheckPasswordPolicyResultDto**](CheckPasswordPolicyResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupInfo**
> IdentityServiceGroupInfoDto getGroupInfo(userId)

Get a User's Groups

Gets the groups of a user by id and includes all users that share a group with the given user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = IdentityApi();
final userId = userId_example; // String | The id of the user to get the groups for.

try {
    final result = api_instance.getGroupInfo(userId);
    print(result);
} catch (e) {
    print('Exception when calling IdentityApi->getGroupInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The id of the user to get the groups for. | 

### Return type

[**IdentityServiceGroupInfoDto**](IdentityServiceGroupInfoDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPasswordPolicy**
> PasswordPolicyDto getPasswordPolicy()

Get Password Policy

A password policy consists of a list of rules that new passwords must follow to be policy compliant. This end point returns a JSON representation of the list of policy rules. More information on password policies in Camunda can be found in the password policy [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/password-policy/) and in the [security instructions](https://docs.camunda.org/manual/7.20/user-guide/security/).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = IdentityApi();

try {
    final result = api_instance.getPasswordPolicy();
    print(result);
} catch (e) {
    print('Exception when calling IdentityApi->getPasswordPolicy: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PasswordPolicyDto**](PasswordPolicyDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyUser**
> AuthenticationResult verifyUser(basicUserCredentialsDto)

Verify User

Verifies that user credentials are valid.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = IdentityApi();
final basicUserCredentialsDto = BasicUserCredentialsDto(); // BasicUserCredentialsDto | 

try {
    final result = api_instance.verifyUser(basicUserCredentialsDto);
    print(result);
} catch (e) {
    print('Exception when calling IdentityApi->verifyUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **basicUserCredentialsDto** | [**BasicUserCredentialsDto**](BasicUserCredentialsDto.md)|  | [optional] 

### Return type

[**AuthenticationResult**](AuthenticationResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

