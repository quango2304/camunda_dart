# openapi.model.JobSuspensionStateDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**suspended** | **bool** | A Boolean value which indicates whether to activate or suspend a given instance  (e.g. process instance, job, job definition, or batch). When the value is set to true,  the given instance will be suspended and when the value is set to false,  the given instance will be activated. | [optional] 
**jobDefinitionId** | **String** | The job definition id of the jobs to activate or suspend. | [optional] 
**processDefinitionId** | **String** | The process definition id of the jobs to activate or suspend. | [optional] 
**processInstanceId** | **String** | The process instance id of the jobs to activate or suspend. | [optional] 
**processDefinitionKey** | **String** | The process definition key of the jobs to activate or suspend. | [optional] 
**processDefinitionTenantId** | **String** | Only activate or suspend jobs of a process definition which belongs to a tenant with the given id. Works only when selecting with `processDefinitionKey`. | [optional] 
**processDefinitionWithoutTenantId** | **bool** | Only activate or suspend jobs of a process definition which belongs to no tenant. Value may only be `true`, as `false` is the default behavior. Works only when selecting with `processDefinitionKey`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


