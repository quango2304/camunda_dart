# openapi.model.MigrationPlanDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sourceProcessDefinitionId** | **String** | The id of the source process definition for the migration. | [optional] 
**targetProcessDefinitionId** | **String** | The id of the target process definition for the migration. | [optional] 
**instructions** | [**List<MigrationInstructionDto>**](MigrationInstructionDto.md) | A list of migration instructions which map equal activities. Each migration instruction is a JSON object with the following properties: | [optional] [default to const []]
**variables** | [**Map<String, VariableValueDto>**](VariableValueDto.md) | A map of variables which will be set into the process instances' scope. Each key is a variable name and each value a JSON variable value object. | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


