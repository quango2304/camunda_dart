# openapi.api.HistoricProcessInstanceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteHistoricProcessInstance**](HistoricProcessInstanceApi.md#deletehistoricprocessinstance) | **DELETE** /history/process-instance/{id} | Delete
[**deleteHistoricProcessInstancesAsync**](HistoricProcessInstanceApi.md#deletehistoricprocessinstancesasync) | **POST** /history/process-instance/delete | Delete Async (POST)
[**deleteHistoricVariableInstancesOfHistoricProcessInstance**](HistoricProcessInstanceApi.md#deletehistoricvariableinstancesofhistoricprocessinstance) | **DELETE** /history/process-instance/{id}/variable-instances | Delete Variable Instances
[**getHistoricProcessInstance**](HistoricProcessInstanceApi.md#gethistoricprocessinstance) | **GET** /history/process-instance/{id} | Get
[**getHistoricProcessInstanceDurationReport**](HistoricProcessInstanceApi.md#gethistoricprocessinstancedurationreport) | **GET** /history/process-instance/report | Get Duration Report
[**getHistoricProcessInstances**](HistoricProcessInstanceApi.md#gethistoricprocessinstances) | **GET** /history/process-instance | Get List
[**getHistoricProcessInstancesCount**](HistoricProcessInstanceApi.md#gethistoricprocessinstancescount) | **GET** /history/process-instance/count | Get List Count
[**queryHistoricProcessInstances**](HistoricProcessInstanceApi.md#queryhistoricprocessinstances) | **POST** /history/process-instance | Get List (POST)
[**queryHistoricProcessInstancesCount**](HistoricProcessInstanceApi.md#queryhistoricprocessinstancescount) | **POST** /history/process-instance/count | Get List Count (POST)
[**setRemovalTimeAsync**](HistoricProcessInstanceApi.md#setremovaltimeasync) | **POST** /history/process-instance/set-removal-time | Set Removal Time Async (POST)


# **deleteHistoricProcessInstance**
> deleteHistoricProcessInstance(id, failIfNotExists)

Delete

Deletes a process instance from the history by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricProcessInstanceApi();
final id = id_example; // String | The id of the historic process instance to be deleted.
final failIfNotExists = true; // bool | If set to `false`, the request will still be successful if the process id is not found.

try {
    api_instance.deleteHistoricProcessInstance(id, failIfNotExists);
} catch (e) {
    print('Exception when calling HistoricProcessInstanceApi->deleteHistoricProcessInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the historic process instance to be deleted. | 
 **failIfNotExists** | **bool**| If set to `false`, the request will still be successful if the process id is not found. | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteHistoricProcessInstancesAsync**
> BatchDto deleteHistoricProcessInstancesAsync(deleteHistoricProcessInstancesDto)

Delete Async (POST)

Delete multiple historic process instances asynchronously (batch). At least `historicProcessInstanceIds` or `historicProcessInstanceQuery` has to be provided. If both are provided then all instances matching query criterion and instances from the list will be deleted.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricProcessInstanceApi();
final deleteHistoricProcessInstancesDto = DeleteHistoricProcessInstancesDto(); // DeleteHistoricProcessInstancesDto | 

try {
    final result = api_instance.deleteHistoricProcessInstancesAsync(deleteHistoricProcessInstancesDto);
    print(result);
} catch (e) {
    print('Exception when calling HistoricProcessInstanceApi->deleteHistoricProcessInstancesAsync: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteHistoricProcessInstancesDto** | [**DeleteHistoricProcessInstancesDto**](DeleteHistoricProcessInstancesDto.md)|  | [optional] 

### Return type

[**BatchDto**](BatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteHistoricVariableInstancesOfHistoricProcessInstance**
> deleteHistoricVariableInstancesOfHistoricProcessInstance(id)

Delete Variable Instances

Deletes all variables of a process instance from the history by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricProcessInstanceApi();
final id = id_example; // String | The id of the process instance for which all historic variables are to be deleted.

try {
    api_instance.deleteHistoricVariableInstancesOfHistoricProcessInstance(id);
} catch (e) {
    print('Exception when calling HistoricProcessInstanceApi->deleteHistoricVariableInstancesOfHistoricProcessInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process instance for which all historic variables are to be deleted. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricProcessInstance**
> HistoricProcessInstanceDto getHistoricProcessInstance(id)

Get

Retrieves a historic process instance by id, according to the `HistoricProcessInstance` interface in the engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricProcessInstanceApi();
final id = id_example; // String | The id of the historic process instance to be retrieved.

try {
    final result = api_instance.getHistoricProcessInstance(id);
    print(result);
} catch (e) {
    print('Exception when calling HistoricProcessInstanceApi->getHistoricProcessInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the historic process instance to be retrieved. | 

### Return type

[**HistoricProcessInstanceDto**](HistoricProcessInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricProcessInstanceDurationReport**
> List<DurationReportResultDto> getHistoricProcessInstanceDurationReport(reportType, periodUnit, processDefinitionIdIn, processDefinitionKeyIn, startedBefore, startedAfter)

Get Duration Report

Retrieves a report about the duration of completed process instances, grouped by a period. These reports include the maximum, minimum and average duration of all completed process instances which were started in a given period.  **Note:** This only includes historic data.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricProcessInstanceApi();
final reportType = reportType_example; // String | **Mandatory.** Specifies the type of the report to retrieve. To retrieve a report about the duration of process instances, the value must be set to `duration`.
final periodUnit = periodUnit_example; // String | **Mandatory.** Specifies the granularity of the report. Valid values are `month` and `quarter`.
final processDefinitionIdIn = processDefinitionIdIn_example; // String | Filter by process definition ids. Must be a comma-separated list of process definition ids.
final processDefinitionKeyIn = processDefinitionKeyIn_example; // String | Filter by process definition keys. Must be a comma-separated list of process definition keys.
final startedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were started before the given date. By [default](), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2016-01-23T14:42:45.000+0200`.
final startedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2016-01-23T14:42:45.000+0200`.

try {
    final result = api_instance.getHistoricProcessInstanceDurationReport(reportType, periodUnit, processDefinitionIdIn, processDefinitionKeyIn, startedBefore, startedAfter);
    print(result);
} catch (e) {
    print('Exception when calling HistoricProcessInstanceApi->getHistoricProcessInstanceDurationReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reportType** | **String**| **Mandatory.** Specifies the type of the report to retrieve. To retrieve a report about the duration of process instances, the value must be set to `duration`. | 
 **periodUnit** | **String**| **Mandatory.** Specifies the granularity of the report. Valid values are `month` and `quarter`. | 
 **processDefinitionIdIn** | **String**| Filter by process definition ids. Must be a comma-separated list of process definition ids. | [optional] 
 **processDefinitionKeyIn** | **String**| Filter by process definition keys. Must be a comma-separated list of process definition keys. | [optional] 
 **startedBefore** | **DateTime**| Restrict to instances that were started before the given date. By [default](), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2016-01-23T14:42:45.000+0200`. | [optional] 
 **startedAfter** | **DateTime**| Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2016-01-23T14:42:45.000+0200`. | [optional] 

### Return type

[**List<DurationReportResultDto>**](DurationReportResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/csv, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricProcessInstances**
> List<HistoricProcessInstanceDto> getHistoricProcessInstances(sortBy, sortOrder, firstResult, maxResults, processInstanceId, processInstanceIds, processDefinitionId, processDefinitionKey, processDefinitionKeyIn, processDefinitionName, processDefinitionNameLike, processDefinitionKeyNotIn, processInstanceBusinessKey, processInstanceBusinessKeyIn, processInstanceBusinessKeyLike, rootProcessInstances, finished, unfinished, withIncidents, withRootIncidents, incidentType, incidentStatus, incidentMessage, incidentMessageLike, startedBefore, startedAfter, finishedBefore, finishedAfter, executedActivityAfter, executedActivityBefore, executedJobAfter, executedJobBefore, startedBy, superProcessInstanceId, subProcessInstanceId, superCaseInstanceId, subCaseInstanceId, caseInstanceId, tenantIdIn, withoutTenantId, executedActivityIdIn, activeActivityIdIn, active, suspended, completed, externallyTerminated, internallyTerminated, variables, variableNamesIgnoreCase, variableValuesIgnoreCase)

Get List

Queries for historic process instances that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Process Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/process-instance/get-process-instance-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricProcessInstanceApi();
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final processInstanceId = processInstanceId_example; // String | Filter by process instance id.
final processInstanceIds = processInstanceIds_example; // String | Filter by process instance ids. Filter by a comma-separated list of `Strings`.
final processDefinitionId = processDefinitionId_example; // String | Filter by the process definition the instances run on.
final processDefinitionKey = processDefinitionKey_example; // String | Filter by the key of the process definition the instances run on.
final processDefinitionKeyIn = processDefinitionKeyIn_example; // String | Filter by a list of process definition keys. A process instance must have one of the given process definition keys. Filter by a comma-separated list of `Strings`.
final processDefinitionName = processDefinitionName_example; // String | Filter by the name of the process definition the instances run on.
final processDefinitionNameLike = processDefinitionNameLike_example; // String | Filter by process definition names that the parameter is a substring of.
final processDefinitionKeyNotIn = processDefinitionKeyNotIn_example; // String | Exclude instances that belong to a set of process definitions. Filter by a comma-separated list of `Strings`.
final processInstanceBusinessKey = processInstanceBusinessKey_example; // String | Filter by process instance business key.
final processInstanceBusinessKeyIn = processInstanceBusinessKeyIn_example; // String | Filter by a list of business keys. A process instance must have one of the given business keys. Filter by a comma-separated list of `Strings`
final processInstanceBusinessKeyLike = processInstanceBusinessKeyLike_example; // String | Filter by process instance business key that the parameter is a substring of.
final rootProcessInstances = true; // bool | Restrict the query to all process instances that are top level process instances.
final finished = true; // bool | Only include finished process instances. This flag includes all process instances that are completed or terminated. Value may only be `true`, as `false` is the default behavior.
final unfinished = true; // bool | Only include unfinished process instances. Value may only be `true`, as `false` is the default behavior.
final withIncidents = true; // bool | Only include process instances which have an incident. Value may only be `true`, as `false` is the default behavior.
final withRootIncidents = true; // bool | Only include process instances which have a root incident. Value may only be `true`, as `false` is the default behavior.
final incidentType = incidentType_example; // String | Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
final incidentStatus = incidentStatus_example; // String | Only include process instances which have an incident in status either open or resolved. To get all process instances, use the query parameter withIncidents.
final incidentMessage = incidentMessage_example; // String | Filter by the incident message. Exact match.
final incidentMessageLike = incidentMessageLike_example; // String | Filter by the incident message that the parameter is a substring of.
final startedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final startedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final finishedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final finishedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final executedActivityAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that executed an activity after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final executedActivityBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that executed an activity before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final executedJobAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that executed an job after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final executedJobBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that executed an job before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final startedBy = startedBy_example; // String | Only include process instances that were started by the given user.
final superProcessInstanceId = superProcessInstanceId_example; // String | Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id.
final subProcessInstanceId = subProcessInstanceId_example; // String | Restrict query to one process instance that has a sub process instance with the given id.
final superCaseInstanceId = superCaseInstanceId_example; // String | Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
final subCaseInstanceId = subCaseInstanceId_example; // String | Restrict query to one process instance that has a sub case instance with the given id.
final caseInstanceId = caseInstanceId_example; // String | Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
final tenantIdIn = tenantIdIn_example; // String | Filter by a list of tenant ids. A process instance must have one of the given tenant ids. Filter by a comma-separated list of `Strings`
final withoutTenantId = true; // bool | Only include historic process instances which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final executedActivityIdIn = executedActivityIdIn_example; // String | Restrict to instances that executed an activity with one of given ids. Filter by a comma-separated list of `Strings`
final activeActivityIdIn = activeActivityIdIn_example; // String | Restrict to instances that have an active activity with one of given ids. Filter by a comma-separated list of `Strings`
final active = true; // bool | Restrict to instances that are active.
final suspended = true; // bool | Restrict to instances that are suspended.
final completed = true; // bool | Restrict to instances that are completed.
final externallyTerminated = true; // bool | Restrict to instances that are externallyTerminated.
final internallyTerminated = true; // bool | Restrict to instances that are internallyTerminated.
final variables = variables_example; // String | Only include process instances that have/had variables with certain values. Variable filtering expressions are comma-separated and are structured as follows: A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note:** Values are always treated as String objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`.  Key and value may not contain underscore or comma characters. 
final variableNamesIgnoreCase = true; // bool | Match all variable names provided in variables case-insensitively. If set to `true` variableName and variablename are treated as equal.
final variableValuesIgnoreCase = true; // bool | Match all variable values provided in variables case-insensitively. If set to `true` variableValue and variablevalue are treated as equal.

try {
    final result = api_instance.getHistoricProcessInstances(sortBy, sortOrder, firstResult, maxResults, processInstanceId, processInstanceIds, processDefinitionId, processDefinitionKey, processDefinitionKeyIn, processDefinitionName, processDefinitionNameLike, processDefinitionKeyNotIn, processInstanceBusinessKey, processInstanceBusinessKeyIn, processInstanceBusinessKeyLike, rootProcessInstances, finished, unfinished, withIncidents, withRootIncidents, incidentType, incidentStatus, incidentMessage, incidentMessageLike, startedBefore, startedAfter, finishedBefore, finishedAfter, executedActivityAfter, executedActivityBefore, executedJobAfter, executedJobBefore, startedBy, superProcessInstanceId, subProcessInstanceId, superCaseInstanceId, subCaseInstanceId, caseInstanceId, tenantIdIn, withoutTenantId, executedActivityIdIn, activeActivityIdIn, active, suspended, completed, externallyTerminated, internallyTerminated, variables, variableNamesIgnoreCase, variableValuesIgnoreCase);
    print(result);
} catch (e) {
    print('Exception when calling HistoricProcessInstanceApi->getHistoricProcessInstances: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **processInstanceId** | **String**| Filter by process instance id. | [optional] 
 **processInstanceIds** | **String**| Filter by process instance ids. Filter by a comma-separated list of `Strings`. | [optional] 
 **processDefinitionId** | **String**| Filter by the process definition the instances run on. | [optional] 
 **processDefinitionKey** | **String**| Filter by the key of the process definition the instances run on. | [optional] 
 **processDefinitionKeyIn** | **String**| Filter by a list of process definition keys. A process instance must have one of the given process definition keys. Filter by a comma-separated list of `Strings`. | [optional] 
 **processDefinitionName** | **String**| Filter by the name of the process definition the instances run on. | [optional] 
 **processDefinitionNameLike** | **String**| Filter by process definition names that the parameter is a substring of. | [optional] 
 **processDefinitionKeyNotIn** | **String**| Exclude instances that belong to a set of process definitions. Filter by a comma-separated list of `Strings`. | [optional] 
 **processInstanceBusinessKey** | **String**| Filter by process instance business key. | [optional] 
 **processInstanceBusinessKeyIn** | **String**| Filter by a list of business keys. A process instance must have one of the given business keys. Filter by a comma-separated list of `Strings` | [optional] 
 **processInstanceBusinessKeyLike** | **String**| Filter by process instance business key that the parameter is a substring of. | [optional] 
 **rootProcessInstances** | **bool**| Restrict the query to all process instances that are top level process instances. | [optional] 
 **finished** | **bool**| Only include finished process instances. This flag includes all process instances that are completed or terminated. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **unfinished** | **bool**| Only include unfinished process instances. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **withIncidents** | **bool**| Only include process instances which have an incident. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **withRootIncidents** | **bool**| Only include process instances which have a root incident. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **incidentType** | **String**| Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types. | [optional] 
 **incidentStatus** | **String**| Only include process instances which have an incident in status either open or resolved. To get all process instances, use the query parameter withIncidents. | [optional] 
 **incidentMessage** | **String**| Filter by the incident message. Exact match. | [optional] 
 **incidentMessageLike** | **String**| Filter by the incident message that the parameter is a substring of. | [optional] 
 **startedBefore** | **DateTime**| Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **startedAfter** | **DateTime**| Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **finishedBefore** | **DateTime**| Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **finishedAfter** | **DateTime**| Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **executedActivityAfter** | **DateTime**| Restrict to instances that executed an activity after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **executedActivityBefore** | **DateTime**| Restrict to instances that executed an activity before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **executedJobAfter** | **DateTime**| Restrict to instances that executed an job after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **executedJobBefore** | **DateTime**| Restrict to instances that executed an job before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **startedBy** | **String**| Only include process instances that were started by the given user. | [optional] 
 **superProcessInstanceId** | **String**| Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id. | [optional] 
 **subProcessInstanceId** | **String**| Restrict query to one process instance that has a sub process instance with the given id. | [optional] 
 **superCaseInstanceId** | **String**| Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id. | [optional] 
 **subCaseInstanceId** | **String**| Restrict query to one process instance that has a sub case instance with the given id. | [optional] 
 **caseInstanceId** | **String**| Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id. | [optional] 
 **tenantIdIn** | **String**| Filter by a list of tenant ids. A process instance must have one of the given tenant ids. Filter by a comma-separated list of `Strings` | [optional] 
 **withoutTenantId** | **bool**| Only include historic process instances which belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **executedActivityIdIn** | **String**| Restrict to instances that executed an activity with one of given ids. Filter by a comma-separated list of `Strings` | [optional] 
 **activeActivityIdIn** | **String**| Restrict to instances that have an active activity with one of given ids. Filter by a comma-separated list of `Strings` | [optional] 
 **active** | **bool**| Restrict to instances that are active. | [optional] 
 **suspended** | **bool**| Restrict to instances that are suspended. | [optional] 
 **completed** | **bool**| Restrict to instances that are completed. | [optional] 
 **externallyTerminated** | **bool**| Restrict to instances that are externallyTerminated. | [optional] 
 **internallyTerminated** | **bool**| Restrict to instances that are internallyTerminated. | [optional] 
 **variables** | **String**| Only include process instances that have/had variables with certain values. Variable filtering expressions are comma-separated and are structured as follows: A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note:** Values are always treated as String objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`.  Key and value may not contain underscore or comma characters.  | [optional] 
 **variableNamesIgnoreCase** | **bool**| Match all variable names provided in variables case-insensitively. If set to `true` variableName and variablename are treated as equal. | [optional] 
 **variableValuesIgnoreCase** | **bool**| Match all variable values provided in variables case-insensitively. If set to `true` variableValue and variablevalue are treated as equal. | [optional] 

### Return type

[**List<HistoricProcessInstanceDto>**](HistoricProcessInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricProcessInstancesCount**
> CountResultDto getHistoricProcessInstancesCount(processInstanceId, processInstanceIds, processDefinitionId, processDefinitionKey, processDefinitionKeyIn, processDefinitionName, processDefinitionNameLike, processDefinitionKeyNotIn, processInstanceBusinessKey, processInstanceBusinessKeyIn, processInstanceBusinessKeyLike, rootProcessInstances, finished, unfinished, withIncidents, withRootIncidents, incidentType, incidentStatus, incidentMessage, incidentMessageLike, startedBefore, startedAfter, finishedBefore, finishedAfter, executedActivityAfter, executedActivityBefore, executedJobAfter, executedJobBefore, startedBy, superProcessInstanceId, subProcessInstanceId, superCaseInstanceId, subCaseInstanceId, caseInstanceId, tenantIdIn, withoutTenantId, executedActivityIdIn, activeActivityIdIn, active, suspended, completed, externallyTerminated, internallyTerminated, variables, variableNamesIgnoreCase, variableValuesIgnoreCase)

Get List Count

Queries for the number of historic process instances that fulfill the given parameters. Takes the same parameters as the [Get Process Instances](https://docs.camunda.org/manual/7.20/reference/rest/history/process-instance/get-process-instance-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricProcessInstanceApi();
final processInstanceId = processInstanceId_example; // String | Filter by process instance id.
final processInstanceIds = processInstanceIds_example; // String | Filter by process instance ids. Filter by a comma-separated list of `Strings`.
final processDefinitionId = processDefinitionId_example; // String | Filter by the process definition the instances run on.
final processDefinitionKey = processDefinitionKey_example; // String | Filter by the key of the process definition the instances run on.
final processDefinitionKeyIn = processDefinitionKeyIn_example; // String | Filter by a list of process definition keys. A process instance must have one of the given process definition keys. Filter by a comma-separated list of `Strings`.
final processDefinitionName = processDefinitionName_example; // String | Filter by the name of the process definition the instances run on.
final processDefinitionNameLike = processDefinitionNameLike_example; // String | Filter by process definition names that the parameter is a substring of.
final processDefinitionKeyNotIn = processDefinitionKeyNotIn_example; // String | Exclude instances that belong to a set of process definitions. Filter by a comma-separated list of `Strings`.
final processInstanceBusinessKey = processInstanceBusinessKey_example; // String | Filter by process instance business key.
final processInstanceBusinessKeyIn = processInstanceBusinessKeyIn_example; // String | Filter by a list of business keys. A process instance must have one of the given business keys. Filter by a comma-separated list of `Strings`
final processInstanceBusinessKeyLike = processInstanceBusinessKeyLike_example; // String | Filter by process instance business key that the parameter is a substring of.
final rootProcessInstances = true; // bool | Restrict the query to all process instances that are top level process instances.
final finished = true; // bool | Only include finished process instances. This flag includes all process instances that are completed or terminated. Value may only be `true`, as `false` is the default behavior.
final unfinished = true; // bool | Only include unfinished process instances. Value may only be `true`, as `false` is the default behavior.
final withIncidents = true; // bool | Only include process instances which have an incident. Value may only be `true`, as `false` is the default behavior.
final withRootIncidents = true; // bool | Only include process instances which have a root incident. Value may only be `true`, as `false` is the default behavior.
final incidentType = incidentType_example; // String | Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
final incidentStatus = incidentStatus_example; // String | Only include process instances which have an incident in status either open or resolved. To get all process instances, use the query parameter withIncidents.
final incidentMessage = incidentMessage_example; // String | Filter by the incident message. Exact match.
final incidentMessageLike = incidentMessageLike_example; // String | Filter by the incident message that the parameter is a substring of.
final startedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final startedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final finishedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final finishedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final executedActivityAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that executed an activity after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final executedActivityBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that executed an activity before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final executedJobAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that executed an job after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final executedJobBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that executed an job before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final startedBy = startedBy_example; // String | Only include process instances that were started by the given user.
final superProcessInstanceId = superProcessInstanceId_example; // String | Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id.
final subProcessInstanceId = subProcessInstanceId_example; // String | Restrict query to one process instance that has a sub process instance with the given id.
final superCaseInstanceId = superCaseInstanceId_example; // String | Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
final subCaseInstanceId = subCaseInstanceId_example; // String | Restrict query to one process instance that has a sub case instance with the given id.
final caseInstanceId = caseInstanceId_example; // String | Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
final tenantIdIn = tenantIdIn_example; // String | Filter by a list of tenant ids. A process instance must have one of the given tenant ids. Filter by a comma-separated list of `Strings`
final withoutTenantId = true; // bool | Only include historic process instances which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final executedActivityIdIn = executedActivityIdIn_example; // String | Restrict to instances that executed an activity with one of given ids. Filter by a comma-separated list of `Strings`
final activeActivityIdIn = activeActivityIdIn_example; // String | Restrict to instances that have an active activity with one of given ids. Filter by a comma-separated list of `Strings`
final active = true; // bool | Restrict to instances that are active.
final suspended = true; // bool | Restrict to instances that are suspended.
final completed = true; // bool | Restrict to instances that are completed.
final externallyTerminated = true; // bool | Restrict to instances that are externallyTerminated.
final internallyTerminated = true; // bool | Restrict to instances that are internallyTerminated.
final variables = variables_example; // String | Only include process instances that have/had variables with certain values. Variable filtering expressions are comma-separated and are structured as follows: A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note:** Values are always treated as String objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`.  Key and value may not contain underscore or comma characters. 
final variableNamesIgnoreCase = true; // bool | Match all variable names provided in variables case-insensitively. If set to `true` variableName and variablename are treated as equal.
final variableValuesIgnoreCase = true; // bool | Match all variable values provided in variables case-insensitively. If set to `true` variableValue and variablevalue are treated as equal.

try {
    final result = api_instance.getHistoricProcessInstancesCount(processInstanceId, processInstanceIds, processDefinitionId, processDefinitionKey, processDefinitionKeyIn, processDefinitionName, processDefinitionNameLike, processDefinitionKeyNotIn, processInstanceBusinessKey, processInstanceBusinessKeyIn, processInstanceBusinessKeyLike, rootProcessInstances, finished, unfinished, withIncidents, withRootIncidents, incidentType, incidentStatus, incidentMessage, incidentMessageLike, startedBefore, startedAfter, finishedBefore, finishedAfter, executedActivityAfter, executedActivityBefore, executedJobAfter, executedJobBefore, startedBy, superProcessInstanceId, subProcessInstanceId, superCaseInstanceId, subCaseInstanceId, caseInstanceId, tenantIdIn, withoutTenantId, executedActivityIdIn, activeActivityIdIn, active, suspended, completed, externallyTerminated, internallyTerminated, variables, variableNamesIgnoreCase, variableValuesIgnoreCase);
    print(result);
} catch (e) {
    print('Exception when calling HistoricProcessInstanceApi->getHistoricProcessInstancesCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **processInstanceId** | **String**| Filter by process instance id. | [optional] 
 **processInstanceIds** | **String**| Filter by process instance ids. Filter by a comma-separated list of `Strings`. | [optional] 
 **processDefinitionId** | **String**| Filter by the process definition the instances run on. | [optional] 
 **processDefinitionKey** | **String**| Filter by the key of the process definition the instances run on. | [optional] 
 **processDefinitionKeyIn** | **String**| Filter by a list of process definition keys. A process instance must have one of the given process definition keys. Filter by a comma-separated list of `Strings`. | [optional] 
 **processDefinitionName** | **String**| Filter by the name of the process definition the instances run on. | [optional] 
 **processDefinitionNameLike** | **String**| Filter by process definition names that the parameter is a substring of. | [optional] 
 **processDefinitionKeyNotIn** | **String**| Exclude instances that belong to a set of process definitions. Filter by a comma-separated list of `Strings`. | [optional] 
 **processInstanceBusinessKey** | **String**| Filter by process instance business key. | [optional] 
 **processInstanceBusinessKeyIn** | **String**| Filter by a list of business keys. A process instance must have one of the given business keys. Filter by a comma-separated list of `Strings` | [optional] 
 **processInstanceBusinessKeyLike** | **String**| Filter by process instance business key that the parameter is a substring of. | [optional] 
 **rootProcessInstances** | **bool**| Restrict the query to all process instances that are top level process instances. | [optional] 
 **finished** | **bool**| Only include finished process instances. This flag includes all process instances that are completed or terminated. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **unfinished** | **bool**| Only include unfinished process instances. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **withIncidents** | **bool**| Only include process instances which have an incident. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **withRootIncidents** | **bool**| Only include process instances which have a root incident. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **incidentType** | **String**| Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types. | [optional] 
 **incidentStatus** | **String**| Only include process instances which have an incident in status either open or resolved. To get all process instances, use the query parameter withIncidents. | [optional] 
 **incidentMessage** | **String**| Filter by the incident message. Exact match. | [optional] 
 **incidentMessageLike** | **String**| Filter by the incident message that the parameter is a substring of. | [optional] 
 **startedBefore** | **DateTime**| Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **startedAfter** | **DateTime**| Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **finishedBefore** | **DateTime**| Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **finishedAfter** | **DateTime**| Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **executedActivityAfter** | **DateTime**| Restrict to instances that executed an activity after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **executedActivityBefore** | **DateTime**| Restrict to instances that executed an activity before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **executedJobAfter** | **DateTime**| Restrict to instances that executed an job after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **executedJobBefore** | **DateTime**| Restrict to instances that executed an job before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **startedBy** | **String**| Only include process instances that were started by the given user. | [optional] 
 **superProcessInstanceId** | **String**| Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id. | [optional] 
 **subProcessInstanceId** | **String**| Restrict query to one process instance that has a sub process instance with the given id. | [optional] 
 **superCaseInstanceId** | **String**| Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id. | [optional] 
 **subCaseInstanceId** | **String**| Restrict query to one process instance that has a sub case instance with the given id. | [optional] 
 **caseInstanceId** | **String**| Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id. | [optional] 
 **tenantIdIn** | **String**| Filter by a list of tenant ids. A process instance must have one of the given tenant ids. Filter by a comma-separated list of `Strings` | [optional] 
 **withoutTenantId** | **bool**| Only include historic process instances which belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **executedActivityIdIn** | **String**| Restrict to instances that executed an activity with one of given ids. Filter by a comma-separated list of `Strings` | [optional] 
 **activeActivityIdIn** | **String**| Restrict to instances that have an active activity with one of given ids. Filter by a comma-separated list of `Strings` | [optional] 
 **active** | **bool**| Restrict to instances that are active. | [optional] 
 **suspended** | **bool**| Restrict to instances that are suspended. | [optional] 
 **completed** | **bool**| Restrict to instances that are completed. | [optional] 
 **externallyTerminated** | **bool**| Restrict to instances that are externallyTerminated. | [optional] 
 **internallyTerminated** | **bool**| Restrict to instances that are internallyTerminated. | [optional] 
 **variables** | **String**| Only include process instances that have/had variables with certain values. Variable filtering expressions are comma-separated and are structured as follows: A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note:** Values are always treated as String objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`.  Key and value may not contain underscore or comma characters.  | [optional] 
 **variableNamesIgnoreCase** | **bool**| Match all variable names provided in variables case-insensitively. If set to `true` variableName and variablename are treated as equal. | [optional] 
 **variableValuesIgnoreCase** | **bool**| Match all variable values provided in variables case-insensitively. If set to `true` variableValue and variablevalue are treated as equal. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryHistoricProcessInstances**
> List<HistoricProcessInstanceDto> queryHistoricProcessInstances(firstResult, maxResults, historicProcessInstanceQueryDto)

Get List (POST)

Queries for historic process instances that fulfill the given parameters. This method is slightly more powerful than the [Get Process Instance](https://docs.camunda.org/manual/7.20/reference/rest/history/process-instance/get-process-instance-query/) because it allows filtering by multiple process variables of types `String`, `Number` or `Boolean`.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricProcessInstanceApi();
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final historicProcessInstanceQueryDto = HistoricProcessInstanceQueryDto(); // HistoricProcessInstanceQueryDto | 

try {
    final result = api_instance.queryHistoricProcessInstances(firstResult, maxResults, historicProcessInstanceQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling HistoricProcessInstanceApi->queryHistoricProcessInstances: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **historicProcessInstanceQueryDto** | [**HistoricProcessInstanceQueryDto**](HistoricProcessInstanceQueryDto.md)|  | [optional] 

### Return type

[**List<HistoricProcessInstanceDto>**](HistoricProcessInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryHistoricProcessInstancesCount**
> CountResultDto queryHistoricProcessInstancesCount(historicProcessInstanceQueryDto)

Get List Count (POST)

Queries for the number of historic process instances that fulfill the given parameters. This method takes the same message body as the [Get Process Instances (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/process-instance/get-process-instance-query/) method and therefore it is slightly more powerful than the [Get Process Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/process-instance/post-process-instance-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricProcessInstanceApi();
final historicProcessInstanceQueryDto = HistoricProcessInstanceQueryDto(); // HistoricProcessInstanceQueryDto | 

try {
    final result = api_instance.queryHistoricProcessInstancesCount(historicProcessInstanceQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling HistoricProcessInstanceApi->queryHistoricProcessInstancesCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **historicProcessInstanceQueryDto** | [**HistoricProcessInstanceQueryDto**](HistoricProcessInstanceQueryDto.md)|  | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setRemovalTimeAsync**
> BatchDto setRemovalTimeAsync(setRemovalTimeToHistoricProcessInstancesDto)

Set Removal Time Async (POST)

Sets the removal time to multiple historic process instances asynchronously (batch).  At least `historicProcessInstanceIds` or `historicProcessInstanceQuery` has to be provided. If both are provided, all instances matching query criterion and instances from the list will be updated with a removal time.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricProcessInstanceApi();
final setRemovalTimeToHistoricProcessInstancesDto = SetRemovalTimeToHistoricProcessInstancesDto(); // SetRemovalTimeToHistoricProcessInstancesDto | 

try {
    final result = api_instance.setRemovalTimeAsync(setRemovalTimeToHistoricProcessInstancesDto);
    print(result);
} catch (e) {
    print('Exception when calling HistoricProcessInstanceApi->setRemovalTimeAsync: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setRemovalTimeToHistoricProcessInstancesDto** | [**SetRemovalTimeToHistoricProcessInstancesDto**](SetRemovalTimeToHistoricProcessInstancesDto.md)|  | [optional] 

### Return type

[**BatchDto**](BatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

