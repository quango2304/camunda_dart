# openapi.model.HistoricActivityInstanceDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the activity instance. | [optional] 
**parentActivityInstanceId** | **String** | The id of the parent activity instance, for example a sub process instance. | [optional] 
**activityId** | **String** | The id of the activity that this object is an instance of. | [optional] 
**activityName** | **String** | The name of the activity that this object is an instance of. | [optional] 
**activityType** | **String** | The type of the activity that this object is an instance of. | [optional] 
**processDefinitionKey** | **String** | The key of the process definition that this activity instance belongs to. | [optional] 
**processDefinitionId** | **String** | The id of the process definition that this activity instance belongs to. | [optional] 
**processInstanceId** | **String** | The id of the process instance that this activity instance belongs to. | [optional] 
**executionId** | **String** | The id of the execution that executed this activity instance. | [optional] 
**taskId** | **String** | The id of the task that is associated to this activity instance. Is only set if the activity is a user task. | [optional] 
**assignee** | **String** | The assignee of the task that is associated to this activity instance. Is only set if the activity is a user task. | [optional] 
**calledProcessInstanceId** | **String** | The id of the called process instance. Is only set if the activity is a call activity and the called instance a process instance. | [optional] 
**calledCaseInstanceId** | **String** | The id of the called case instance. Is only set if the activity is a call activity and the called instance a case instance. | [optional] 
**startTime** | [**DateTime**](DateTime.md) | The time the instance was started. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**endTime** | [**DateTime**](DateTime.md) | The time the instance ended. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**durationInMillis** | **int** | The time the instance took to finish (in milliseconds). | [optional] 
**canceled** | **bool** | If `true`, this activity instance is canceled. | [optional] 
**completeScope** | **bool** | If `true`, this activity instance did complete a BPMN 2.0 scope. | [optional] 
**tenantId** | **String** | The tenant id of the activity instance. | [optional] 
**removalTime** | [**DateTime**](DateTime.md) | The time after which the activity instance should be removed by the History Cleanup job. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**rootProcessInstanceId** | **String** | The process instance id of the root process instance that initiated the process containing this activity instance. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


