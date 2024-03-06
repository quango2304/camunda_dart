# openapi.model.LockExternalTaskDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**workerId** | **String** | **Mandatory.** The ID of the worker who is performing the operation on the external task. If the task is already locked, must match the id of the worker who has most recently locked the task. | [optional] 
**lockDuration** | **int** | The duration to lock the external task for in milliseconds. **Note:** Attempting to lock an already locked external task with the same `workerId` will succeed and a new lock duration will be set, starting from the current moment. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


