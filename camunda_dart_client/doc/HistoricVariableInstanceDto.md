# openapi.model.HistoricVariableInstanceDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | [**Object**](.md) | Can be any value - string, number, boolean, array or object.  **Note**: Not every endpoint supports every type. | [optional] 
**type** | **String** | The value type of the variable. | [optional] 
**valueInfo** | [**Map<String, Object>**](Object.md) | A JSON object containing additional, value-type-dependent properties. For serialized variables of type Object, the following properties can be provided:  * `objectTypeName`: A string representation of the object's type name. * `serializationDataFormat`: The serialization format used to store the variable.  For serialized variables of type File, the following properties can be provided:  * `filename`: The name of the file. This is not the variable name but the name that will be used when downloading the file again. * `mimetype`: The MIME type of the file that is being uploaded. * `encoding`: The encoding of the file that is being uploaded.  The following property can be provided for all value types:  * `transient`: Indicates whether the variable should be transient or not. See [documentation](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables#transient-variables) for more informations. (Not applicable for `decision-definition`, ` /process-instance/variables-async`, and `/migration/executeAsync` endpoints) | [optional] [default to const {}]
**id** | **String** | The id of the variable instance. | [optional] 
**name** | **String** | The name of the variable instance. | [optional] 
**processDefinitionKey** | **String** | The key of the process definition the variable instance belongs to. | [optional] 
**processDefinitionId** | **String** | The id of the process definition the variable instance belongs to. | [optional] 
**processInstanceId** | **String** | The process instance id the variable instance belongs to. | [optional] 
**executionId** | **String** | The execution id the variable instance belongs to. | [optional] 
**activityInstanceId** | **String** | The id of the activity instance in which the variable is valid. | [optional] 
**caseDefinitionKey** | **String** | The key of the case definition the variable instance belongs to. | [optional] 
**caseDefinitionId** | **String** | The id of the case definition the variable instance belongs to. | [optional] 
**caseInstanceId** | **String** | The case instance id the variable instance belongs to. | [optional] 
**caseExecutionId** | **String** | The case execution id the variable instance belongs to. | [optional] 
**taskId** | **String** | The id of the task the variable instance belongs to. | [optional] 
**tenantId** | **String** | The id of the tenant that this variable instance belongs to. | [optional] 
**errorMessage** | **String** | An error message in case a Java Serialized Object could not be de-serialized. | [optional] 
**state** | **String** | The current state of the variable. Can be 'CREATED' or 'DELETED'. | [optional] 
**createTime** | [**DateTime**](DateTime.md) | The time the variable was inserted. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**removalTime** | [**DateTime**](DateTime.md) | The time after which the variable should be removed by the History Cleanup job. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**rootProcessInstanceId** | **String** | The process instance id of the root process instance that initiated the process containing this variable. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


