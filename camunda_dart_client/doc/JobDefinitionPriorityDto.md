# openapi.model.JobDefinitionPriorityDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**priority** | **int** | The new execution priority number for jobs of the given definition. The definition's priority can be reset by using the value `null`. In that case, the job definition's priority no longer applies but a new job's priority is determined as specified in the process model. | [optional] 
**includeJobs** | **bool** | A boolean value indicating whether existing jobs of the given definition should receive the priority as well. Default value is `false`. Can only be `true` when the __priority__ parameter is not `null`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


