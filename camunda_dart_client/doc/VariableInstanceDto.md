# openapi.model.VariableInstanceDto

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
**processDefinitionId** | **String** | The id of the process definition that this variable instance belongs to. | [optional] 
**processInstanceId** | **String** | The id of the process instance that this variable instance belongs to. | [optional] 
**executionId** | **String** | The id of the execution that this variable instance belongs to. | [optional] 
**caseInstanceId** | **String** | The id of the case instance that this variable instance belongs to. | [optional] 
**caseExecutionId** | **String** | The id of the case execution that this variable instance belongs to. | [optional] 
**taskId** | **String** | The id of the task that this variable instance belongs to. | [optional] 
**batchId** | **String** | The id of the batch that this variable instance belongs to.< | [optional] 
**activityInstanceId** | **String** | The id of the activity instance that this variable instance belongs to. | [optional] 
**tenantId** | **String** | The id of the tenant that this variable instance belongs to. | [optional] 
**errorMessage** | **String** | An error message in case a Java Serialized Object could not be de-serialized. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


