# openapi.model.SetRemovalTimeToHistoricDecisionInstancesDto

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
**hierarchical** | **bool** | Sets the removal time to all historic decision instances in the hierarchy. Value may only be `true`, as `false` is the default behavior. | [optional] 
**historicDecisionInstanceQuery** | [**HistoricDecisionInstanceQueryDto**](HistoricDecisionInstanceQueryDto.md) |  | [optional] 
**historicDecisionInstanceIds** | **List<String>** | The ids of the historic decision instances to set the removal time for. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


