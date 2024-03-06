# openapi.api.HistoricExternalTaskLogApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getErrorDetailsHistoricExternalTaskLog**](HistoricExternalTaskLogApi.md#geterrordetailshistoricexternaltasklog) | **GET** /history/external-task-log/{id}/error-details | Get External Task Log Error Details
[**getHistoricExternalTaskLog**](HistoricExternalTaskLogApi.md#gethistoricexternaltasklog) | **GET** /history/external-task-log/{id} | Get External Task Log
[**getHistoricExternalTaskLogs**](HistoricExternalTaskLogApi.md#gethistoricexternaltasklogs) | **GET** /history/external-task-log | Get External Task Logs
[**getHistoricExternalTaskLogsCount**](HistoricExternalTaskLogApi.md#gethistoricexternaltasklogscount) | **GET** /history/external-task-log/count | Get External Task Log Count
[**queryHistoricExternalTaskLogs**](HistoricExternalTaskLogApi.md#queryhistoricexternaltasklogs) | **POST** /history/external-task-log | Get External Task Logs (POST)
[**queryHistoricExternalTaskLogsCount**](HistoricExternalTaskLogApi.md#queryhistoricexternaltasklogscount) | **POST** /history/external-task-log/count | Get External Task Log Count (POST)


# **getErrorDetailsHistoricExternalTaskLog**
> Object getErrorDetailsHistoricExternalTaskLog(id)

Get External Task Log Error Details

Retrieves the corresponding error details of the passed historic external task log by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricExternalTaskLogApi();
final id = id_example; // String | The id of the historic external task log to get the error details for.

try {
    final result = api_instance.getErrorDetailsHistoricExternalTaskLog(id);
    print(result);
} catch (e) {
    print('Exception when calling HistoricExternalTaskLogApi->getErrorDetailsHistoricExternalTaskLog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the historic external task log to get the error details for. | 

### Return type

[**Object**](Object.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricExternalTaskLog**
> HistoricExternalTaskLogDto getHistoricExternalTaskLog(id)

Get External Task Log

Retrieves a historic external task log by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricExternalTaskLogApi();
final id = id_example; // String | The id of the log entry.

try {
    final result = api_instance.getHistoricExternalTaskLog(id);
    print(result);
} catch (e) {
    print('Exception when calling HistoricExternalTaskLogApi->getHistoricExternalTaskLog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the log entry. | 

### Return type

[**HistoricExternalTaskLogDto**](HistoricExternalTaskLogDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricExternalTaskLogs**
> List<HistoricExternalTaskLogDto> getHistoricExternalTaskLogs(logId, externalTaskId, topicName, workerId, errorMessage, activityIdIn, activityInstanceIdIn, executionIdIn, processInstanceId, processDefinitionId, processDefinitionKey, tenantIdIn, withoutTenantId, priorityLowerThanOrEquals, priorityHigherThanOrEquals, creationLog, failureLog, successLog, deletionLog, sortBy, sortOrder, firstResult, maxResults)

Get External Task Logs

Queries for historic external task logs that fulfill the given parameters. The size of the result set can be retrieved by using the [Get External Task Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/external-task-log/get-external-task-log-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricExternalTaskLogApi();
final logId = logId_example; // String | Filter by historic external task log id.
final externalTaskId = externalTaskId_example; // String | Filter by external task id.
final topicName = topicName_example; // String | Filter by an external task topic.
final workerId = workerId_example; // String | Filter by the id of the worker that the task was most recently locked by.
final errorMessage = errorMessage_example; // String | Filter by external task exception message.
final activityIdIn = activityIdIn_example; // String | Only include historic external task logs which belong to one of the passed activity ids.
final activityInstanceIdIn = activityInstanceIdIn_example; // String | Only include historic external task logs which belong to one of the passed activity instance ids.
final executionIdIn = executionIdIn_example; // String | Only include historic external task logs which belong to one of the passed execution ids.
final processInstanceId = processInstanceId_example; // String | Filter by process instance id.
final processDefinitionId = processDefinitionId_example; // String | Filter by process definition id.
final processDefinitionKey = processDefinitionKey_example; // String | Filter by process definition key.
final tenantIdIn = tenantIdIn_example; // String | Only include historic external task log entries which belong to one of the passed and comma-separated tenant ids.
final withoutTenantId = true; // bool | Only include historic external task log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final priorityLowerThanOrEquals = 789; // int | Only include logs for which the associated external task had a priority lower than or equal to the given value. Value must be a valid `long` value.
final priorityHigherThanOrEquals = 789; // int | Only include logs for which the associated external task had a priority higher than or equal to the given value. Value must be a valid `long` value.
final creationLog = true; // bool | Only include creation logs. Value may only be `true`, as `false` is the default behavior.
final failureLog = true; // bool | Only include failure logs. Value may only be `true`, as `false` is the default behavior.
final successLog = true; // bool | Only include success logs. Value may only be `true`, as `false` is the default behavior.
final deletionLog = true; // bool | Only include deletion logs. Value may only be `true`, as `false` is the default behavior.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getHistoricExternalTaskLogs(logId, externalTaskId, topicName, workerId, errorMessage, activityIdIn, activityInstanceIdIn, executionIdIn, processInstanceId, processDefinitionId, processDefinitionKey, tenantIdIn, withoutTenantId, priorityLowerThanOrEquals, priorityHigherThanOrEquals, creationLog, failureLog, successLog, deletionLog, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling HistoricExternalTaskLogApi->getHistoricExternalTaskLogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **logId** | **String**| Filter by historic external task log id. | [optional] 
 **externalTaskId** | **String**| Filter by external task id. | [optional] 
 **topicName** | **String**| Filter by an external task topic. | [optional] 
 **workerId** | **String**| Filter by the id of the worker that the task was most recently locked by. | [optional] 
 **errorMessage** | **String**| Filter by external task exception message. | [optional] 
 **activityIdIn** | **String**| Only include historic external task logs which belong to one of the passed activity ids. | [optional] 
 **activityInstanceIdIn** | **String**| Only include historic external task logs which belong to one of the passed activity instance ids. | [optional] 
 **executionIdIn** | **String**| Only include historic external task logs which belong to one of the passed execution ids. | [optional] 
 **processInstanceId** | **String**| Filter by process instance id. | [optional] 
 **processDefinitionId** | **String**| Filter by process definition id. | [optional] 
 **processDefinitionKey** | **String**| Filter by process definition key. | [optional] 
 **tenantIdIn** | **String**| Only include historic external task log entries which belong to one of the passed and comma-separated tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include historic external task log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **priorityLowerThanOrEquals** | **int**| Only include logs for which the associated external task had a priority lower than or equal to the given value. Value must be a valid `long` value. | [optional] 
 **priorityHigherThanOrEquals** | **int**| Only include logs for which the associated external task had a priority higher than or equal to the given value. Value must be a valid `long` value. | [optional] 
 **creationLog** | **bool**| Only include creation logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **failureLog** | **bool**| Only include failure logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **successLog** | **bool**| Only include success logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **deletionLog** | **bool**| Only include deletion logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<HistoricExternalTaskLogDto>**](HistoricExternalTaskLogDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricExternalTaskLogsCount**
> CountResultDto getHistoricExternalTaskLogsCount(logId, externalTaskId, topicName, workerId, errorMessage, activityIdIn, activityInstanceIdIn, executionIdIn, processInstanceId, processDefinitionId, processDefinitionKey, tenantIdIn, withoutTenantId, priorityLowerThanOrEquals, priorityHigherThanOrEquals, creationLog, failureLog, successLog, deletionLog)

Get External Task Log Count

Queries for the number of historic external task logs that fulfill the given parameters. Takes the same parameters as the [Get External Task Logs](https://docs.camunda.org/manual/7.20/reference/rest/history/external-task-log/get-external-task-log-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricExternalTaskLogApi();
final logId = logId_example; // String | Filter by historic external task log id.
final externalTaskId = externalTaskId_example; // String | Filter by external task id.
final topicName = topicName_example; // String | Filter by an external task topic.
final workerId = workerId_example; // String | Filter by the id of the worker that the task was most recently locked by.
final errorMessage = errorMessage_example; // String | Filter by external task exception message.
final activityIdIn = activityIdIn_example; // String | Only include historic external task logs which belong to one of the passed activity ids.
final activityInstanceIdIn = activityInstanceIdIn_example; // String | Only include historic external task logs which belong to one of the passed activity instance ids.
final executionIdIn = executionIdIn_example; // String | Only include historic external task logs which belong to one of the passed execution ids.
final processInstanceId = processInstanceId_example; // String | Filter by process instance id.
final processDefinitionId = processDefinitionId_example; // String | Filter by process definition id.
final processDefinitionKey = processDefinitionKey_example; // String | Filter by process definition key.
final tenantIdIn = tenantIdIn_example; // String | Only include historic external task log entries which belong to one of the passed and comma-separated tenant ids.
final withoutTenantId = true; // bool | Only include historic external task log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final priorityLowerThanOrEquals = 789; // int | Only include logs for which the associated external task had a priority lower than or equal to the given value. Value must be a valid `long` value.
final priorityHigherThanOrEquals = 789; // int | Only include logs for which the associated external task had a priority higher than or equal to the given value. Value must be a valid `long` value.
final creationLog = true; // bool | Only include creation logs. Value may only be `true`, as `false` is the default behavior.
final failureLog = true; // bool | Only include failure logs. Value may only be `true`, as `false` is the default behavior.
final successLog = true; // bool | Only include success logs. Value may only be `true`, as `false` is the default behavior.
final deletionLog = true; // bool | Only include deletion logs. Value may only be `true`, as `false` is the default behavior.

try {
    final result = api_instance.getHistoricExternalTaskLogsCount(logId, externalTaskId, topicName, workerId, errorMessage, activityIdIn, activityInstanceIdIn, executionIdIn, processInstanceId, processDefinitionId, processDefinitionKey, tenantIdIn, withoutTenantId, priorityLowerThanOrEquals, priorityHigherThanOrEquals, creationLog, failureLog, successLog, deletionLog);
    print(result);
} catch (e) {
    print('Exception when calling HistoricExternalTaskLogApi->getHistoricExternalTaskLogsCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **logId** | **String**| Filter by historic external task log id. | [optional] 
 **externalTaskId** | **String**| Filter by external task id. | [optional] 
 **topicName** | **String**| Filter by an external task topic. | [optional] 
 **workerId** | **String**| Filter by the id of the worker that the task was most recently locked by. | [optional] 
 **errorMessage** | **String**| Filter by external task exception message. | [optional] 
 **activityIdIn** | **String**| Only include historic external task logs which belong to one of the passed activity ids. | [optional] 
 **activityInstanceIdIn** | **String**| Only include historic external task logs which belong to one of the passed activity instance ids. | [optional] 
 **executionIdIn** | **String**| Only include historic external task logs which belong to one of the passed execution ids. | [optional] 
 **processInstanceId** | **String**| Filter by process instance id. | [optional] 
 **processDefinitionId** | **String**| Filter by process definition id. | [optional] 
 **processDefinitionKey** | **String**| Filter by process definition key. | [optional] 
 **tenantIdIn** | **String**| Only include historic external task log entries which belong to one of the passed and comma-separated tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include historic external task log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **priorityLowerThanOrEquals** | **int**| Only include logs for which the associated external task had a priority lower than or equal to the given value. Value must be a valid `long` value. | [optional] 
 **priorityHigherThanOrEquals** | **int**| Only include logs for which the associated external task had a priority higher than or equal to the given value. Value must be a valid `long` value. | [optional] 
 **creationLog** | **bool**| Only include creation logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **failureLog** | **bool**| Only include failure logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **successLog** | **bool**| Only include success logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **deletionLog** | **bool**| Only include deletion logs. Value may only be `true`, as `false` is the default behavior. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryHistoricExternalTaskLogs**
> List<HistoricExternalTaskLogDto> queryHistoricExternalTaskLogs(historicExternalTaskLogQueryDto)

Get External Task Logs (POST)

Queries for historic external task logs that fulfill the given parameters. This method is slightly more powerful than the [Get External Task Logs](https://docs.camunda.org/manual/7.20/reference/rest/history/external-task-log/get-external-task-log-query/) method because it allows filtering by historic external task logs values of the different types `String`, `Number` or `Boolean`.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricExternalTaskLogApi();
final historicExternalTaskLogQueryDto = HistoricExternalTaskLogQueryDto(); // HistoricExternalTaskLogQueryDto | 

try {
    final result = api_instance.queryHistoricExternalTaskLogs(historicExternalTaskLogQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling HistoricExternalTaskLogApi->queryHistoricExternalTaskLogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **historicExternalTaskLogQueryDto** | [**HistoricExternalTaskLogQueryDto**](HistoricExternalTaskLogQueryDto.md)|  | [optional] 

### Return type

[**List<HistoricExternalTaskLogDto>**](HistoricExternalTaskLogDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryHistoricExternalTaskLogsCount**
> CountResultDto queryHistoricExternalTaskLogsCount(historicExternalTaskLogQueryDto)

Get External Task Log Count (POST)

Queries for the number of historic external task logs that fulfill the given parameters. This method takes the same message body as the [Get External Task Logs (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/external-task-log/post-external-task-log-query/) method and therefore it is slightly more powerful than the [Get External Task Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/external-task-log/get-external-task-log-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricExternalTaskLogApi();
final historicExternalTaskLogQueryDto = HistoricExternalTaskLogQueryDto(); // HistoricExternalTaskLogQueryDto | 

try {
    final result = api_instance.queryHistoricExternalTaskLogsCount(historicExternalTaskLogQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling HistoricExternalTaskLogApi->queryHistoricExternalTaskLogsCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **historicExternalTaskLogQueryDto** | [**HistoricExternalTaskLogQueryDto**](HistoricExternalTaskLogQueryDto.md)|  | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

