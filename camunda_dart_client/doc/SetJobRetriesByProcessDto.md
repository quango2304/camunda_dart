# openapi.model.SetJobRetriesByProcessDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**jobIds** | **List<String>** | A list of job ids to set retries for. | [optional] [default to const []]
**jobQuery** | [**JobQueryDto**](JobQueryDto.md) |  | [optional] 
**dueDate** | [**DateTime**](DateTime.md) | The due date to set for the job. A due date indicates when this job is ready for execution. Jobs with due dates in the past will be scheduled for execution. | [optional] 
**retries** | **int** | The number of retries to set for the resource.  Must be >= 0. If this is 0, an incident is created and the task, or job, cannot be fetched, or acquired anymore unless the retries are increased again. Can not be null. | [optional] 
**processInstances** | **List<String>** | A list of process instance ids to fetch jobs, for which retries will be set. | [optional] [default to const []]
**processInstanceQuery** | [**ProcessInstanceQueryDto**](ProcessInstanceQueryDto.md) |  | [optional] 
**historicProcessInstanceQuery** | [**HistoricProcessInstanceQueryDto**](HistoricProcessInstanceQueryDto.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


