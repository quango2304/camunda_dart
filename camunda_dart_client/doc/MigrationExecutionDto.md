# openapi.model.MigrationExecutionDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**migrationPlan** | [**MigrationPlanDto**](MigrationPlanDto.md) |  | [optional] 
**processInstanceIds** | **List<String>** | A list of process instance ids to migrate. | [optional] [default to const []]
**processInstanceQuery** | [**ProcessInstanceQueryDto**](ProcessInstanceQueryDto.md) |  | [optional] 
**skipCustomListeners** | **bool** | A boolean value to control whether execution listeners should be invoked during migration. | [optional] 
**skipIoMappings** | **bool** | A boolean value to control whether input/output mappings should be executed during migration. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


