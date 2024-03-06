# openapi.model.ExternalTaskBpmnError

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errorCode** | **String** | An error code that indicates the predefined error. It is used to identify the BPMN error handler. | [optional] 
**errorMessage** | **String** | An error message that describes the error. | [optional] 
**variables** | [**Map<String, VariableValueDto>**](VariableValueDto.md) | A JSON object containing variable key-value pairs. | [optional] [default to const {}]
**workerId** | **String** | The id of the worker that reports the failure. Must match the id of the worker who has most recently locked the task. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


