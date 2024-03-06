# openapi.model.DeleteHistoricProcessInstancesDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**historicProcessInstanceIds** | **List<String>** | A list historic process instance ids to delete. | [optional] [default to const []]
**historicProcessInstanceQuery** | [**HistoricProcessInstanceQueryDto**](HistoricProcessInstanceQueryDto.md) |  | [optional] 
**deleteReason** | **String** | A string with delete reason. | [optional] 
**failIfNotExists** | **bool** | If set to `false`, the request will still be successful if one ore more of the process ids are not found. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


