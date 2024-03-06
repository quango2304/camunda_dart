# openapi.model.RestartProcessInstanceDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**processInstanceIds** | **List<String>** | A list of process instance ids to restart. | [optional] [default to const []]
**historicProcessInstanceQuery** | [**HistoricProcessInstanceQueryDto**](HistoricProcessInstanceQueryDto.md) |  | [optional] 
**skipCustomListeners** | **bool** | Skip execution listener invocation for activities that are started as part of this request. | [optional] 
**skipIoMappings** | **bool** | Skip execution of [input/output variable mappings](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#input-output-variable-mapping) for activities that are started as part of this request. | [optional] 
**initialVariables** | **bool** | Set the initial set of variables during restart. By default, the last set of variables is used. | [optional] 
**withoutBusinessKey** | **bool** | Do not take over the business key of the historic process instance. | [optional] 
**instructions** | [**List<RestartProcessInstanceModificationInstructionDto>**](RestartProcessInstanceModificationInstructionDto.md) | **Optional**. A JSON array of instructions that specify which activities to start the process instance at. If this property is omitted, the process instance starts at its default blank start event. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


