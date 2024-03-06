# openapi.api.GroupApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**availableGroupInstanceOperations**](GroupApi.md#availablegroupinstanceoperations) | **OPTIONS** /group/{id} | Group Resource Instance Options
[**availableGroupMembersOperations**](GroupApi.md#availablegroupmembersoperations) | **OPTIONS** /group/{id}/members | Group Membership Resource Options
[**availableGroupOperations**](GroupApi.md#availablegroupoperations) | **OPTIONS** /group | Group Resource Options
[**createGroup**](GroupApi.md#creategroup) | **POST** /group/create | Create Group
[**createGroupMember**](GroupApi.md#creategroupmember) | **PUT** /group/{id}/members/{userId} | Create Group Member
[**deleteGroup**](GroupApi.md#deletegroup) | **DELETE** /group/{id} | Delete Group
[**deleteGroupMember**](GroupApi.md#deletegroupmember) | **DELETE** /group/{id}/members/{userId} | Delete a Group Member
[**getGroup**](GroupApi.md#getgroup) | **GET** /group/{id} | Get Group
[**getGroupCount**](GroupApi.md#getgroupcount) | **GET** /group/count | Get List Count
[**getQueryGroups**](GroupApi.md#getquerygroups) | **GET** /group | Get List
[**postQueryGroups**](GroupApi.md#postquerygroups) | **POST** /group | Get List (POST)
[**queryGroupCount**](GroupApi.md#querygroupcount) | **POST** /group/count | Get List Count (POST)
[**updateGroup**](GroupApi.md#updategroup) | **PUT** /group/{id} | Update Group


# **availableGroupInstanceOperations**
> ResourceOptionsDto availableGroupInstanceOperations(id)

Group Resource Instance Options

The `/group` resource supports two custom OPTIONS requests, one for the resource as such and this one for individual group instances. The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the `/group/{id}` resource instance. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = GroupApi();
final id = id_example; // String | The id of the group.

try {
    final result = api_instance.availableGroupInstanceOperations(id);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->availableGroupInstanceOperations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the group. | 

### Return type

[**ResourceOptionsDto**](ResourceOptionsDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **availableGroupMembersOperations**
> ResourceOptionsDto availableGroupMembersOperations(id)

Group Membership Resource Options

The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = GroupApi();
final id = id_example; // String | The id of the group.

try {
    final result = api_instance.availableGroupMembersOperations(id);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->availableGroupMembersOperations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the group. | 

### Return type

[**ResourceOptionsDto**](ResourceOptionsDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **availableGroupOperations**
> ResourceOptionsDto availableGroupOperations()

Group Resource Options

The `/group` resource supports two custom OPTIONS requests, this one for the resource as such and one for individual group instances. The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the `/group` resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = GroupApi();

try {
    final result = api_instance.availableGroupOperations();
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->availableGroupOperations: $e\n');
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

# **createGroup**
> createGroup(groupDto)

Create Group

Creates a new group.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = GroupApi();
final groupDto = GroupDto(); // GroupDto | 

try {
    api_instance.createGroup(groupDto);
} catch (e) {
    print('Exception when calling GroupApi->createGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupDto** | [**GroupDto**](GroupDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGroupMember**
> createGroupMember(id, userId)

Create Group Member

Adds a member to a group.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = GroupApi();
final id = id_example; // String | The id of the group.
final userId = userId_example; // String | The id of user to add to the group.

try {
    api_instance.createGroupMember(id, userId);
} catch (e) {
    print('Exception when calling GroupApi->createGroupMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the group. | 
 **userId** | **String**| The id of user to add to the group. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroup**
> deleteGroup(id)

Delete Group

Deletes a group by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = GroupApi();
final id = id_example; // String | The id of the group to be deleted.

try {
    api_instance.deleteGroup(id);
} catch (e) {
    print('Exception when calling GroupApi->deleteGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the group to be deleted. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroupMember**
> deleteGroupMember(id, userId)

Delete a Group Member

Removes a member from a group.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = GroupApi();
final id = id_example; // String | The id of the group.
final userId = userId_example; // String | The id of user to remove from the group.

try {
    api_instance.deleteGroupMember(id, userId);
} catch (e) {
    print('Exception when calling GroupApi->deleteGroupMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the group. | 
 **userId** | **String**| The id of user to remove from the group. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroup**
> GroupDto getGroup(id)

Get Group

Retrieves a group by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = GroupApi();
final id = id_example; // String | The id of the group to be retrieved.

try {
    final result = api_instance.getGroup(id);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->getGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the group to be retrieved. | 

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupCount**
> CountResultDto getGroupCount(id, idIn, name, nameLike, type, member, memberOfTenant)

Get List Count

Queries for groups using a list of parameters and retrieves the count.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = GroupApi();
final id = id_example; // String | Filter by the id of the group.
final idIn = idIn_example; // String | Filter by a comma seperated list of group ids.
final name = name_example; // String | Filter by the name of the group.
final nameLike = nameLike_example; // String | Filter by the name that the parameter is a substring of.
final type = type_example; // String | Filter by the type of the group.
final member = member_example; // String | Only retrieve groups where the given user id is a member of.
final memberOfTenant = memberOfTenant_example; // String | Only retrieve groups which are members of the given tenant.

try {
    final result = api_instance.getGroupCount(id, idIn, name, nameLike, type, member, memberOfTenant);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->getGroupCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Filter by the id of the group. | [optional] 
 **idIn** | **String**| Filter by a comma seperated list of group ids. | [optional] 
 **name** | **String**| Filter by the name of the group. | [optional] 
 **nameLike** | **String**| Filter by the name that the parameter is a substring of. | [optional] 
 **type** | **String**| Filter by the type of the group. | [optional] 
 **member** | **String**| Only retrieve groups where the given user id is a member of. | [optional] 
 **memberOfTenant** | **String**| Only retrieve groups which are members of the given tenant. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQueryGroups**
> List<GroupDto> getQueryGroups(sortBy, sortOrder, firstResult, maxResults, id, idIn, name, nameLike, type, member, memberOfTenant)

Get List

Queries for a list of groups using a list of parameters. The size of the result set can be retrieved by using the [Get Group Count](https://docs.camunda.org/manual/7.20/reference/rest/group/get-query-count) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = GroupApi();
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final id = id_example; // String | Filter by the id of the group.
final idIn = idIn_example; // String | Filter by a comma seperated list of group ids.
final name = name_example; // String | Filter by the name of the group.
final nameLike = nameLike_example; // String | Filter by the name that the parameter is a substring of.
final type = type_example; // String | Filter by the type of the group.
final member = member_example; // String | Only retrieve groups where the given user id is a member of.
final memberOfTenant = memberOfTenant_example; // String | Only retrieve groups which are members of the given tenant.

try {
    final result = api_instance.getQueryGroups(sortBy, sortOrder, firstResult, maxResults, id, idIn, name, nameLike, type, member, memberOfTenant);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->getQueryGroups: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **id** | **String**| Filter by the id of the group. | [optional] 
 **idIn** | **String**| Filter by a comma seperated list of group ids. | [optional] 
 **name** | **String**| Filter by the name of the group. | [optional] 
 **nameLike** | **String**| Filter by the name that the parameter is a substring of. | [optional] 
 **type** | **String**| Filter by the type of the group. | [optional] 
 **member** | **String**| Only retrieve groups where the given user id is a member of. | [optional] 
 **memberOfTenant** | **String**| Only retrieve groups which are members of the given tenant. | [optional] 

### Return type

[**List<GroupDto>**](GroupDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postQueryGroups**
> List<GroupDto> postQueryGroups(firstResult, maxResults, groupQueryDto)

Get List (POST)

Queries for a list of groups using a list of parameters. The size of the result set can be retrieved by using the [Get Group Count (POST)](https://docs.camunda.org/manual/7.20/reference/rest/group/post-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = GroupApi();
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final groupQueryDto = GroupQueryDto(); // GroupQueryDto | 

try {
    final result = api_instance.postQueryGroups(firstResult, maxResults, groupQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->postQueryGroups: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **groupQueryDto** | [**GroupQueryDto**](GroupQueryDto.md)|  | [optional] 

### Return type

[**List<GroupDto>**](GroupDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryGroupCount**
> CountResultDto queryGroupCount(groupQueryDto)

Get List Count (POST)

Queries for groups using a list of parameters and retrieves the count.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = GroupApi();
final groupQueryDto = GroupQueryDto(); // GroupQueryDto | 

try {
    final result = api_instance.queryGroupCount(groupQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->queryGroupCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupQueryDto** | [**GroupQueryDto**](GroupQueryDto.md)|  | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroup**
> updateGroup(id, groupDto)

Update Group

Updates a given group by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = GroupApi();
final id = id_example; // String | The id of the group.
final groupDto = GroupDto(); // GroupDto | 

try {
    api_instance.updateGroup(id, groupDto);
} catch (e) {
    print('Exception when calling GroupApi->updateGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the group. | 
 **groupDto** | [**GroupDto**](GroupDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

