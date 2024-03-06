# openapi.api.HistoricIdentityLinkLogApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHistoricIdentityLinks**](HistoricIdentityLinkLogApi.md#gethistoricidentitylinks) | **GET** /history/identity-link-log | Get Identity Link Logs
[**getHistoricIdentityLinksCount**](HistoricIdentityLinkLogApi.md#gethistoricidentitylinkscount) | **GET** /history/identity-link-log/count | Get Identity Link Log Count


# **getHistoricIdentityLinks**
> List<HistoricIdentityLinkLogDto> getHistoricIdentityLinks(type, userId, groupId, dateBefore, dateAfter, taskId, processDefinitionId, processDefinitionKey, operationType, assignerId, tenantIdIn, withoutTenantId, sortBy, sortOrder, firstResult, maxResults)

Get Identity Link Logs

Queries for historic identity link logs that fulfill given parameters. The size of the result set can be retrieved by using the [Get Identity-Link-Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/identity-links/get-identity-link-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricIdentityLinkLogApi();
final type = type_example; // String | Restricts to identity links that have the given type (candidate/assignee/owner).
final userId = userId_example; // String | Restricts to identity links that have the given user id.
final groupId = groupId_example; // String | Restricts to identity links that have the given group id.
final dateBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restricts to identity links that have the time before the given time.
final dateAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restricts to identity links that have the time after the given time.
final taskId = taskId_example; // String | Restricts to identity links that have the given task id.
final processDefinitionId = processDefinitionId_example; // String | Restricts to identity links that have the given process definition id.
final processDefinitionKey = processDefinitionKey_example; // String | Restricts to identity links that have the given process definition key.
final operationType = operationType_example; // String | Restricts to identity links that have the given operationType (add/delete).
final assignerId = assignerId_example; // String | Restricts to identity links that have the given assigner id.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids.
final withoutTenantId = true; // bool | Only include historic identity links that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getHistoricIdentityLinks(type, userId, groupId, dateBefore, dateAfter, taskId, processDefinitionId, processDefinitionKey, operationType, assignerId, tenantIdIn, withoutTenantId, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling HistoricIdentityLinkLogApi->getHistoricIdentityLinks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Restricts to identity links that have the given type (candidate/assignee/owner). | [optional] 
 **userId** | **String**| Restricts to identity links that have the given user id. | [optional] 
 **groupId** | **String**| Restricts to identity links that have the given group id. | [optional] 
 **dateBefore** | **DateTime**| Restricts to identity links that have the time before the given time. | [optional] 
 **dateAfter** | **DateTime**| Restricts to identity links that have the time after the given time. | [optional] 
 **taskId** | **String**| Restricts to identity links that have the given task id. | [optional] 
 **processDefinitionId** | **String**| Restricts to identity links that have the given process definition id. | [optional] 
 **processDefinitionKey** | **String**| Restricts to identity links that have the given process definition key. | [optional] 
 **operationType** | **String**| Restricts to identity links that have the given operationType (add/delete). | [optional] 
 **assignerId** | **String**| Restricts to identity links that have the given assigner id. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include historic identity links that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<HistoricIdentityLinkLogDto>**](HistoricIdentityLinkLogDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricIdentityLinksCount**
> CountResultDto getHistoricIdentityLinksCount(type, userId, groupId, dateBefore, dateAfter, taskId, processDefinitionId, processDefinitionKey, operationType, assignerId, tenantIdIn, withoutTenantId)

Get Identity Link Log Count

Queries for the number of historic identity link logs that fulfill the given parameters. Takes the same parameters as the [Get Identity-Link-Logs](https://docs.camunda.org/manual/7.20/reference/rest/history/identity-links/get-identity-link-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricIdentityLinkLogApi();
final type = type_example; // String | Restricts to identity links that have the given type (candidate/assignee/owner).
final userId = userId_example; // String | Restricts to identity links that have the given user id.
final groupId = groupId_example; // String | Restricts to identity links that have the given group id.
final dateBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restricts to identity links that have the time before the given time.
final dateAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restricts to identity links that have the time after the given time.
final taskId = taskId_example; // String | Restricts to identity links that have the given task id.
final processDefinitionId = processDefinitionId_example; // String | Restricts to identity links that have the given process definition id.
final processDefinitionKey = processDefinitionKey_example; // String | Restricts to identity links that have the given process definition key.
final operationType = operationType_example; // String | Restricts to identity links that have the given operationType (add/delete).
final assignerId = assignerId_example; // String | Restricts to identity links that have the given assigner id.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids.
final withoutTenantId = true; // bool | Only include historic identity links that belong to no tenant. Value may only be `true`, as `false` is the default behavior.

try {
    final result = api_instance.getHistoricIdentityLinksCount(type, userId, groupId, dateBefore, dateAfter, taskId, processDefinitionId, processDefinitionKey, operationType, assignerId, tenantIdIn, withoutTenantId);
    print(result);
} catch (e) {
    print('Exception when calling HistoricIdentityLinkLogApi->getHistoricIdentityLinksCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Restricts to identity links that have the given type (candidate/assignee/owner). | [optional] 
 **userId** | **String**| Restricts to identity links that have the given user id. | [optional] 
 **groupId** | **String**| Restricts to identity links that have the given group id. | [optional] 
 **dateBefore** | **DateTime**| Restricts to identity links that have the time before the given time. | [optional] 
 **dateAfter** | **DateTime**| Restricts to identity links that have the time after the given time. | [optional] 
 **taskId** | **String**| Restricts to identity links that have the given task id. | [optional] 
 **processDefinitionId** | **String**| Restricts to identity links that have the given process definition id. | [optional] 
 **processDefinitionKey** | **String**| Restricts to identity links that have the given process definition key. | [optional] 
 **operationType** | **String**| Restricts to identity links that have the given operationType (add/delete). | [optional] 
 **assignerId** | **String**| Restricts to identity links that have the given assigner id. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include historic identity links that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

