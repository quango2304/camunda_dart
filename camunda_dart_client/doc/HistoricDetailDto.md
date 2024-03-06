# openapi.model.HistoricDetailDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the historic detail. | [optional] 
**type** | **String** | The type of the historic detail. Either `formField` for a submitted form field value or `variableUpdate` for variable updates. | [optional] 
**processDefinitionKey** | **String** | The key of the process definition that this historic detail belongs to. | [optional] 
**processDefinitionId** | **String** | The id of the process definition that this historic detail belongs to. | [optional] 
**processInstanceId** | **String** | The id of the process instance the historic detail belongs to. | [optional] 
**activityInstanceId** | **String** | The id of the activity instance the historic detail belongs to. | [optional] 
**executionId** | **String** | The id of the execution the historic detail belongs to. | [optional] 
**caseDefinitionKey** | **String** | The key of the case definition that this historic detail belongs to. | [optional] 
**caseDefinitionId** | **String** | The id of the case definition that this historic detail belongs to. | [optional] 
**caseInstanceId** | **String** | The id of the case instance the historic detail belongs to. | [optional] 
**caseExecutionId** | **String** | The id of the case execution the historic detail belongs to. | [optional] 
**taskId** | **String** | The id of the task the historic detail belongs to. | [optional] 
**tenantId** | **String** | The id of the tenant that this historic detail belongs to. | [optional] 
**userOperationId** | **String** | The id of user operation which links historic detail with [user operation log](https://docs.camunda.org/manual/7.20/reference/rest/history/user-operation-log/) entries. | [optional] 
**time** | [**DateTime**](DateTime.md) | The time when this historic detail occurred. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**removalTime** | [**DateTime**](DateTime.md) | The time after which the historic detail should be removed by the History Cleanup job. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**rootProcessInstanceId** | **String** | The process instance id of the root process instance that initiated the process containing this historic detail. | [optional] 
**fieldId** | **String** | The id of the form field.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `formField`. | [optional] 
**fieldValue** | [**Object**](.md) | The submitted form field value. The value differs depending on the form field's type and on the `deserializeValue` parameter.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `formField`. | [optional] 
**variableName** | **String** | The name of the variable which has been updated.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`. | [optional] 
**variableInstanceId** | **String** | The id of the associated variable instance.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`. | [optional] 
**variableType** | **String** | The value type of the variable.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`. | [optional] 
**value** | [**Object**](.md) | The variable's value. Value differs depending on the variable's type and on the deserializeValues parameter.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`. | [optional] 
**valueInfo** | [**Map<String, Object>**](Object.md) | A JSON object containing additional, value-type-dependent properties. For variables of type `Object`, the following properties are returned:  * `objectTypeName`: A string representation of the object's type name. * `serializationDataFormat`: The serialization format used to store the variable.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`. | [optional] [default to const {}]
**initial** | **bool** | Returns `true` for variable updates that contains the initial values of the variables.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`. | [optional] 
**revision** | **int** | The revision of the historic variable update.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`. | [optional] 
**errorMessage** | **String** | An error message in case a Java Serialized Object could not be de-serialized.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


