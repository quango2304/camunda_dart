# openapi.api.ExternalTaskApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**completeExternalTaskResource**](ExternalTaskApi.md#completeexternaltaskresource) | **POST** /external-task/{id}/complete | Complete
[**extendLock**](ExternalTaskApi.md#extendlock) | **POST** /external-task/{id}/extendLock | Extend Lock
[**fetchAndLock**](ExternalTaskApi.md#fetchandlock) | **POST** /external-task/fetchAndLock | Fetch and Lock
[**getExternalTask**](ExternalTaskApi.md#getexternaltask) | **GET** /external-task/{id} | Get
[**getExternalTaskErrorDetails**](ExternalTaskApi.md#getexternaltaskerrordetails) | **GET** /external-task/{id}/errorDetails | Get Error Details
[**getExternalTasks**](ExternalTaskApi.md#getexternaltasks) | **GET** /external-task | Get List
[**getExternalTasksCount**](ExternalTaskApi.md#getexternaltaskscount) | **GET** /external-task/count | Get List Count
[**getTopicNames**](ExternalTaskApi.md#gettopicnames) | **GET** /external-task/topic-names | Get External Task Topic Names
[**handleExternalTaskBpmnError**](ExternalTaskApi.md#handleexternaltaskbpmnerror) | **POST** /external-task/{id}/bpmnError | Handle BPMN Error
[**handleFailure**](ExternalTaskApi.md#handlefailure) | **POST** /external-task/{id}/failure | Handle Failure
[**lock**](ExternalTaskApi.md#lock) | **POST** /external-task/{id}/lock | 
[**queryExternalTasks**](ExternalTaskApi.md#queryexternaltasks) | **POST** /external-task | Get List (POST)
[**queryExternalTasksCount**](ExternalTaskApi.md#queryexternaltaskscount) | **POST** /external-task/count | Get List Count (POST)
[**setExternalTaskResourcePriority**](ExternalTaskApi.md#setexternaltaskresourcepriority) | **PUT** /external-task/{id}/priority | Set Priority
[**setExternalTaskResourceRetries**](ExternalTaskApi.md#setexternaltaskresourceretries) | **PUT** /external-task/{id}/retries | Set Retries
[**setExternalTaskRetries**](ExternalTaskApi.md#setexternaltaskretries) | **PUT** /external-task/retries | Set Retries Sync
[**setExternalTaskRetriesAsyncOperation**](ExternalTaskApi.md#setexternaltaskretriesasyncoperation) | **POST** /external-task/retries-async | Set Retries Async
[**unlock**](ExternalTaskApi.md#unlock) | **POST** /external-task/{id}/unlock | Unlock


# **completeExternalTaskResource**
> completeExternalTaskResource(id, completeExternalTaskDto)

Complete

Completes an external task by id and updates process variables.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExternalTaskApi();
final id = id_example; // String | The id of the task to complete.
final completeExternalTaskDto = CompleteExternalTaskDto(); // CompleteExternalTaskDto | 

try {
    api_instance.completeExternalTaskResource(id, completeExternalTaskDto);
} catch (e) {
    print('Exception when calling ExternalTaskApi->completeExternalTaskResource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task to complete. | 
 **completeExternalTaskDto** | [**CompleteExternalTaskDto**](CompleteExternalTaskDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extendLock**
> extendLock(id, extendLockOnExternalTaskDto)

Extend Lock

Extends the timeout of the lock by a given amount of time.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExternalTaskApi();
final id = id_example; // String | The id of the external task.
final extendLockOnExternalTaskDto = ExtendLockOnExternalTaskDto(); // ExtendLockOnExternalTaskDto | 

try {
    api_instance.extendLock(id, extendLockOnExternalTaskDto);
} catch (e) {
    print('Exception when calling ExternalTaskApi->extendLock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the external task. | 
 **extendLockOnExternalTaskDto** | [**ExtendLockOnExternalTaskDto**](ExtendLockOnExternalTaskDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fetchAndLock**
> List<LockedExternalTaskDto> fetchAndLock(fetchExternalTasksDto)

Fetch and Lock

Fetches and locks a specific number of external tasks for execution by a worker. Query can be restricted to specific task topics and for each task topic an individual lock time can be provided.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExternalTaskApi();
final fetchExternalTasksDto = FetchExternalTasksDto(); // FetchExternalTasksDto | 

try {
    final result = api_instance.fetchAndLock(fetchExternalTasksDto);
    print(result);
} catch (e) {
    print('Exception when calling ExternalTaskApi->fetchAndLock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fetchExternalTasksDto** | [**FetchExternalTasksDto**](FetchExternalTasksDto.md)|  | [optional] 

### Return type

[**List<LockedExternalTaskDto>**](LockedExternalTaskDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExternalTask**
> ExternalTaskDto getExternalTask(id)

Get

Retrieves an external task by id, corresponding to the `ExternalTask` interface in the engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExternalTaskApi();
final id = id_example; // String | The id of the external task to be retrieved.

try {
    final result = api_instance.getExternalTask(id);
    print(result);
} catch (e) {
    print('Exception when calling ExternalTaskApi->getExternalTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the external task to be retrieved. | 

### Return type

[**ExternalTaskDto**](ExternalTaskDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExternalTaskErrorDetails**
> String getExternalTaskErrorDetails(id)

Get Error Details

Retrieves the error details in the context of a running external task by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExternalTaskApi();
final id = id_example; // String | The id of the external task for which the error details should be retrieved.

try {
    final result = api_instance.getExternalTaskErrorDetails(id);
    print(result);
} catch (e) {
    print('Exception when calling ExternalTaskApi->getExternalTaskErrorDetails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the external task for which the error details should be retrieved. | 

### Return type

**String**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExternalTasks**
> List<ExternalTaskDto> getExternalTasks(externalTaskId, externalTaskIdIn, topicName, workerId, locked, notLocked, withRetriesLeft, noRetriesLeft, lockExpirationAfter, lockExpirationBefore, activityId, activityIdIn, executionId, processInstanceId, processInstanceIdIn, processDefinitionId, tenantIdIn, active, suspended, priorityHigherThanOrEquals, priorityLowerThanOrEquals, sortBy, sortOrder, firstResult, maxResults)

Get List

Queries for the external tasks that fulfill given parameters. Parameters may be static as well as dynamic runtime properties of executions. The size of the result set can be retrieved by using the [Get External Task Count](https://docs.camunda.org/manual/7.20/reference/rest/external-task/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExternalTaskApi();
final externalTaskId = externalTaskId_example; // String | Filter by an external task's id.
final externalTaskIdIn = externalTaskIdIn_example; // String | Filter by the comma-separated list of external task ids.
final topicName = topicName_example; // String | Filter by an external task topic.
final workerId = workerId_example; // String | Filter by the id of the worker that the task was most recently locked by.
final locked = true; // bool | Only include external tasks that are currently locked (i.e., they have a lock time and it has not expired). Value may only be `true`, as `false` matches any external task.
final notLocked = true; // bool | Only include external tasks that are currently not locked (i.e., they have no lock or it has expired). Value may only be `true`, as `false` matches any external task.
final withRetriesLeft = true; // bool | Only include external tasks that have a positive (&gt; 0) number of retries (or `null`). Value may only be `true`, as `false` matches any external task.
final noRetriesLeft = true; // bool | Only include external tasks that have 0 retries. Value may only be `true`, as `false` matches any external task.
final lockExpirationAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to external tasks that have a lock that expires after a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final lockExpirationBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to external tasks that have a lock that expires before a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final activityId = activityId_example; // String | Filter by the id of the activity that an external task is created for.
final activityIdIn = activityIdIn_example; // String | Filter by the comma-separated list of ids of the activities that an external task is created for.
final executionId = executionId_example; // String | Filter by the id of the execution that an external task belongs to.
final processInstanceId = processInstanceId_example; // String | Filter by the id of the process instance that an external task belongs to.
final processInstanceIdIn = processInstanceIdIn_example; // String | Filter by a comma-separated list of process instance ids that an external task may belong to.
final processDefinitionId = processDefinitionId_example; // String | Filter by the id of the process definition that an external task belongs to.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. An external task must have one of the given tenant ids.
final active = true; // bool | Only include active tasks. Value may only be `true`, as `false` matches any external task.
final suspended = true; // bool | Only include suspended tasks. Value may only be `true`, as `false` matches any external task.
final priorityHigherThanOrEquals = 789; // int | Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value.
final priorityLowerThanOrEquals = 789; // int | Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getExternalTasks(externalTaskId, externalTaskIdIn, topicName, workerId, locked, notLocked, withRetriesLeft, noRetriesLeft, lockExpirationAfter, lockExpirationBefore, activityId, activityIdIn, executionId, processInstanceId, processInstanceIdIn, processDefinitionId, tenantIdIn, active, suspended, priorityHigherThanOrEquals, priorityLowerThanOrEquals, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling ExternalTaskApi->getExternalTasks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalTaskId** | **String**| Filter by an external task's id. | [optional] 
 **externalTaskIdIn** | **String**| Filter by the comma-separated list of external task ids. | [optional] 
 **topicName** | **String**| Filter by an external task topic. | [optional] 
 **workerId** | **String**| Filter by the id of the worker that the task was most recently locked by. | [optional] 
 **locked** | **bool**| Only include external tasks that are currently locked (i.e., they have a lock time and it has not expired). Value may only be `true`, as `false` matches any external task. | [optional] 
 **notLocked** | **bool**| Only include external tasks that are currently not locked (i.e., they have no lock or it has expired). Value may only be `true`, as `false` matches any external task. | [optional] 
 **withRetriesLeft** | **bool**| Only include external tasks that have a positive (&gt; 0) number of retries (or `null`). Value may only be `true`, as `false` matches any external task. | [optional] 
 **noRetriesLeft** | **bool**| Only include external tasks that have 0 retries. Value may only be `true`, as `false` matches any external task. | [optional] 
 **lockExpirationAfter** | **DateTime**| Restrict to external tasks that have a lock that expires after a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **lockExpirationBefore** | **DateTime**| Restrict to external tasks that have a lock that expires before a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **activityId** | **String**| Filter by the id of the activity that an external task is created for. | [optional] 
 **activityIdIn** | **String**| Filter by the comma-separated list of ids of the activities that an external task is created for. | [optional] 
 **executionId** | **String**| Filter by the id of the execution that an external task belongs to. | [optional] 
 **processInstanceId** | **String**| Filter by the id of the process instance that an external task belongs to. | [optional] 
 **processInstanceIdIn** | **String**| Filter by a comma-separated list of process instance ids that an external task may belong to. | [optional] 
 **processDefinitionId** | **String**| Filter by the id of the process definition that an external task belongs to. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. An external task must have one of the given tenant ids. | [optional] 
 **active** | **bool**| Only include active tasks. Value may only be `true`, as `false` matches any external task. | [optional] 
 **suspended** | **bool**| Only include suspended tasks. Value may only be `true`, as `false` matches any external task. | [optional] 
 **priorityHigherThanOrEquals** | **int**| Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value. | [optional] 
 **priorityLowerThanOrEquals** | **int**| Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<ExternalTaskDto>**](ExternalTaskDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExternalTasksCount**
> CountResultDto getExternalTasksCount(externalTaskId, externalTaskIdIn, topicName, workerId, locked, notLocked, withRetriesLeft, noRetriesLeft, lockExpirationAfter, lockExpirationBefore, activityId, activityIdIn, executionId, processInstanceId, processInstanceIdIn, processDefinitionId, tenantIdIn, active, suspended, priorityHigherThanOrEquals, priorityLowerThanOrEquals)

Get List Count

Queries for the number of external tasks that fulfill given parameters. Takes the same parameters as the [Get External Tasks](https://docs.camunda.org/manual/7.20/reference/rest/external-task/get-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExternalTaskApi();
final externalTaskId = externalTaskId_example; // String | Filter by an external task's id.
final externalTaskIdIn = externalTaskIdIn_example; // String | Filter by the comma-separated list of external task ids.
final topicName = topicName_example; // String | Filter by an external task topic.
final workerId = workerId_example; // String | Filter by the id of the worker that the task was most recently locked by.
final locked = true; // bool | Only include external tasks that are currently locked (i.e., they have a lock time and it has not expired). Value may only be `true`, as `false` matches any external task.
final notLocked = true; // bool | Only include external tasks that are currently not locked (i.e., they have no lock or it has expired). Value may only be `true`, as `false` matches any external task.
final withRetriesLeft = true; // bool | Only include external tasks that have a positive (&gt; 0) number of retries (or `null`). Value may only be `true`, as `false` matches any external task.
final noRetriesLeft = true; // bool | Only include external tasks that have 0 retries. Value may only be `true`, as `false` matches any external task.
final lockExpirationAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to external tasks that have a lock that expires after a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final lockExpirationBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to external tasks that have a lock that expires before a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final activityId = activityId_example; // String | Filter by the id of the activity that an external task is created for.
final activityIdIn = activityIdIn_example; // String | Filter by the comma-separated list of ids of the activities that an external task is created for.
final executionId = executionId_example; // String | Filter by the id of the execution that an external task belongs to.
final processInstanceId = processInstanceId_example; // String | Filter by the id of the process instance that an external task belongs to.
final processInstanceIdIn = processInstanceIdIn_example; // String | Filter by a comma-separated list of process instance ids that an external task may belong to.
final processDefinitionId = processDefinitionId_example; // String | Filter by the id of the process definition that an external task belongs to.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. An external task must have one of the given tenant ids.
final active = true; // bool | Only include active tasks. Value may only be `true`, as `false` matches any external task.
final suspended = true; // bool | Only include suspended tasks. Value may only be `true`, as `false` matches any external task.
final priorityHigherThanOrEquals = 789; // int | Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value.
final priorityLowerThanOrEquals = 789; // int | Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value.

try {
    final result = api_instance.getExternalTasksCount(externalTaskId, externalTaskIdIn, topicName, workerId, locked, notLocked, withRetriesLeft, noRetriesLeft, lockExpirationAfter, lockExpirationBefore, activityId, activityIdIn, executionId, processInstanceId, processInstanceIdIn, processDefinitionId, tenantIdIn, active, suspended, priorityHigherThanOrEquals, priorityLowerThanOrEquals);
    print(result);
} catch (e) {
    print('Exception when calling ExternalTaskApi->getExternalTasksCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalTaskId** | **String**| Filter by an external task's id. | [optional] 
 **externalTaskIdIn** | **String**| Filter by the comma-separated list of external task ids. | [optional] 
 **topicName** | **String**| Filter by an external task topic. | [optional] 
 **workerId** | **String**| Filter by the id of the worker that the task was most recently locked by. | [optional] 
 **locked** | **bool**| Only include external tasks that are currently locked (i.e., they have a lock time and it has not expired). Value may only be `true`, as `false` matches any external task. | [optional] 
 **notLocked** | **bool**| Only include external tasks that are currently not locked (i.e., they have no lock or it has expired). Value may only be `true`, as `false` matches any external task. | [optional] 
 **withRetriesLeft** | **bool**| Only include external tasks that have a positive (&gt; 0) number of retries (or `null`). Value may only be `true`, as `false` matches any external task. | [optional] 
 **noRetriesLeft** | **bool**| Only include external tasks that have 0 retries. Value may only be `true`, as `false` matches any external task. | [optional] 
 **lockExpirationAfter** | **DateTime**| Restrict to external tasks that have a lock that expires after a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **lockExpirationBefore** | **DateTime**| Restrict to external tasks that have a lock that expires before a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **activityId** | **String**| Filter by the id of the activity that an external task is created for. | [optional] 
 **activityIdIn** | **String**| Filter by the comma-separated list of ids of the activities that an external task is created for. | [optional] 
 **executionId** | **String**| Filter by the id of the execution that an external task belongs to. | [optional] 
 **processInstanceId** | **String**| Filter by the id of the process instance that an external task belongs to. | [optional] 
 **processInstanceIdIn** | **String**| Filter by a comma-separated list of process instance ids that an external task may belong to. | [optional] 
 **processDefinitionId** | **String**| Filter by the id of the process definition that an external task belongs to. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. An external task must have one of the given tenant ids. | [optional] 
 **active** | **bool**| Only include active tasks. Value may only be `true`, as `false` matches any external task. | [optional] 
 **suspended** | **bool**| Only include suspended tasks. Value may only be `true`, as `false` matches any external task. | [optional] 
 **priorityHigherThanOrEquals** | **int**| Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value. | [optional] 
 **priorityLowerThanOrEquals** | **int**| Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTopicNames**
> List<String> getTopicNames(withLockedTasks, withUnlockedTasks, withRetriesLeft)

Get External Task Topic Names

Queries for distinct topic names of external tasks that fulfill given parameters. Query can be restricted to only tasks with retries left, tasks that are locked, or tasks that are unlocked. The parameters withLockedTasks and withUnlockedTasks are exclusive. Setting them both to true will return an empty list. Providing no parameters will return a list of all distinct topic names with external tasks.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExternalTaskApi();
final withLockedTasks = true; // bool | Only include external tasks that are currently locked (i.e., they have a lock time and it has not expired). Value may only be `true`, as `false` matches any external task.
final withUnlockedTasks = true; // bool | Only include external tasks that are currently not locked (i.e., they have no lock or it has expired). Value may only be `true`, as `false` matches any external task.
final withRetriesLeft = true; // bool | Only include external tasks that have a positive (&gt; 0) number of retries (or `null`). Value may only be `true`, as `false` matches any external task.

try {
    final result = api_instance.getTopicNames(withLockedTasks, withUnlockedTasks, withRetriesLeft);
    print(result);
} catch (e) {
    print('Exception when calling ExternalTaskApi->getTopicNames: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **withLockedTasks** | **bool**| Only include external tasks that are currently locked (i.e., they have a lock time and it has not expired). Value may only be `true`, as `false` matches any external task. | [optional] 
 **withUnlockedTasks** | **bool**| Only include external tasks that are currently not locked (i.e., they have no lock or it has expired). Value may only be `true`, as `false` matches any external task. | [optional] 
 **withRetriesLeft** | **bool**| Only include external tasks that have a positive (&gt; 0) number of retries (or `null`). Value may only be `true`, as `false` matches any external task. | [optional] 

### Return type

**List<String>**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **handleExternalTaskBpmnError**
> handleExternalTaskBpmnError(id, externalTaskBpmnError)

Handle BPMN Error

Reports a business error in the context of a running external task by id. The error code must be specified to identify the BPMN error handler.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExternalTaskApi();
final id = id_example; // String | The id of the external task in which context a BPMN error is reported.
final externalTaskBpmnError = ExternalTaskBpmnError(); // ExternalTaskBpmnError | 

try {
    api_instance.handleExternalTaskBpmnError(id, externalTaskBpmnError);
} catch (e) {
    print('Exception when calling ExternalTaskApi->handleExternalTaskBpmnError: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the external task in which context a BPMN error is reported. | 
 **externalTaskBpmnError** | [**ExternalTaskBpmnError**](ExternalTaskBpmnError.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **handleFailure**
> handleFailure(id, externalTaskFailureDto)

Handle Failure

Reports a failure to execute an external task by id. A number of retries and a timeout until the task can be retried can be specified. If retries are set to 0, an incident for this task is created.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExternalTaskApi();
final id = id_example; // String | The id of the external task to report a failure for.
final externalTaskFailureDto = ExternalTaskFailureDto(); // ExternalTaskFailureDto | 

try {
    api_instance.handleFailure(id, externalTaskFailureDto);
} catch (e) {
    print('Exception when calling ExternalTaskApi->handleFailure: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the external task to report a failure for. | 
 **externalTaskFailureDto** | [**ExternalTaskFailureDto**](ExternalTaskFailureDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lock**
> lock(id, lockExternalTaskDto)



Lock an external task by a given id for a specified worker and amount of time.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExternalTaskApi();
final id = id_example; // String | The id of the external task.
final lockExternalTaskDto = LockExternalTaskDto(); // LockExternalTaskDto | 

try {
    api_instance.lock(id, lockExternalTaskDto);
} catch (e) {
    print('Exception when calling ExternalTaskApi->lock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the external task. | 
 **lockExternalTaskDto** | [**LockExternalTaskDto**](LockExternalTaskDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryExternalTasks**
> List<ExternalTaskDto> queryExternalTasks(firstResult, maxResults, externalTaskQueryDto)

Get List (POST)

Queries for external tasks that fulfill given parameters in the form of a JSON object.  This method is slightly more powerful than the [Get External Tasks](https://docs.camunda.org/manual/7.20/reference/rest/external-task/get-query/) method because it allows to specify a hierarchical result sorting.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExternalTaskApi();
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final externalTaskQueryDto = ExternalTaskQueryDto(); // ExternalTaskQueryDto | 

try {
    final result = api_instance.queryExternalTasks(firstResult, maxResults, externalTaskQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling ExternalTaskApi->queryExternalTasks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **externalTaskQueryDto** | [**ExternalTaskQueryDto**](ExternalTaskQueryDto.md)|  | [optional] 

### Return type

[**List<ExternalTaskDto>**](ExternalTaskDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryExternalTasksCount**
> CountResultDto queryExternalTasksCount(externalTaskQueryDto)

Get List Count (POST)

Queries for the number of external tasks that fulfill given parameters. This method takes the same message body as the [Get External Tasks (POST)](https://docs.camunda.org/manual/7.20/reference/rest/external-task/post-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExternalTaskApi();
final externalTaskQueryDto = ExternalTaskQueryDto(); // ExternalTaskQueryDto | 

try {
    final result = api_instance.queryExternalTasksCount(externalTaskQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling ExternalTaskApi->queryExternalTasksCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalTaskQueryDto** | [**ExternalTaskQueryDto**](ExternalTaskQueryDto.md)|  | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setExternalTaskResourcePriority**
> setExternalTaskResourcePriority(id, priorityDto)

Set Priority

Sets the priority of an existing external task by id. The default value of a priority is 0.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExternalTaskApi();
final id = id_example; // String | The id of the external task to set the priority for.
final priorityDto = PriorityDto(); // PriorityDto | 

try {
    api_instance.setExternalTaskResourcePriority(id, priorityDto);
} catch (e) {
    print('Exception when calling ExternalTaskApi->setExternalTaskResourcePriority: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the external task to set the priority for. | 
 **priorityDto** | [**PriorityDto**](PriorityDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setExternalTaskResourceRetries**
> setExternalTaskResourceRetries(id, retriesDto)

Set Retries

Sets the number of retries left to execute an external task by id. If retries are set to 0, an  incident is created.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExternalTaskApi();
final id = id_example; // String | The id of the external task to set the number of retries for.
final retriesDto = RetriesDto(); // RetriesDto | 

try {
    api_instance.setExternalTaskResourceRetries(id, retriesDto);
} catch (e) {
    print('Exception when calling ExternalTaskApi->setExternalTaskResourceRetries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the external task to set the number of retries for. | 
 **retriesDto** | [**RetriesDto**](RetriesDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setExternalTaskRetries**
> setExternalTaskRetries(setRetriesForExternalTasksDto)

Set Retries Sync

Sets the number of retries left to execute external tasks by id synchronously. If retries are set to 0,  an incident is created.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExternalTaskApi();
final setRetriesForExternalTasksDto = SetRetriesForExternalTasksDto(); // SetRetriesForExternalTasksDto | 

try {
    api_instance.setExternalTaskRetries(setRetriesForExternalTasksDto);
} catch (e) {
    print('Exception when calling ExternalTaskApi->setExternalTaskRetries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setRetriesForExternalTasksDto** | [**SetRetriesForExternalTasksDto**](SetRetriesForExternalTasksDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setExternalTaskRetriesAsyncOperation**
> BatchDto setExternalTaskRetriesAsyncOperation(setRetriesForExternalTasksDto)

Set Retries Async

Sets the number of retries left to execute external tasks by id asynchronously. If retries are set to 0, an incident is created.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExternalTaskApi();
final setRetriesForExternalTasksDto = SetRetriesForExternalTasksDto(); // SetRetriesForExternalTasksDto | 

try {
    final result = api_instance.setExternalTaskRetriesAsyncOperation(setRetriesForExternalTasksDto);
    print(result);
} catch (e) {
    print('Exception when calling ExternalTaskApi->setExternalTaskRetriesAsyncOperation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setRetriesForExternalTasksDto** | [**SetRetriesForExternalTasksDto**](SetRetriesForExternalTasksDto.md)|  | [optional] 

### Return type

[**BatchDto**](BatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlock**
> unlock(id)

Unlock

Unlocks an external task by id. Clears the task's lock expiration time and worker id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExternalTaskApi();
final id = id_example; // String | The id of the external task to unlock.

try {
    api_instance.unlock(id);
} catch (e) {
    print('Exception when calling ExternalTaskApi->unlock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the external task to unlock. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

