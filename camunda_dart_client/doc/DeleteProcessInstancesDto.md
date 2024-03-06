# openapi.model.DeleteProcessInstancesDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**processInstanceIds** | **List<String>** | A list process instance ids to delete. | [optional] [default to const []]
**deleteReason** | **String** | A string with delete reason. | [optional] 
**skipCustomListeners** | **bool** | Skip execution listener invocation for activities that are started or ended as part of this request. | [optional] 
**skipSubprocesses** | **bool** | Skip deletion of the subprocesses related to deleted processes as part of this request. | [optional] 
**processInstanceQuery** | [**ProcessInstanceQueryDto**](ProcessInstanceQueryDto.md) |  | [optional] 
**historicProcessInstanceQuery** | [**HistoricProcessInstanceQueryDto**](HistoricProcessInstanceQueryDto.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


