# openapi.model.TaskDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The task id. | [optional] 
**name** | **String** | The task name. | [optional] 
**assignee** | **String** | The assignee's id. | [optional] 
**owner** | **String** | The owner's id. | [optional] 
**created** | [**DateTime**](DateTime.md) | The date the task was created on. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**lastUpdated** | [**DateTime**](DateTime.md) | The date the task was last updated. Every action that fires a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) will update this property. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**due** | [**DateTime**](DateTime.md) | The task's due date. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**followUp** | [**DateTime**](DateTime.md) | The follow-up date for the task. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**delegationState** | **String** | The task's delegation state. Possible values are `PENDING` and `RESOLVED`. | [optional] 
**description** | **String** | The task's description. | [optional] 
**executionId** | **String** | The id of the execution the task belongs to. | [optional] 
**parentTaskId** | **String** | The id the parent task, if this task is a subtask. | [optional] 
**priority** | **int** | The task's priority. | [optional] 
**processDefinitionId** | **String** | The id of the process definition the task belongs to. | [optional] 
**processInstanceId** | **String** | The id of the process instance the task belongs to. | [optional] 
**caseExecutionId** | **String** | The id of the case execution the task belongs to. | [optional] 
**caseDefinitionId** | **String** | The id of the case definition the task belongs to. | [optional] 
**caseInstanceId** | **String** | The id of the case instance the task belongs to. | [optional] 
**taskDefinitionKey** | **String** | The task's key. | [optional] 
**suspended** | **bool** | Whether the task belongs to a process instance that is suspended. | [optional] 
**formKey** | **String** | If not `null`, the form key for the task. | [optional] 
**camundaFormRef** | [**CamundaFormRef**](CamundaFormRef.md) |  | [optional] 
**tenantId** | **String** | If not `null`, the tenant id of the task. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


