# openapi.api.HistoricProcessDefinitionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCleanableHistoricProcessInstanceReport**](HistoricProcessDefinitionApi.md#getcleanablehistoricprocessinstancereport) | **GET** /history/process-definition/cleanable-process-instance-report | Get Cleanable Process Instance Report
[**getCleanableHistoricProcessInstanceReportCount**](HistoricProcessDefinitionApi.md#getcleanablehistoricprocessinstancereportcount) | **GET** /history/process-definition/cleanable-process-instance-report/count | Get Cleanable Process Instance Report Count
[**getHistoricActivityStatistics**](HistoricProcessDefinitionApi.md#gethistoricactivitystatistics) | **GET** /history/process-definition/{id}/statistics | Get Historic Activity Statistics


# **getCleanableHistoricProcessInstanceReport**
> List<CleanableHistoricProcessInstanceReportResultDto> getCleanableHistoricProcessInstanceReport(processDefinitionIdIn, processDefinitionKeyIn, tenantIdIn, withoutTenantId, compact, sortBy, sortOrder, firstResult, maxResults)

Get Cleanable Process Instance Report

Retrieves a report about a process definition and finished process instances relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup))  so that you can tune the history time to live. These reports include the count of the finished historic process instances, cleanable process instances and basic process definition data - id, key, name and version. The size of the result set can be retrieved by using the [Get Cleanable Process Instance Report Count](https://docs.camunda.org/manual/7.20/reference/rest/history/process-definition/get-cleanable-process-instance-report-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricProcessDefinitionApi();
final processDefinitionIdIn = processDefinitionIdIn_example; // String | Filter by process definition ids. Must be a comma-separated list of process definition ids.
final processDefinitionKeyIn = processDefinitionKeyIn_example; // String | Filter by process definition keys. Must be a comma-separated list of process definition keys.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. A process definition must have one of the given  tenant ids.
final withoutTenantId = true; // bool | Only include process definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final compact = true; // bool | Only include process instances which have more than zero finished instances. Value may only be `true`, as `false` is the default behavior.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getCleanableHistoricProcessInstanceReport(processDefinitionIdIn, processDefinitionKeyIn, tenantIdIn, withoutTenantId, compact, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling HistoricProcessDefinitionApi->getCleanableHistoricProcessInstanceReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **processDefinitionIdIn** | **String**| Filter by process definition ids. Must be a comma-separated list of process definition ids. | [optional] 
 **processDefinitionKeyIn** | **String**| Filter by process definition keys. Must be a comma-separated list of process definition keys. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. A process definition must have one of the given  tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include process definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **compact** | **bool**| Only include process instances which have more than zero finished instances. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<CleanableHistoricProcessInstanceReportResultDto>**](CleanableHistoricProcessInstanceReportResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCleanableHistoricProcessInstanceReportCount**
> CountResultDto getCleanableHistoricProcessInstanceReportCount(processDefinitionIdIn, processDefinitionKeyIn, tenantIdIn, withoutTenantId, compact)

Get Cleanable Process Instance Report Count

Queries for the number of report results about a process definition and finished process instances relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)). Takes the same parameters as the [Get Cleanable Process Instance Report](https://docs.camunda.org/manual/7.20/reference/rest/history/process-definition/get-cleanable-process-instance-report/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricProcessDefinitionApi();
final processDefinitionIdIn = processDefinitionIdIn_example; // String | Filter by process definition ids. Must be a comma-separated list of process definition ids.
final processDefinitionKeyIn = processDefinitionKeyIn_example; // String | Filter by process definition keys. Must be a comma-separated list of process definition keys.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. A process definition must have one of the given  tenant ids.
final withoutTenantId = true; // bool | Only include process definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final compact = true; // bool | Only include process instances which have more than zero finished instances. Value may only be `true`, as `false` is the default behavior.

try {
    final result = api_instance.getCleanableHistoricProcessInstanceReportCount(processDefinitionIdIn, processDefinitionKeyIn, tenantIdIn, withoutTenantId, compact);
    print(result);
} catch (e) {
    print('Exception when calling HistoricProcessDefinitionApi->getCleanableHistoricProcessInstanceReportCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **processDefinitionIdIn** | **String**| Filter by process definition ids. Must be a comma-separated list of process definition ids. | [optional] 
 **processDefinitionKeyIn** | **String**| Filter by process definition keys. Must be a comma-separated list of process definition keys. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. A process definition must have one of the given  tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include process definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **compact** | **bool**| Only include process instances which have more than zero finished instances. Value may only be `true`, as `false` is the default behavior. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricActivityStatistics**
> List<HistoricActivityStatisticsDto> getHistoricActivityStatistics(id, canceled, finished, completeScope, incidents, startedBefore, startedAfter, finishedBefore, finishedAfter, processInstanceIdIn, sortBy, sortOrder)

Get Historic Activity Statistics

Retrieves historic statistics of a given process definition, grouped by activities. These statistics include the number of running activity instances and, optionally, the number of canceled activity instances, finished activity instances and activity instances which completed a scope (i.e., in BPMN 2.0 manner: a scope is completed by an activity instance when the activity instance consumed a token but did not emit a new token). **Note:** This only includes historic data.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricProcessDefinitionApi();
final id = id_example; // String | The id of the process definition.
final canceled = true; // bool | Whether to include the number of canceled activity instances in the result or not. Valid values are `true` or `false`. Default: `false`.
final finished = true; // bool | Whether to include the number of finished activity instances in the result or not. Valid values are `true` or `false`. Default: `false`.
final completeScope = true; // bool | Whether to include the number of activity instances which completed a scope in the result or not. Valid values are `true` or `false`. Default: `false`.
final incidents = true; // bool | Whether to include the number of incidents. Valid values are `true` or `false`. Default: `false`.
final startedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to process instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/),  the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`,  e.g., `2013-01-23T14:42:45.000+0200`.
final startedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to process instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/),  the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`,  e.g., `2013-01-23T14:42:45.000+0200`.
final finishedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to process instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/),  the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`,  e.g., `2013-01-23T14:42:45.000+0200`.
final finishedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to process instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/),  the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`,  e.g., `2013-01-23T14:42:45.000+0200`.
final processInstanceIdIn = processInstanceIdIn_example; // String | Restrict to process instances with the given IDs. The IDs must be provided as a comma- separated list.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.

try {
    final result = api_instance.getHistoricActivityStatistics(id, canceled, finished, completeScope, incidents, startedBefore, startedAfter, finishedBefore, finishedAfter, processInstanceIdIn, sortBy, sortOrder);
    print(result);
} catch (e) {
    print('Exception when calling HistoricProcessDefinitionApi->getHistoricActivityStatistics: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process definition. | 
 **canceled** | **bool**| Whether to include the number of canceled activity instances in the result or not. Valid values are `true` or `false`. Default: `false`. | [optional] 
 **finished** | **bool**| Whether to include the number of finished activity instances in the result or not. Valid values are `true` or `false`. Default: `false`. | [optional] 
 **completeScope** | **bool**| Whether to include the number of activity instances which completed a scope in the result or not. Valid values are `true` or `false`. Default: `false`. | [optional] 
 **incidents** | **bool**| Whether to include the number of incidents. Valid values are `true` or `false`. Default: `false`. | [optional] 
 **startedBefore** | **DateTime**| Restrict to process instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/),  the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`,  e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **startedAfter** | **DateTime**| Restrict to process instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/),  the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`,  e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **finishedBefore** | **DateTime**| Restrict to process instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/),  the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`,  e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **finishedAfter** | **DateTime**| Restrict to process instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/),  the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`,  e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **processInstanceIdIn** | **String**| Restrict to process instances with the given IDs. The IDs must be provided as a comma- separated list. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 

### Return type

[**List<HistoricActivityStatisticsDto>**](HistoricActivityStatisticsDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

