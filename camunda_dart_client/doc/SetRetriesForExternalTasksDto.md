# openapi.model.SetRetriesForExternalTasksDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**retries** | **int** | The number of retries to set for the external task.  Must be >= 0. If this is 0, an incident is created and the task cannot be fetched anymore unless the retries are increased again. Can not be null. | [optional] 
**externalTaskIds** | **List<String>** | The ids of the external tasks to set the number of retries for. | [optional] [default to const []]
**processInstanceIds** | **List<String>** | The ids of process instances containing the tasks to set the number of retries for. | [optional] [default to const []]
**externalTaskQuery** | [**ExternalTaskQueryDto**](ExternalTaskQueryDto.md) |  | [optional] 
**processInstanceQuery** | [**ProcessInstanceQueryDto**](ProcessInstanceQueryDto.md) |  | [optional] 
**historicProcessInstanceQuery** | [**HistoricProcessInstanceQueryDto**](HistoricProcessInstanceQueryDto.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


