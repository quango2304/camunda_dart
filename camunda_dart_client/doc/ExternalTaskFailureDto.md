# openapi.model.ExternalTaskFailureDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**workerId** | **String** | **Mandatory.** The ID of the worker who is performing the operation on the external task. If the task is already locked, must match the id of the worker who has most recently locked the task. | [optional] 
**errorMessage** | **String** | An message indicating the reason of the failure. | [optional] 
**errorDetails** | **String** | A detailed error description. | [optional] 
**retries** | **int** | A number of how often the task should be retried. Must be >= 0. If this is 0, an incident is created and the task cannot be fetched anymore unless the retries are increased again. The incident's message is set to the `errorMessage` parameter. | [optional] 
**retryTimeout** | **int** | A timeout in milliseconds before the external task becomes available again for fetching. Must be >= 0. | [optional] 
**variables** | [**Map<String, VariableValueDto>**](VariableValueDto.md) | A JSON object containing variable key-value pairs. Each key is a variable name and each value a JSON variable value object with the following properties: | [optional] [default to const {}]
**localVariables** | [**Map<String, VariableValueDto>**](VariableValueDto.md) | A JSON object containing local variable key-value pairs. Local variables are set only in the scope of external task. Each key is a variable name and each value a JSON variable value object with the following properties: | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


