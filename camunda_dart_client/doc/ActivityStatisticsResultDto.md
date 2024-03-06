# openapi.model.ActivityStatisticsResultDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the activity the results are aggregated for. | [optional] 
**instances** | **int** | The total number of running process instances of this activity. | [optional] 
**failedJobs** | **int** | The total number of failed jobs for the running instances. **Note**: Will be `0` (not `null`), if failed jobs were excluded. | [optional] 
**incidents** | [**List<IncidentStatisticsResultDto>**](IncidentStatisticsResultDto.md) | Each item in the resulting array is an object which contains `incidentType` and `incidentCount`. **Note**: Will be an empty array, if `incidents` or `incidentsForType` were excluded. Furthermore, the array will be also empty if no incidents were found. | [optional] [default to const []]
**atClass** | **String** | The fully qualified class name of the data transfer object class. The class name might change in future releases. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


