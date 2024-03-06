# openapi.api.TenantApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**availableTenantGroupMembersOperations**](TenantApi.md#availabletenantgroupmembersoperations) | **OPTIONS** /tenant/{id}/group-members | Tenant Group Membership Resource Options
[**availableTenantInstanceOperations**](TenantApi.md#availabletenantinstanceoperations) | **OPTIONS** /tenant/{id} | Tenant Resource Options
[**availableTenantResourceOperations**](TenantApi.md#availabletenantresourceoperations) | **OPTIONS** /tenant | Tenant Resource Options
[**availableTenantUserMembersOperations**](TenantApi.md#availabletenantusermembersoperations) | **OPTIONS** /tenant/{id}/user-members | Tenant User Membership Resource Options
[**createGroupMembership**](TenantApi.md#creategroupmembership) | **PUT** /tenant/{id}/group-members/{groupId} | Create Tenant Group Membership
[**createTenant**](TenantApi.md#createtenant) | **POST** /tenant/create | Create Tenant
[**createUserMembership**](TenantApi.md#createusermembership) | **PUT** /tenant/{id}/user-members/{userId} | Create Tenant User Membership
[**deleteGroupMembership**](TenantApi.md#deletegroupmembership) | **DELETE** /tenant/{id}/group-members/{groupId} | Create Tenant Group Membership
[**deleteTenant**](TenantApi.md#deletetenant) | **DELETE** /tenant/{id} | Delete Tenant
[**deleteUserMembership**](TenantApi.md#deleteusermembership) | **DELETE** /tenant/{id}/user-members/{userId} | Delete a Tenant User Membership
[**getTenant**](TenantApi.md#gettenant) | **GET** /tenant/{id} | Get Tenant
[**getTenantCount**](TenantApi.md#gettenantcount) | **GET** /tenant/count | Get Tenant Count
[**queryTenants**](TenantApi.md#querytenants) | **GET** /tenant | Get Tenants
[**updateTenant**](TenantApi.md#updatetenant) | **PUT** /tenant/{id} | Update Tenant


# **availableTenantGroupMembersOperations**
> ResourceOptionsDto availableTenantGroupMembersOperations(id)

Tenant Group Membership Resource Options

The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TenantApi();
final id = id_example; // String | The id of the tenant

try {
    final result = api_instance.availableTenantGroupMembersOperations(id);
    print(result);
} catch (e) {
    print('Exception when calling TenantApi->availableTenantGroupMembersOperations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the tenant | 

### Return type

[**ResourceOptionsDto**](ResourceOptionsDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **availableTenantInstanceOperations**
> ResourceOptionsDto availableTenantInstanceOperations(id)

Tenant Resource Options

The `/tenant` resource supports two custom OPTIONS requests, one for the resource as such and this one for individual tenant instances. The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the `/tenant/{id}` resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TenantApi();
final id = id_example; // String | The id of the tenant

try {
    final result = api_instance.availableTenantInstanceOperations(id);
    print(result);
} catch (e) {
    print('Exception when calling TenantApi->availableTenantInstanceOperations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the tenant | 

### Return type

[**ResourceOptionsDto**](ResourceOptionsDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **availableTenantResourceOperations**
> ResourceOptionsDto availableTenantResourceOperations()

Tenant Resource Options

The `/tenant` resource supports two custom OPTIONS requests, this one for the resource as such and one for individual tenant instances. The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the `/tenant` resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TenantApi();

try {
    final result = api_instance.availableTenantResourceOperations();
    print(result);
} catch (e) {
    print('Exception when calling TenantApi->availableTenantResourceOperations: $e\n');
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

# **availableTenantUserMembersOperations**
> ResourceOptionsDto availableTenantUserMembersOperations(id)

Tenant User Membership Resource Options

The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TenantApi();
final id = id_example; // String | The id of the tenant

try {
    final result = api_instance.availableTenantUserMembersOperations(id);
    print(result);
} catch (e) {
    print('Exception when calling TenantApi->availableTenantUserMembersOperations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the tenant | 

### Return type

[**ResourceOptionsDto**](ResourceOptionsDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGroupMembership**
> createGroupMembership(id, groupId)

Create Tenant Group Membership

Creates a membership between a tenant and a group.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TenantApi();
final id = id_example; // String | The id of the tenant.
final groupId = groupId_example; // String | The id of the group.

try {
    api_instance.createGroupMembership(id, groupId);
} catch (e) {
    print('Exception when calling TenantApi->createGroupMembership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the tenant. | 
 **groupId** | **String**| The id of the group. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTenant**
> createTenant(tenantDto)

Create Tenant

Create a new tenant.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TenantApi();
final tenantDto = TenantDto(); // TenantDto | 

try {
    api_instance.createTenant(tenantDto);
} catch (e) {
    print('Exception when calling TenantApi->createTenant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantDto** | [**TenantDto**](TenantDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUserMembership**
> createUserMembership(id, userId)

Create Tenant User Membership

Creates a membership between a tenant and an user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TenantApi();
final id = id_example; // String | The id of the tenant.
final userId = userId_example; // String | The id of the user.

try {
    api_instance.createUserMembership(id, userId);
} catch (e) {
    print('Exception when calling TenantApi->createUserMembership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the tenant. | 
 **userId** | **String**| The id of the user. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroupMembership**
> deleteGroupMembership(id, groupId)

Create Tenant Group Membership

Creates a membership between a tenant and a group.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TenantApi();
final id = id_example; // String | The id of the tenant.
final groupId = groupId_example; // String | The id of the group.

try {
    api_instance.deleteGroupMembership(id, groupId);
} catch (e) {
    print('Exception when calling TenantApi->deleteGroupMembership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the tenant. | 
 **groupId** | **String**| The id of the group. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTenant**
> deleteTenant(id)

Delete Tenant

Deletes a tenant by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TenantApi();
final id = id_example; // String | The id of the tenant to be deleted.

try {
    api_instance.deleteTenant(id);
} catch (e) {
    print('Exception when calling TenantApi->deleteTenant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the tenant to be deleted. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserMembership**
> deleteUserMembership(id, userId)

Delete a Tenant User Membership

Deletes a membership between a tenant and an user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TenantApi();
final id = id_example; // String | The id of the tenant.
final userId = userId_example; // String | The id of the user.

try {
    api_instance.deleteUserMembership(id, userId);
} catch (e) {
    print('Exception when calling TenantApi->deleteUserMembership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the tenant. | 
 **userId** | **String**| The id of the user. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenant**
> TenantDto getTenant(id)

Get Tenant

Retrieves a tenant.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TenantApi();
final id = id_example; // String | The id of the tenant to be retrieved.

try {
    final result = api_instance.getTenant(id);
    print(result);
} catch (e) {
    print('Exception when calling TenantApi->getTenant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the tenant to be retrieved. | 

### Return type

[**TenantDto**](TenantDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantCount**
> CountResultDto getTenantCount(id, name, nameLike, userMember, groupMember, includingGroupsOfUser)

Get Tenant Count

Query for tenants using a list of parameters and retrieves the count.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TenantApi();
final id = id_example; // String | Filter by the id of the tenant.
final name = name_example; // String | Filter by the name of the tenant.
final nameLike = nameLike_example; // String | Filter by the name that the parameter is a substring of.
final userMember = userMember_example; // String | Select only tenants where the given user is a member of.
final groupMember = groupMember_example; // String | Select only tenants where the given group is a member of.
final includingGroupsOfUser = true; // bool | Select only tenants where the user or one of his groups is a member of. Can only be used in combination with the `userMember` parameter. Value may only be `true`, as `false` is the default behavior.

try {
    final result = api_instance.getTenantCount(id, name, nameLike, userMember, groupMember, includingGroupsOfUser);
    print(result);
} catch (e) {
    print('Exception when calling TenantApi->getTenantCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Filter by the id of the tenant. | [optional] 
 **name** | **String**| Filter by the name of the tenant. | [optional] 
 **nameLike** | **String**| Filter by the name that the parameter is a substring of. | [optional] 
 **userMember** | **String**| Select only tenants where the given user is a member of. | [optional] 
 **groupMember** | **String**| Select only tenants where the given group is a member of. | [optional] 
 **includingGroupsOfUser** | **bool**| Select only tenants where the user or one of his groups is a member of. Can only be used in combination with the `userMember` parameter. Value may only be `true`, as `false` is the default behavior. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryTenants**
> List<TenantDto> queryTenants(sortBy, sortOrder, firstResult, maxResults, id, name, nameLike, userMember, groupMember, includingGroupsOfUser)

Get Tenants

Query for a list of tenants using a list of parameters. The size of the result set can be retrieved by using the [Get Tenant Count](https://docs.camunda.org/manual/7.20/reference/rest/tenant/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TenantApi();
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final id = id_example; // String | Filter by the id of the tenant.
final name = name_example; // String | Filter by the name of the tenant.
final nameLike = nameLike_example; // String | Filter by the name that the parameter is a substring of.
final userMember = userMember_example; // String | Select only tenants where the given user is a member of.
final groupMember = groupMember_example; // String | Select only tenants where the given group is a member of.
final includingGroupsOfUser = true; // bool | Select only tenants where the user or one of his groups is a member of. Can only be used in combination with the `userMember` parameter. Value may only be `true`, as `false` is the default behavior.

try {
    final result = api_instance.queryTenants(sortBy, sortOrder, firstResult, maxResults, id, name, nameLike, userMember, groupMember, includingGroupsOfUser);
    print(result);
} catch (e) {
    print('Exception when calling TenantApi->queryTenants: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **id** | **String**| Filter by the id of the tenant. | [optional] 
 **name** | **String**| Filter by the name of the tenant. | [optional] 
 **nameLike** | **String**| Filter by the name that the parameter is a substring of. | [optional] 
 **userMember** | **String**| Select only tenants where the given user is a member of. | [optional] 
 **groupMember** | **String**| Select only tenants where the given group is a member of. | [optional] 
 **includingGroupsOfUser** | **bool**| Select only tenants where the user or one of his groups is a member of. Can only be used in combination with the `userMember` parameter. Value may only be `true`, as `false` is the default behavior. | [optional] 

### Return type

[**List<TenantDto>**](TenantDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTenant**
> updateTenant(id, tenantDto)

Update Tenant

Updates a given tenant.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TenantApi();
final id = id_example; // String | The id of the tenant.
final tenantDto = TenantDto(); // TenantDto | 

try {
    api_instance.updateTenant(id, tenantDto);
} catch (e) {
    print('Exception when calling TenantApi->updateTenant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the tenant. | 
 **tenantDto** | [**TenantDto**](TenantDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

