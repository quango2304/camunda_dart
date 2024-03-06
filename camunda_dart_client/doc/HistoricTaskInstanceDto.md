# openapi.model.HistoricTaskInstanceDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The task id. | [optional] 
**processDefinitionKey** | **String** | The key of the process definition the task belongs to. | [optional] 
**processDefinitionId** | **String** | The id of the process definition the task belongs to. | [optional] 
**processInstanceId** | **String** | The id of the process instance the task belongs to. | [optional] 
**executionId** | **String** | The id of the execution the task belongs to. | [optional] 
**caseDefinitionKey** | **String** | The key of the case definition the task belongs to. | [optional] 
**caseDefinitionId** | **String** | The id of the case definition the task belongs to. | [optional] 
**caseInstanceId** | **String** | The id of the case instance the task belongs to. | [optional] 
**caseExecutionId** | **String** | The id of the case execution the task belongs to. | [optional] 
**activityInstanceId** | **String** | The id of the activity that this object is an instance of. | [optional] 
**name** | **String** | The task name. | [optional] 
**description** | **String** | The task's description. | [optional] 
**deleteReason** | **String** | The task's delete reason. | [optional] 
**owner** | **String** | The owner's id. | [optional] 
**assignee** | **String** | The assignee's id. | [optional] 
**startTime** | [**DateTime**](DateTime.md) | The time the task was started. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**endTime** | [**DateTime**](DateTime.md) | The time the task ended. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**duration** | **int** | The time the task took to finish (in milliseconds). | [optional] 
**taskDefinitionKey** | **String** | The task's key. | [optional] 
**priority** | **int** | The task's priority. | [optional] 
**due** | [**DateTime**](DateTime.md) | The task's due date. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**parentTaskId** | **String** | The id of the parent task, if this task is a subtask. | [optional] 
**followUp** | [**DateTime**](DateTime.md) | The follow-up date for the task. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**tenantId** | **String** | The tenant id of the task instance. | [optional] 
**removalTime** | [**DateTime**](DateTime.md) | The time after which the task should be removed by the History Cleanup job. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**rootProcessInstanceId** | **String** | The process instance id of the root process instance that initiated the process containing this task. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


