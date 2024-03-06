# openapi.model.CalledProcessDefinitionDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the process definition | [optional] 
**key** | **String** | The key of the process definition, i.e., the id of the BPMN 2.0 XML process definition. | [optional] 
**category** | **String** | The category of the process definition. | [optional] 
**description** | **String** | The description of the process definition. | [optional] 
**name** | **String** | The name of the process definition. | [optional] 
**version** | **int** | The version of the process definition that the engine assigned to it. | [optional] 
**resource** | **String** | The file name of the process definition. | [optional] 
**deploymentId** | **String** | The deployment id of the process definition. | [optional] 
**diagram** | **String** | The file name of the process definition diagram, if it exists. | [optional] 
**suspended** | **bool** | A flag indicating whether the definition is suspended or not. | [optional] 
**tenantId** | **String** | The tenant id of the process definition. | [optional] 
**versionTag** | **String** | The version tag of the process definition. | [optional] 
**historyTimeToLive** | **int** | History time to live value of the process definition. Is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup). | [optional] 
**startableInTasklist** | **bool** | A flag indicating whether the process definition is startable in Tasklist or not. | [optional] 
**calledFromActivityIds** | **List<String>** | Ids of the CallActivities which call this process. | [optional] [default to const []]
**callingProcessDefinitionId** | **String** | The id of the calling process definition | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


