# openapi.model.ActivityInstanceDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the activity instance. | [optional] 
**parentActivityInstanceId** | **String** | The id of the parent activity instance, for example a sub process instance. | [optional] 
**activityId** | **String** | The id of the activity. | [optional] 
**activityName** | **String** | The name of the activity | [optional] 
**name** | **String** | The name of the activity. This property is deprecated. Please use 'activityName'. | [optional] 
**activityType** | **String** | The type of activity (corresponds to the XML element name in the BPMN 2.0, e.g., 'userTask') | [optional] 
**processInstanceId** | **String** | The id of the process instance this activity instance is part of. | [optional] 
**processDefinitionId** | **String** | The id of the process definition. | [optional] 
**childActivityInstances** | [**List<ActivityInstanceDto>**](ActivityInstanceDto.md) | A list of child activity instances. | [optional] [default to const []]
**childTransitionInstances** | [**List<TransitionInstanceDto>**](TransitionInstanceDto.md) | A list of child transition instances. A transition instance represents an execution waiting in an asynchronous continuation. | [optional] [default to const []]
**executionIds** | **List<String>** | A list of execution ids. | [optional] [default to const []]
**incidentIds** | **List<String>** | A list of incident ids. | [optional] [default to const []]
**incidents** | [**List<ActivityInstanceIncidentDto>**](ActivityInstanceIncidentDto.md) | A list of JSON objects containing incident specific properties: * `id`: the id of the incident * `activityId`: the activity id in which the incident occurred | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


