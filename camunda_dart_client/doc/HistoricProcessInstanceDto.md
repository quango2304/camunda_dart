# openapi.model.HistoricProcessInstanceDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the process instance. | [optional] 
**rootProcessInstanceId** | **String** | The process instance id of the root process instance that initiated the process. | [optional] 
**superProcessInstanceId** | **String** | The id of the parent process instance, if it exists. | [optional] 
**superCaseInstanceId** | **String** | The id of the parent case instance, if it exists. | [optional] 
**caseInstanceId** | **String** | The id of the parent case instance, if it exists. | [optional] 
**processDefinitionName** | **String** | The name of the process definition that this process instance belongs to. | [optional] 
**processDefinitionKey** | **String** | The key of the process definition that this process instance belongs to. | [optional] 
**processDefinitionVersion** | **int** | The version of the process definition that this process instance belongs to. | [optional] 
**processDefinitionId** | **String** | The id of the process definition that this process instance belongs to. | [optional] 
**businessKey** | **String** | The business key of the process instance. | [optional] 
**startTime** | [**DateTime**](DateTime.md) | The time the instance was started. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**endTime** | [**DateTime**](DateTime.md) | The time the instance ended. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**removalTime** | [**DateTime**](DateTime.md) | The time after which the instance should be removed by the History Cleanup job. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**durationInMillis** | **int** | The time the instance took to finish (in milliseconds). | [optional] 
**startUserId** | **String** | The id of the user who started the process instance. | [optional] 
**startActivityId** | **String** | The id of the initial activity that was executed (e.g., a start event). | [optional] 
**deleteReason** | **String** | The provided delete reason in case the process instance was canceled during execution. | [optional] 
**tenantId** | **String** | The tenant id of the process instance. | [optional] 
**state** | **String** | Last state of the process instance, possible values are:  `ACTIVE` - running process instance  `SUSPENDED` - suspended process instances  `COMPLETED` - completed through normal end event  `EXTERNALLY_TERMINATED` - terminated externally, for instance through REST API  `INTERNALLY_TERMINATED` - terminated internally, for instance by terminating boundary event | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


