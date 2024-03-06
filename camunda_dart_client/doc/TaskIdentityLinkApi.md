# openapi.api.TaskIdentityLinkApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addIdentityLink**](TaskIdentityLinkApi.md#addidentitylink) | **POST** /task/{id}/identity-links | Add
[**deleteIdentityLink**](TaskIdentityLinkApi.md#deleteidentitylink) | **POST** /task/{id}/identity-links/delete | Delete
[**getIdentityLinks**](TaskIdentityLinkApi.md#getidentitylinks) | **GET** /task/{id}/identity-links | Get List


# **addIdentityLink**
> addIdentityLink(id, identityLinkDto)

Add

Adds an identity link to a task by id. Can be used to link any user or group to a task and specify a relation.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskIdentityLinkApi();
final id = id_example; // String | The id of the task to add a link to.
final identityLinkDto = IdentityLinkDto(); // IdentityLinkDto | 

try {
    api_instance.addIdentityLink(id, identityLinkDto);
} catch (e) {
    print('Exception when calling TaskIdentityLinkApi->addIdentityLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task to add a link to. | 
 **identityLinkDto** | [**IdentityLinkDto**](IdentityLinkDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteIdentityLink**
> deleteIdentityLink(id, identityLinkDto)

Delete

Removes an identity link from a task by id

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskIdentityLinkApi();
final id = id_example; // String | The id of the task to remove a link from.
final identityLinkDto = IdentityLinkDto(); // IdentityLinkDto | 

try {
    api_instance.deleteIdentityLink(id, identityLinkDto);
} catch (e) {
    print('Exception when calling TaskIdentityLinkApi->deleteIdentityLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task to remove a link from. | 
 **identityLinkDto** | [**IdentityLinkDto**](IdentityLinkDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIdentityLinks**
> List<IdentityLinkDto> getIdentityLinks(id, type)

Get List

Gets the identity links for a task by id, which are the users and groups that are in *some* relation to it (including assignee and owner).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskIdentityLinkApi();
final id = id_example; // String | The id of the task to retrieve the identity links for.
final type = type_example; // String | Filter by the type of links to include.

try {
    final result = api_instance.getIdentityLinks(id, type);
    print(result);
} catch (e) {
    print('Exception when calling TaskIdentityLinkApi->getIdentityLinks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task to retrieve the identity links for. | 
 **type** | **String**| Filter by the type of links to include. | [optional] 

### Return type

[**List<IdentityLinkDto>**](IdentityLinkDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

