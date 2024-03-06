# openapi.model.FetchExternalTasksDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**workerId** | **String** | **Mandatory.** The id of the worker on which behalf tasks are fetched. The returned tasks are locked for that worker and can only be completed when providing the same worker id. | 
**maxTasks** | **int** | **Mandatory.** The maximum number of tasks to return. | 
**usePriority** | **bool** | A `boolean` value, which indicates whether the task should be fetched based on its priority or arbitrarily. | [optional] 
**asyncResponseTimeout** | **int** | The [Long Polling](https://docs.camunda.org/manual/7.20/user-guide/process-engine/external-tasks/#long-polling-to-fetch-and-lock-external-tasks) timeout in milliseconds.  **Note:** The value cannot be set larger than 1.800.000 milliseconds (corresponds to 30 minutes). | [optional] 
**topics** | [**List<FetchExternalTaskTopicDto>**](FetchExternalTaskTopicDto.md) | A JSON array of topic objects for which external tasks should be fetched. The returned tasks may be arbitrarily distributed among these topics. Each topic object has the following properties: | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


