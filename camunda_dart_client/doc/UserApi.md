# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**availableOperations**](UserApi.md#availableoperations) | **OPTIONS** /user | Options
[**availableUserOperations**](UserApi.md#availableuseroperations) | **OPTIONS** /user/{id} | Options
[**createUser**](UserApi.md#createuser) | **POST** /user/create | Create
[**deleteUser**](UserApi.md#deleteuser) | **DELETE** /user/{id} | Delete
[**getUserCount**](UserApi.md#getusercount) | **GET** /user/count | Get List Count
[**getUserProfile**](UserApi.md#getuserprofile) | **GET** /user/{id}/profile | Get Profile
[**getUsers**](UserApi.md#getusers) | **GET** /user | Get List
[**unlockUser**](UserApi.md#unlockuser) | **POST** /user/{id}/unlock | Unlock User
[**updateCredentials**](UserApi.md#updatecredentials) | **PUT** /user/{id}/credentials | Update Credentials
[**updateProfile**](UserApi.md#updateprofile) | **PUT** /user/{id}/profile | Update User Profile


# **availableOperations**
> ResourceOptionsDto availableOperations()

Options

The `/user` resource supports two custom `OPTIONS` requests, one for the resource as such and one for individual user instances. The `OPTIONS` request allows checking for the set of available operations that the currently authenticated user can perform on the /user resource. If the user can perform an operation or not may depend on various things, including the user's authorizations to interact with this resource and the internal configuration of the process engine. `OPTIONS /user` returns available interactions on the resource.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = UserApi();

try {
    final result = api_instance.availableOperations();
    print(result);
} catch (e) {
    print('Exception when calling UserApi->availableOperations: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResourceOptionsDto**](ResourceOptionsDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **availableUserOperations**
> ResourceOptionsDto availableUserOperations(id)

Options

The `/user` resource supports two custom `OPTIONS` requests, one for the resource as such and one for individual user instances. The `OPTIONS` request allows checking for the set of available operations that the currently authenticated user can perform on the /user resource. If the user can perform an operation or not may depend on various things, including the user's authorizations to interact with this resource and the internal configuration of the process engine. `OPTIONS /user/{id}` returns available interactions on a resource instance.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = UserApi();
final id = id_example; // String | The id of the user to be deleted.

try {
    final result = api_instance.availableUserOperations(id);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->availableUserOperations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the user to be deleted. | 

### Return type

[**ResourceOptionsDto**](ResourceOptionsDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUser**
> createUser(userDto)

Create

Create a new user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = UserApi();
final userDto = UserDto(); // UserDto | 

try {
    api_instance.createUser(userDto);
} catch (e) {
    print('Exception when calling UserApi->createUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userDto** | [**UserDto**](UserDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
> deleteUser(id)

Delete

Deletes a user by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = UserApi();
final id = id_example; // String | The id of the user to be deleted.

try {
    api_instance.deleteUser(id);
} catch (e) {
    print('Exception when calling UserApi->deleteUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the user to be deleted. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserCount**
> CountResultDto getUserCount(id, idIn, firstName, firstNameLike, lastName, lastNameLike, email, emailLike, memberOfGroup, memberOfTenant, potentialStarter)

Get List Count

Queries for the number of deployments that fulfill given parameters. Takes the same parameters as the [Get Users](https://docs.camunda.org/manual/7.20/reference/rest/user/get-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = UserApi();
final id = id_example; // String | Filter by user id
final idIn = idIn_example; // String | Filter by a comma-separated list of user ids.
final firstName = firstName_example; // String | Filter by the first name of the user. Exact match.
final firstNameLike = firstNameLike_example; // String | Filter by the first name that the parameter is a substring of.
final lastName = lastName_example; // String | Filter by the last name of the user. Exact match.
final lastNameLike = lastNameLike_example; // String | Filter by the last name that the parameter is a substring of.
final email = email_example; // String | Filter by the email of the user. Exact match.
final emailLike = emailLike_example; // String | Filter by the email that the parameter is a substring of.
final memberOfGroup = memberOfGroup_example; // String | Filter for users which are members of the given group.
final memberOfTenant = memberOfTenant_example; // String | Filter for users which are members of the given tenant.
final potentialStarter = potentialStarter_example; // String | Only select Users that are potential starter for the given process definition.

try {
    final result = api_instance.getUserCount(id, idIn, firstName, firstNameLike, lastName, lastNameLike, email, emailLike, memberOfGroup, memberOfTenant, potentialStarter);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->getUserCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Filter by user id | [optional] 
 **idIn** | **String**| Filter by a comma-separated list of user ids. | [optional] 
 **firstName** | **String**| Filter by the first name of the user. Exact match. | [optional] 
 **firstNameLike** | **String**| Filter by the first name that the parameter is a substring of. | [optional] 
 **lastName** | **String**| Filter by the last name of the user. Exact match. | [optional] 
 **lastNameLike** | **String**| Filter by the last name that the parameter is a substring of. | [optional] 
 **email** | **String**| Filter by the email of the user. Exact match. | [optional] 
 **emailLike** | **String**| Filter by the email that the parameter is a substring of. | [optional] 
 **memberOfGroup** | **String**| Filter for users which are members of the given group. | [optional] 
 **memberOfTenant** | **String**| Filter for users which are members of the given tenant. | [optional] 
 **potentialStarter** | **String**| Only select Users that are potential starter for the given process definition. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserProfile**
> UserProfileDto getUserProfile(id)

Get Profile

Retrieves a user's profile.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = UserApi();
final id = id_example; // String | The id of the user to retrieve.

try {
    final result = api_instance.getUserProfile(id);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->getUserProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the user to retrieve. | 

### Return type

[**UserProfileDto**](UserProfileDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
> List<UserProfileDto> getUsers(id, idIn, firstName, firstNameLike, lastName, lastNameLike, email, emailLike, memberOfGroup, memberOfTenant, potentialStarter, sortBy, sortOrder, firstResult, maxResults)

Get List

Query for a list of users using a list of parameters. The size of the result set can be retrieved by using the Get User Count method. [Get User Count](https://docs.camunda.org/manual/7.20/reference/rest/user/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = UserApi();
final id = id_example; // String | Filter by user id
final idIn = idIn_example; // String | Filter by a comma-separated list of user ids.
final firstName = firstName_example; // String | Filter by the first name of the user. Exact match.
final firstNameLike = firstNameLike_example; // String | Filter by the first name that the parameter is a substring of.
final lastName = lastName_example; // String | Filter by the last name of the user. Exact match.
final lastNameLike = lastNameLike_example; // String | Filter by the last name that the parameter is a substring of.
final email = email_example; // String | Filter by the email of the user. Exact match.
final emailLike = emailLike_example; // String | Filter by the email that the parameter is a substring of.
final memberOfGroup = memberOfGroup_example; // String | Filter for users which are members of the given group.
final memberOfTenant = memberOfTenant_example; // String | Filter for users which are members of the given tenant.
final potentialStarter = potentialStarter_example; // String | Only select Users that are potential starter for the given process definition.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getUsers(id, idIn, firstName, firstNameLike, lastName, lastNameLike, email, emailLike, memberOfGroup, memberOfTenant, potentialStarter, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->getUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Filter by user id | [optional] 
 **idIn** | **String**| Filter by a comma-separated list of user ids. | [optional] 
 **firstName** | **String**| Filter by the first name of the user. Exact match. | [optional] 
 **firstNameLike** | **String**| Filter by the first name that the parameter is a substring of. | [optional] 
 **lastName** | **String**| Filter by the last name of the user. Exact match. | [optional] 
 **lastNameLike** | **String**| Filter by the last name that the parameter is a substring of. | [optional] 
 **email** | **String**| Filter by the email of the user. Exact match. | [optional] 
 **emailLike** | **String**| Filter by the email that the parameter is a substring of. | [optional] 
 **memberOfGroup** | **String**| Filter for users which are members of the given group. | [optional] 
 **memberOfTenant** | **String**| Filter for users which are members of the given tenant. | [optional] 
 **potentialStarter** | **String**| Only select Users that are potential starter for the given process definition. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<UserProfileDto>**](UserProfileDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlockUser**
> unlockUser(id)

Unlock User

Unlocks a user by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = UserApi();
final id = id_example; // String | The id of the user to be unlocked.

try {
    api_instance.unlockUser(id);
} catch (e) {
    print('Exception when calling UserApi->unlockUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the user to be unlocked. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCredentials**
> updateCredentials(id, userCredentialsDto)

Update Credentials

Updates a user's credentials (password)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = UserApi();
final id = id_example; // String | The id of the user to be updated.
final userCredentialsDto = UserCredentialsDto(); // UserCredentialsDto | 

try {
    api_instance.updateCredentials(id, userCredentialsDto);
} catch (e) {
    print('Exception when calling UserApi->updateCredentials: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the user to be updated. | 
 **userCredentialsDto** | [**UserCredentialsDto**](UserCredentialsDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProfile**
> updateProfile(id, userProfileDto)

Update User Profile

Updates the profile information of an already existing user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = UserApi();
final id = id_example; // String | The id of the user.
final userProfileDto = UserProfileDto(); // UserProfileDto | 

try {
    api_instance.updateProfile(id, userProfileDto);
} catch (e) {
    print('Exception when calling UserApi->updateProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the user. | 
 **userProfileDto** | [**UserProfileDto**](UserProfileDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

