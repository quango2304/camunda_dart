# openapi.model.MessageCorrelationResultWithVariableDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resultType** | **String** | Indicates if the message was correlated to a message start event or an  intermediate message catching event. In the first case, the resultType is  `ProcessDefinition` and otherwise `Execution`. | [optional] 
**processInstance** | [**ProcessInstanceDto**](ProcessInstanceDto.md) |  | [optional] 
**execution** | [**ExecutionDto**](ExecutionDto.md) |  | [optional] 
**variables** | [**Map<String, VariableValueDto>**](VariableValueDto.md) | This property is returned if the `variablesInResultEnabled` is set to `true`. Contains a list of the process variables.  | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


