# openapi.model.TransitionInstanceDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the transition instance. | [optional] 
**parentActivityInstanceId** | **String** | The id of the parent activity instance, for example a sub process instance. | [optional] 
**activityId** | **String** | The id of the activity that this instance enters (asyncBefore job) or leaves (asyncAfter job) | [optional] 
**activityName** | **String** | The name of the activity that this instance enters (asyncBefore job) or leaves (asyncAfter job) | [optional] 
**activityType** | **String** | The type of the activity that this instance enters (asyncBefore job) or leaves (asyncAfter job) | [optional] 
**processInstanceId** | **String** | The id of the process instance this instance is part of. | [optional] 
**processDefinitionId** | **String** | The id of the process definition. | [optional] 
**executionId** | **String** | The execution id. | [optional] 
**incidentIds** | **List<String>** | A list of incident ids. | [optional] [default to const []]
**incidents** | [**List<ActivityInstanceIncidentDto>**](ActivityInstanceIncidentDto.md) | A list of JSON objects containing incident specific properties: * `id`: the id of the incident * `activityId`: the activity id in which the incident occurred | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


