# openapi.model.UserOperationLogEntryDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier of this log entry. | [optional] 
**userId** | **String** | The user who performed this operation. | [optional] 
**timestamp** | [**DateTime**](DateTime.md) | Timestamp of this operation. | [optional] 
**operationId** | **String** | The unique identifier of this operation. A composite operation that changes multiple properties has a common `operationId`. | [optional] 
**operationType** | **String** | The type of this operation, e.g., `Assign`, `Claim` and so on. | [optional] 
**entityType** | **String** | The type of the entity on which this operation was executed, e.g., `Task` or `Attachment`. | [optional] 
**category** | **String** | The name of the category this operation was associated with, e.g., `TaskWorker` or `Admin`. | [optional] 
**annotation** | **String** | An arbitrary annotation set by a user for auditing reasons. | [optional] 
**property** | **String** | The property changed by this operation. | [optional] 
**orgValue** | **String** | The original value of the changed property. | [optional] 
**newValue** | **String** | The new value of the changed property. | [optional] 
**deploymentId** | **String** | If not `null`, the operation is restricted to entities in relation to this deployment. | [optional] 
**processDefinitionId** | **String** | If not `null`, the operation is restricted to entities in relation to this process definition. | [optional] 
**processDefinitionKey** | **String** | If not `null`, the operation is restricted to entities in relation to process definitions with this key. | [optional] 
**processInstanceId** | **String** | If not `null`, the operation is restricted to entities in relation to this process instance. | [optional] 
**executionId** | **String** | If not `null`, the operation is restricted to entities in relation to this execution. | [optional] 
**caseDefinitionId** | **String** | If not `null`, the operation is restricted to entities in relation to this case definition. | [optional] 
**caseInstanceId** | **String** | If not `null`, the operation is restricted to entities in relation to this case instance. | [optional] 
**caseExecutionId** | **String** | If not `null`, the operation is restricted to entities in relation to this case execution. | [optional] 
**taskId** | **String** | If not `null`, the operation is restricted to entities in relation to this task. | [optional] 
**externalTaskId** | **String** | If not `null`, the operation is restricted to entities in relation to this external task. | [optional] 
**batchId** | **String** | If not `null`, the operation is restricted to entities in relation to this batch. | [optional] 
**jobId** | **String** | If not `null`, the operation is restricted to entities in relation to this job. | [optional] 
**jobDefinitionId** | **String** | If not `null`, the operation is restricted to entities in relation to this job definition. | [optional] 
**removalTime** | [**DateTime**](DateTime.md) | The time after which the entry should be removed by the History Cleanup job. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**rootProcessInstanceId** | **String** | The process instance id of the root process instance that initiated the process containing this entry. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


