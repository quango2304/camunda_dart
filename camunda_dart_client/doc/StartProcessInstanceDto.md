# openapi.model.StartProcessInstanceDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**businessKey** | **String** | The business key of the process instance. | [optional] 
**variables** | [**Map<String, VariableValueDto>**](VariableValueDto.md) |  | [optional] [default to const {}]
**caseInstanceId** | **String** | The case instance id the process instance is to be initialized with. | [optional] 
**startInstructions** | [**List<ProcessInstanceModificationInstructionDto>**](ProcessInstanceModificationInstructionDto.md) | **Optional**. A JSON array of instructions that specify which activities to start the process instance at. If this property is omitted, the process instance starts at its default blank start event. | [optional] [default to const []]
**skipCustomListeners** | **bool** | Skip execution listener invocation for activities that are started or ended as part of this request. **Note**: This option is currently only respected when start instructions are submitted via the `startInstructions` property. | [optional] 
**skipIoMappings** | **bool** | Skip execution of [input/output variable mappings](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#input-output-variable-mapping) for activities that are started or ended as part of this request. **Note**: This option is currently only respected when start instructions are submitted via the `startInstructions` property. | [optional] 
**withVariablesInReturn** | **bool** | Indicates if the variables, which was used by the process instance during execution, should be returned. Default value: `false` | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


