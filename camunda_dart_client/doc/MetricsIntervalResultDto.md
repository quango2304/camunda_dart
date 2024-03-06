# openapi.model.MetricsIntervalResultDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timestamp** | [**DateTime**](DateTime.md) | The interval timestamp. | [optional] 
**name** | **String** | The name of the metric. | [optional] 
**reporter** | **String** | The reporter of the metric. `null` if the metrics are aggregated by reporter. | [optional] 
**value** | **int** | The value of the metric aggregated by the interval. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


