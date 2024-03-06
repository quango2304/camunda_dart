# openapi.model.DurationReportResultDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**period** | **int** | Specifies a timespan within a year. **Note:** The period must be interpreted in conjunction with the returned `periodUnit`. | [optional] 
**periodUnit** | **String** | The unit of the given period. Possible values are `MONTH` and `QUARTER`. | [optional] 
**minimum** | **int** | The smallest duration in milliseconds of all completed process instances which were started in the given period. | [optional] 
**maximum** | **int** | The greatest duration in milliseconds of all completed process instances which were started in the given period. | [optional] 
**average** | **int** | The average duration in milliseconds of all completed process instances which were started in the given period. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


