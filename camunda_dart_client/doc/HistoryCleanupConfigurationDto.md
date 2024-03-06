# openapi.model.HistoryCleanupConfigurationDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**batchWindowStartTime** | [**DateTime**](DateTime.md) | Start time of the current or next batch window. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**batchWindowEndTime** | [**DateTime**](DateTime.md) | End time of the current or next batch window. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**enabled** | **bool** | Indicates whether the engine node participates in history cleanup or not. The default is `true`. Participation can be disabled via [Process Engine Configuration](https://docs.camunda.org/manual/7.20/reference/deployment-descriptors/tags/process-engine/#history-cleanup-enabled).  For more details, see [Cleanup Execution Participation per Node](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#cleanup-execution-participation-per-node). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


