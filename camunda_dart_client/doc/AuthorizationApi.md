# openapi.api.AuthorizationApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**availableOperationsAuthorization**](AuthorizationApi.md#availableoperationsauthorization) | **OPTIONS** /authorization | Authorization Resource Options
[**availableOperationsAuthorizationInstance**](AuthorizationApi.md#availableoperationsauthorizationinstance) | **OPTIONS** /authorization/{id} | Authorization Resource Options
[**createAuthorization**](AuthorizationApi.md#createauthorization) | **POST** /authorization/create | Create a New Authorization
[**deleteAuthorization**](AuthorizationApi.md#deleteauthorization) | **DELETE** /authorization/{id} | Delete Authorization
[**getAuthorization**](AuthorizationApi.md#getauthorization) | **GET** /authorization/{id} | Get Authorization
[**getAuthorizationCount**](AuthorizationApi.md#getauthorizationcount) | **GET** /authorization/count | Get Authorization Count
[**isUserAuthorized**](AuthorizationApi.md#isuserauthorized) | **GET** /authorization/check | Perform an Authorization Check
[**queryAuthorizations**](AuthorizationApi.md#queryauthorizations) | **GET** /authorization | Get Authorizations
[**updateAuthorization**](AuthorizationApi.md#updateauthorization) | **PUT** /authorization/{id} | Update an Authorization


# **availableOperationsAuthorization**
> ResourceOptionsDto availableOperationsAuthorization()

Authorization Resource Options

The OPTIONS request allows you to check for the set of available operations that the currently authenticated user can perform on the `/authorization` resource. Whether the user can perform an operation or not may depend on various factors, including the users authorizations to interact with this resource and the internal configuration of the process engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = AuthorizationApi();

try {
    final result = api_instance.availableOperationsAuthorization();
    print(result);
} catch (e) {
    print('Exception when calling AuthorizationApi->availableOperationsAuthorization: $e\n');
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

# **availableOperationsAuthorizationInstance**
> ResourceOptionsDto availableOperationsAuthorizationInstance(id)

Authorization Resource Options

The OPTIONS request allows you to check for the set of available operations that the currently authenticated user can perform on a given instance of the `/authorization` resource. Whether the user can perform an operation or not may depend on various factors, including the users authorizations to interact with this resource and the internal configuration of the process engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = AuthorizationApi();
final id = id_example; // String | The id of the authorization to be retrieved.

try {
    final result = api_instance.availableOperationsAuthorizationInstance(id);
    print(result);
} catch (e) {
    print('Exception when calling AuthorizationApi->availableOperationsAuthorizationInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the authorization to be retrieved. | 

### Return type

[**ResourceOptionsDto**](ResourceOptionsDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAuthorization**
> AuthorizationDto createAuthorization(authorizationCreateDto)

Create a New Authorization

Creates a new authorization.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = AuthorizationApi();
final authorizationCreateDto = AuthorizationCreateDto(); // AuthorizationCreateDto | 

try {
    final result = api_instance.createAuthorization(authorizationCreateDto);
    print(result);
} catch (e) {
    print('Exception when calling AuthorizationApi->createAuthorization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorizationCreateDto** | [**AuthorizationCreateDto**](AuthorizationCreateDto.md)|  | [optional] 

### Return type

[**AuthorizationDto**](AuthorizationDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAuthorization**
> deleteAuthorization(id)

Delete Authorization

Deletes an authorization by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = AuthorizationApi();
final id = id_example; // String | The id of the authorization to be deleted.

try {
    api_instance.deleteAuthorization(id);
} catch (e) {
    print('Exception when calling AuthorizationApi->deleteAuthorization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the authorization to be deleted. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuthorization**
> AuthorizationDto getAuthorization(id)

Get Authorization

Retrieves an authorization by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = AuthorizationApi();
final id = id_example; // String | The id of the authorization to be retrieved.

try {
    final result = api_instance.getAuthorization(id);
    print(result);
} catch (e) {
    print('Exception when calling AuthorizationApi->getAuthorization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the authorization to be retrieved. | 

### Return type

[**AuthorizationDto**](AuthorizationDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuthorizationCount**
> CountResultDto getAuthorizationCount(id, type, userIdIn, groupIdIn, resourceType, resourceId)

Get Authorization Count

Queries for authorizations using a list of parameters and retrieves the count.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = AuthorizationApi();
final id = id_example; // String | Filter by the id of the authorization.
final type = 56; // int | Filter by authorization type. (0=global, 1=grant, 2=revoke). See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#authorization-type) for more information about authorization types.
final userIdIn = userIdIn_example; // String | Filter by a comma-separated list of userIds.
final groupIdIn = groupIdIn_example; // String | Filter by a comma-separated list of groupIds.
final resourceType = 56; // int | Filter by an integer representation of the resource type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#resources) for a list of integer representations of resource types.
final resourceId = resourceId_example; // String | Filter by resource id.

try {
    final result = api_instance.getAuthorizationCount(id, type, userIdIn, groupIdIn, resourceType, resourceId);
    print(result);
} catch (e) {
    print('Exception when calling AuthorizationApi->getAuthorizationCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Filter by the id of the authorization. | [optional] 
 **type** | **int**| Filter by authorization type. (0=global, 1=grant, 2=revoke). See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#authorization-type) for more information about authorization types. | [optional] 
 **userIdIn** | **String**| Filter by a comma-separated list of userIds. | [optional] 
 **groupIdIn** | **String**| Filter by a comma-separated list of groupIds. | [optional] 
 **resourceType** | **int**| Filter by an integer representation of the resource type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#resources) for a list of integer representations of resource types. | [optional] 
 **resourceId** | **String**| Filter by resource id. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **isUserAuthorized**
> AuthorizationCheckResultDto isUserAuthorized(permissionName, resourceName, resourceType, resourceId, userId)

Perform an Authorization Check

Performs an authorization check for the currently authenticated user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = AuthorizationApi();
final permissionName = permissionName_example; // String | String value representing the permission name to check for.
final resourceName = resourceName_example; // String | String value for the name of the resource to check permissions for.
final resourceType = 56; // int | An integer representing the resource type to check permissions for. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#resources) for a list of integer representations of resource types.
final resourceId = resourceId_example; // String | The id of the resource to check permissions for. If left blank, a check for global permissions on the resource is performed.
final userId = userId_example; // String | The id of the user to check permissions for. The currently authenticated user must have a READ permission for the Authorization resource. If `userId` is blank, a check for the currently authenticated user is performed.

try {
    final result = api_instance.isUserAuthorized(permissionName, resourceName, resourceType, resourceId, userId);
    print(result);
} catch (e) {
    print('Exception when calling AuthorizationApi->isUserAuthorized: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permissionName** | **String**| String value representing the permission name to check for. | 
 **resourceName** | **String**| String value for the name of the resource to check permissions for. | 
 **resourceType** | **int**| An integer representing the resource type to check permissions for. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#resources) for a list of integer representations of resource types. | 
 **resourceId** | **String**| The id of the resource to check permissions for. If left blank, a check for global permissions on the resource is performed. | [optional] 
 **userId** | **String**| The id of the user to check permissions for. The currently authenticated user must have a READ permission for the Authorization resource. If `userId` is blank, a check for the currently authenticated user is performed. | [optional] 

### Return type

[**AuthorizationCheckResultDto**](AuthorizationCheckResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryAuthorizations**
> List<AuthorizationDto> queryAuthorizations(id, type, userIdIn, groupIdIn, resourceType, resourceId, sortBy, sortOrder, firstResult, maxResults)

Get Authorizations

Queries for a list of authorizations using a list of parameters. The size of the result set can be retrieved by using the [Get Authorization Count](https://docs.camunda.org/manual/7.20/reference/rest/authorization/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = AuthorizationApi();
final id = id_example; // String | Filter by the id of the authorization.
final type = 56; // int | Filter by authorization type. (0=global, 1=grant, 2=revoke). See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#authorization-type) for more information about authorization types.
final userIdIn = userIdIn_example; // String | Filter by a comma-separated list of userIds.
final groupIdIn = groupIdIn_example; // String | Filter by a comma-separated list of groupIds.
final resourceType = 56; // int | Filter by an integer representation of the resource type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#resources) for a list of integer representations of resource types.
final resourceId = resourceId_example; // String | Filter by resource id.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.queryAuthorizations(id, type, userIdIn, groupIdIn, resourceType, resourceId, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling AuthorizationApi->queryAuthorizations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Filter by the id of the authorization. | [optional] 
 **type** | **int**| Filter by authorization type. (0=global, 1=grant, 2=revoke). See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#authorization-type) for more information about authorization types. | [optional] 
 **userIdIn** | **String**| Filter by a comma-separated list of userIds. | [optional] 
 **groupIdIn** | **String**| Filter by a comma-separated list of groupIds. | [optional] 
 **resourceType** | **int**| Filter by an integer representation of the resource type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#resources) for a list of integer representations of resource types. | [optional] 
 **resourceId** | **String**| Filter by resource id. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<AuthorizationDto>**](AuthorizationDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAuthorization**
> updateAuthorization(id, authorizationUpdateDto)

Update an Authorization

Updates an authorization by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = AuthorizationApi();
final id = id_example; // String | The id of the authorization to be updated.
final authorizationUpdateDto = AuthorizationUpdateDto(); // AuthorizationUpdateDto | 

try {
    api_instance.updateAuthorization(id, authorizationUpdateDto);
} catch (e) {
    print('Exception when calling AuthorizationApi->updateAuthorization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the authorization to be updated. | 
 **authorizationUpdateDto** | [**AuthorizationUpdateDto**](AuthorizationUpdateDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

