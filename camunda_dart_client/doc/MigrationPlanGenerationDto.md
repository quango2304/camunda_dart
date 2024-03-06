# openapi.model.MigrationPlanGenerationDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sourceProcessDefinitionId** | **String** | The id of the source process definition for the migration. | [optional] 
**targetProcessDefinitionId** | **String** | The id of the target process definition for the migration. | [optional] 
**updateEventTriggers** | **bool** | A boolean flag indicating whether instructions between events should be configured to update the event triggers. | [optional] 
**variables** | [**Map<String, VariableValueDto>**](VariableValueDto.md) | A map of variables which will be set into the process instances' scope. Each key is a variable name and each value a JSON variable value object. | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


