# openapi.api.HistoricUserOperationLogApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clearAnnotationUserOperationLog**](HistoricUserOperationLogApi.md#clearannotationuseroperationlog) | **PUT** /history/user-operation/{operationId}/clear-annotation | Clear Annotation of an User Operation Log (Historic)
[**queryUserOperationCount**](HistoricUserOperationLogApi.md#queryuseroperationcount) | **GET** /history/user-operation/count | Get User Operation Log Count
[**queryUserOperationEntries**](HistoricUserOperationLogApi.md#queryuseroperationentries) | **GET** /history/user-operation | Get User Operation Log (Historic)
[**setAnnotationUserOperationLog**](HistoricUserOperationLogApi.md#setannotationuseroperationlog) | **PUT** /history/user-operation/{operationId}/set-annotation | Set Annotation to an User Operation Log (Historic)


# **clearAnnotationUserOperationLog**
> clearAnnotationUserOperationLog(operationId)

Clear Annotation of an User Operation Log (Historic)

Clear the annotation which was previously set for auditing reasons.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricUserOperationLogApi();
final operationId = operationId_example; // String | The operation id of the operation log to be updated.

try {
    api_instance.clearAnnotationUserOperationLog(operationId);
} catch (e) {
    print('Exception when calling HistoricUserOperationLogApi->clearAnnotationUserOperationLog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationId** | **String**| The operation id of the operation log to be updated. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryUserOperationCount**
> CountResultDto queryUserOperationCount(deploymentId, processDefinitionId, processDefinitionKey, processInstanceId, executionId, caseDefinitionId, caseInstanceId, caseExecutionId, taskId, externalTaskId, batchId, jobId, jobDefinitionId, userId, operationId, operationType, entityType, entityTypeIn, category, categoryIn, property, afterTimestamp, beforeTimestamp)

Get User Operation Log Count

Queries for the number of user operation log entries that fulfill the given parameters. Takes the same parameters as the [Get User Operation Log (Historic)](https://docs.camunda.org/manual/7.20/reference/rest/history/user-operation-log/get-user-operation-log-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricUserOperationLogApi();
final deploymentId = deploymentId_example; // String | Filter by deployment id.
final processDefinitionId = processDefinitionId_example; // String | Filter by process definition id.
final processDefinitionKey = processDefinitionKey_example; // String | Filter by process definition key.
final processInstanceId = processInstanceId_example; // String | Filter by process instance id.
final executionId = executionId_example; // String | Filter by execution id.
final caseDefinitionId = caseDefinitionId_example; // String | Filter by case definition id.
final caseInstanceId = caseInstanceId_example; // String | Filter by case instance id.
final caseExecutionId = caseExecutionId_example; // String | Filter by case execution id.
final taskId = taskId_example; // String | Only include operations on this task.
final externalTaskId = externalTaskId_example; // String | Only include operations on this external task.
final batchId = batchId_example; // String | Only include operations on this batch.
final jobId = jobId_example; // String | Filter by job id.
final jobDefinitionId = jobDefinitionId_example; // String | Filter by job definition id.
final userId = userId_example; // String | Only include operations of this user.
final operationId = operationId_example; // String | Filter by the id of the operation. This allows fetching of multiple entries which are part of a composite operation.
final operationType = operationType_example; // String | Filter by the type of the operation like `Claim` or `Delegate`. See the [Javadoc](https://docs.camunda.org/manual/7.20/reference/javadoc/?org/camunda/bpm/engine/history/UserOperationLogEntry.html) for a list of available operation types.
final entityType = entityType_example; // String | Filter by the type of the entity that was affected by this operation, possible values are `Task`, `Attachment` or `IdentityLink`.
final entityTypeIn = entityTypeIn_example; // String | Filter by a comma-separated list of types of the entities that was affected by this operation, possible values are `Task`, `Attachment` or `IdentityLink`.
final category = category_example; // String | Filter by the category that this operation is associated with, possible values are `TaskWorker`, `Admin` or `Operator`.
final categoryIn = categoryIn_example; // String | Filter by a comma-separated list of categories that this operation is associated with, possible values are `TaskWorker`, `Admin` or `Operator`.
final property = property_example; // String | Only include operations that changed this property, e.g., `owner` or `assignee`.
final afterTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to entries that were created after the given timestamp. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the timestamp must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
final beforeTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to entries that were created before the given timestamp. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the timestamp must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.

try {
    final result = api_instance.queryUserOperationCount(deploymentId, processDefinitionId, processDefinitionKey, processInstanceId, executionId, caseDefinitionId, caseInstanceId, caseExecutionId, taskId, externalTaskId, batchId, jobId, jobDefinitionId, userId, operationId, operationType, entityType, entityTypeIn, category, categoryIn, property, afterTimestamp, beforeTimestamp);
    print(result);
} catch (e) {
    print('Exception when calling HistoricUserOperationLogApi->queryUserOperationCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deploymentId** | **String**| Filter by deployment id. | [optional] 
 **processDefinitionId** | **String**| Filter by process definition id. | [optional] 
 **processDefinitionKey** | **String**| Filter by process definition key. | [optional] 
 **processInstanceId** | **String**| Filter by process instance id. | [optional] 
 **executionId** | **String**| Filter by execution id. | [optional] 
 **caseDefinitionId** | **String**| Filter by case definition id. | [optional] 
 **caseInstanceId** | **String**| Filter by case instance id. | [optional] 
 **caseExecutionId** | **String**| Filter by case execution id. | [optional] 
 **taskId** | **String**| Only include operations on this task. | [optional] 
 **externalTaskId** | **String**| Only include operations on this external task. | [optional] 
 **batchId** | **String**| Only include operations on this batch. | [optional] 
 **jobId** | **String**| Filter by job id. | [optional] 
 **jobDefinitionId** | **String**| Filter by job definition id. | [optional] 
 **userId** | **String**| Only include operations of this user. | [optional] 
 **operationId** | **String**| Filter by the id of the operation. This allows fetching of multiple entries which are part of a composite operation. | [optional] 
 **operationType** | **String**| Filter by the type of the operation like `Claim` or `Delegate`. See the [Javadoc](https://docs.camunda.org/manual/7.20/reference/javadoc/?org/camunda/bpm/engine/history/UserOperationLogEntry.html) for a list of available operation types. | [optional] 
 **entityType** | **String**| Filter by the type of the entity that was affected by this operation, possible values are `Task`, `Attachment` or `IdentityLink`. | [optional] 
 **entityTypeIn** | **String**| Filter by a comma-separated list of types of the entities that was affected by this operation, possible values are `Task`, `Attachment` or `IdentityLink`. | [optional] 
 **category** | **String**| Filter by the category that this operation is associated with, possible values are `TaskWorker`, `Admin` or `Operator`. | [optional] 
 **categoryIn** | **String**| Filter by a comma-separated list of categories that this operation is associated with, possible values are `TaskWorker`, `Admin` or `Operator`. | [optional] 
 **property** | **String**| Only include operations that changed this property, e.g., `owner` or `assignee`. | [optional] 
 **afterTimestamp** | **DateTime**| Restrict to entries that were created after the given timestamp. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the timestamp must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200. | [optional] 
 **beforeTimestamp** | **DateTime**| Restrict to entries that were created before the given timestamp. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the timestamp must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryUserOperationEntries**
> List<UserOperationLogEntryDto> queryUserOperationEntries(deploymentId, processDefinitionId, processDefinitionKey, processInstanceId, executionId, caseDefinitionId, caseInstanceId, caseExecutionId, taskId, externalTaskId, batchId, jobId, jobDefinitionId, userId, operationId, operationType, entityType, entityTypeIn, category, categoryIn, property, afterTimestamp, beforeTimestamp, sortBy, sortOrder, firstResult, maxResults)

Get User Operation Log (Historic)

Queries for user operation log entries that fulfill the given parameters. The size of the result set can be retrieved by using the [Get User Operation Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/user-operation-log/get-user-operation-log-query-count/) method.  Note that the properties of operation log entries are interpreted as restrictions on the entities they apply to. That means, if a single process instance is updated, the field `processInstanceId` is populated. If a single operation updates all process instances of the same process definition, the field `processInstanceId` is `null` (a `null` restriction is viewed as a wildcard, i.e., matches a process instance with any id) and the field `processDefinitionId` is populated. This way, which entities were changed by a user operation can easily be reconstructed.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricUserOperationLogApi();
final deploymentId = deploymentId_example; // String | Filter by deployment id.
final processDefinitionId = processDefinitionId_example; // String | Filter by process definition id.
final processDefinitionKey = processDefinitionKey_example; // String | Filter by process definition key.
final processInstanceId = processInstanceId_example; // String | Filter by process instance id.
final executionId = executionId_example; // String | Filter by execution id.
final caseDefinitionId = caseDefinitionId_example; // String | Filter by case definition id.
final caseInstanceId = caseInstanceId_example; // String | Filter by case instance id.
final caseExecutionId = caseExecutionId_example; // String | Filter by case execution id.
final taskId = taskId_example; // String | Only include operations on this task.
final externalTaskId = externalTaskId_example; // String | Only include operations on this external task.
final batchId = batchId_example; // String | Only include operations on this batch.
final jobId = jobId_example; // String | Filter by job id.
final jobDefinitionId = jobDefinitionId_example; // String | Filter by job definition id.
final userId = userId_example; // String | Only include operations of this user.
final operationId = operationId_example; // String | Filter by the id of the operation. This allows fetching of multiple entries which are part of a composite operation.
final operationType = operationType_example; // String | Filter by the type of the operation like `Claim` or `Delegate`. See the [Javadoc](https://docs.camunda.org/manual/7.20/reference/javadoc/?org/camunda/bpm/engine/history/UserOperationLogEntry.html) for a list of available operation types.
final entityType = entityType_example; // String | Filter by the type of the entity that was affected by this operation, possible values are `Task`, `Attachment` or `IdentityLink`.
final entityTypeIn = entityTypeIn_example; // String | Filter by a comma-separated list of types of the entities that was affected by this operation, possible values are `Task`, `Attachment` or `IdentityLink`.
final category = category_example; // String | Filter by the category that this operation is associated with, possible values are `TaskWorker`, `Admin` or `Operator`.
final categoryIn = categoryIn_example; // String | Filter by a comma-separated list of categories that this operation is associated with, possible values are `TaskWorker`, `Admin` or `Operator`.
final property = property_example; // String | Only include operations that changed this property, e.g., `owner` or `assignee`.
final afterTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to entries that were created after the given timestamp. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the timestamp must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
final beforeTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to entries that were created before the given timestamp. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the timestamp must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.queryUserOperationEntries(deploymentId, processDefinitionId, processDefinitionKey, processInstanceId, executionId, caseDefinitionId, caseInstanceId, caseExecutionId, taskId, externalTaskId, batchId, jobId, jobDefinitionId, userId, operationId, operationType, entityType, entityTypeIn, category, categoryIn, property, afterTimestamp, beforeTimestamp, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling HistoricUserOperationLogApi->queryUserOperationEntries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deploymentId** | **String**| Filter by deployment id. | [optional] 
 **processDefinitionId** | **String**| Filter by process definition id. | [optional] 
 **processDefinitionKey** | **String**| Filter by process definition key. | [optional] 
 **processInstanceId** | **String**| Filter by process instance id. | [optional] 
 **executionId** | **String**| Filter by execution id. | [optional] 
 **caseDefinitionId** | **String**| Filter by case definition id. | [optional] 
 **caseInstanceId** | **String**| Filter by case instance id. | [optional] 
 **caseExecutionId** | **String**| Filter by case execution id. | [optional] 
 **taskId** | **String**| Only include operations on this task. | [optional] 
 **externalTaskId** | **String**| Only include operations on this external task. | [optional] 
 **batchId** | **String**| Only include operations on this batch. | [optional] 
 **jobId** | **String**| Filter by job id. | [optional] 
 **jobDefinitionId** | **String**| Filter by job definition id. | [optional] 
 **userId** | **String**| Only include operations of this user. | [optional] 
 **operationId** | **String**| Filter by the id of the operation. This allows fetching of multiple entries which are part of a composite operation. | [optional] 
 **operationType** | **String**| Filter by the type of the operation like `Claim` or `Delegate`. See the [Javadoc](https://docs.camunda.org/manual/7.20/reference/javadoc/?org/camunda/bpm/engine/history/UserOperationLogEntry.html) for a list of available operation types. | [optional] 
 **entityType** | **String**| Filter by the type of the entity that was affected by this operation, possible values are `Task`, `Attachment` or `IdentityLink`. | [optional] 
 **entityTypeIn** | **String**| Filter by a comma-separated list of types of the entities that was affected by this operation, possible values are `Task`, `Attachment` or `IdentityLink`. | [optional] 
 **category** | **String**| Filter by the category that this operation is associated with, possible values are `TaskWorker`, `Admin` or `Operator`. | [optional] 
 **categoryIn** | **String**| Filter by a comma-separated list of categories that this operation is associated with, possible values are `TaskWorker`, `Admin` or `Operator`. | [optional] 
 **property** | **String**| Only include operations that changed this property, e.g., `owner` or `assignee`. | [optional] 
 **afterTimestamp** | **DateTime**| Restrict to entries that were created after the given timestamp. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the timestamp must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200. | [optional] 
 **beforeTimestamp** | **DateTime**| Restrict to entries that were created before the given timestamp. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the timestamp must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<UserOperationLogEntryDto>**](UserOperationLogEntryDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setAnnotationUserOperationLog**
> setAnnotationUserOperationLog(operationId, annotationDto)

Set Annotation to an User Operation Log (Historic)

Set an annotation for auditing reasons.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricUserOperationLogApi();
final operationId = operationId_example; // String | The operation id of the operation log to be updated.
final annotationDto = AnnotationDto(); // AnnotationDto | 

try {
    api_instance.setAnnotationUserOperationLog(operationId, annotationDto);
} catch (e) {
    print('Exception when calling HistoricUserOperationLogApi->setAnnotationUserOperationLog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationId** | **String**| The operation id of the operation log to be updated. | 
 **annotationDto** | [**AnnotationDto**](AnnotationDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

