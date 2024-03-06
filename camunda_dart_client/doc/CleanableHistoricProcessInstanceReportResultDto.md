# openapi.model.CleanableHistoricProcessInstanceReportResultDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**processDefinitionId** | **String** | The id of the process definition. | [optional] 
**processDefinitionKey** | **String** | The key of the process definition. | [optional] 
**processDefinitionName** | **String** | The name of the process definition. | [optional] 
**processDefinitionVersion** | **int** | The version of the process definition. | [optional] 
**historyTimeToLive** | **int** | The history time to live of the process definition. | [optional] 
**finishedProcessInstanceCount** | **int** | The count of the finished historic process instances. | [optional] 
**cleanableProcessInstanceCount** | **int** | The count of the cleanable historic process instances, referring to history time to live. | [optional] 
**tenantId** | **String** | The tenant id of the process definition. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


