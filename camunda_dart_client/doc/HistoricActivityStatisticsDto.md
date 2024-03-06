# openapi.model.HistoricActivityStatisticsDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the activity the results are aggregated for. | [optional] 
**instances** | **int** | The total number of all running instances of the activity. | [optional] 
**canceled** | **int** | The total number of all canceled instances of the activity. **Note:** Will be `0` (not `null`), if canceled activity instances were excluded. | [optional] 
**finished** | **int** | The total number of all finished instances of the activity. **Note:** Will be `0` (not `null`), if finished activity instances were excluded. | [optional] 
**completeScope** | **int** | The total number of all instances which completed a scope of the activity. **Note:** Will be `0` (not `null`), if activity instances which completed a scope were excluded. | [optional] 
**openIncidents** | **int** | The total number of open incidents for the activity. **Note:** Will be `0` (not `null`), if `incidents` is set to `false`. | [optional] 
**resolvedIncidents** | **int** | The total number of resolved incidents for the activity. **Note:** Will be `0` (not `null`), if `incidents` is set to `false`. | [optional] 
**deletedIncidents** | **int** | The total number of deleted incidents for the activity. **Note:** Will be `0` (not `null`), if `incidents` is set to `false`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


