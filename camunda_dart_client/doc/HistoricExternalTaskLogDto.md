# openapi.model.HistoricExternalTaskLogDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the log entry. | [optional] 
**externalTaskId** | **String** | The id of the external task. | [optional] 
**timestamp** | [**DateTime**](DateTime.md) | The time when the log entry has been written. | [optional] 
**topicName** | **String** | The topic name of the associated external task. | [optional] 
**workerId** | **String** | The id of the worker that posessed the most recent lock. | [optional] 
**retries** | **int** | The number of retries the associated external task has left. | [optional] 
**priority** | **int** | The execution priority the external task had when the log entry was created. | [optional] 
**errorMessage** | **String** | The message of the error that occurred by executing the associated external task. | [optional] 
**activityId** | **String** | The id of the activity on which the associated external task was created. | [optional] 
**activityInstanceId** | **String** | The id of the activity instance on which the associated external task was created. | [optional] 
**executionId** | **String** | The execution id on which the associated external task was created. | [optional] 
**processInstanceId** | **String** | The id of the process instance on which the associated external task was created. | [optional] 
**processDefinitionId** | **String** | The id of the process definition which the associated external task belongs to. | [optional] 
**processDefinitionKey** | **String** | The key of the process definition which the associated external task belongs to. | [optional] 
**tenantId** | **String** | The id of the tenant that this historic external task log entry belongs to. | [optional] 
**creationLog** | **bool** | A flag indicating whether this log represents the creation of the associated external task. | [optional] 
**failureLog** | **bool** | A flag indicating whether this log represents the failed execution of the associated external task. | [optional] 
**successLog** | **bool** | A flag indicating whether this log represents the successful execution of the associated external task. | [optional] 
**deletionLog** | **bool** | A flag indicating whether this log represents the deletion of the associated external task. | [optional] 
**removalTime** | [**DateTime**](DateTime.md) | The time after which this log should be removed by the History Cleanup job. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.  For further information, please see the [documentation](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) | [optional] 
**rootProcessInstanceId** | **String** | The process instance id of the root process instance that initiated the process containing this log. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


