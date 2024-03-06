# openapi.model.SetRemovalTimeToHistoricProcessInstancesDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**absoluteRemovalTime** | [**DateTime**](DateTime.md) | The date for which the instances shall be removed. Value may not be `null`.  **Note:** Cannot be set in conjunction with `clearedRemovalTime` or `calculatedRemovalTime`. | [optional] 
**clearedRemovalTime** | **bool** | Sets the removal time to `null`. Value may only be `true`, as `false` is the default behavior.  **Note:** Cannot be set in conjunction with `absoluteRemovalTime` or `calculatedRemovalTime`. | [optional] 
**calculatedRemovalTime** | **bool** | The removal time is calculated based on the engine's configuration settings. Value may only be `true`, as `false` is the default behavior.  **Note:** Cannot be set in conjunction with `absoluteRemovalTime` or `clearedRemovalTime`. | [optional] 
**historicProcessInstanceIds** | **List<String>** | The id of the process instance. | [optional] [default to const []]
**historicProcessInstanceQuery** | [**HistoricProcessInstanceQueryDto**](HistoricProcessInstanceQueryDto.md) |  | [optional] 
**hierarchical** | **bool** | Sets the removal time to all historic process instances in the hierarchy. Value may only be `true`, as `false` is the default behavior. | [optional] 
**updateInChunks** | **bool** | Handles removal time updates in chunks, taking into account the defined size in `removalTimeUpdateChunkSize` in the process engine configuration. The size of the  chunks can also be overridden per call with the `updateChunkSize` parameter. Enabling this option can lead to multiple executions of the resulting jobs, preventing the database transaction from timing out by limiting the number of rows to update. Value may only be `true`, as `false` is the default behavior. | [optional] 
**updateChunkSize** | **int** | Defines the size of the chunks in which removal time updates are processed. The value must be a positive integer between `1` and `500`. This only has an  effect if `updateInChunks` is set to `true`. If undefined, the operation uses the  `removalTimeUpdateChunkSize` defined in the process engine configuration. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


