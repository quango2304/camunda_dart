# openapi.model.HistoricDecisionOutputInstanceDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the decision output value. | [optional] 
**decisionInstanceId** | **String** | The id of the decision instance the output value belongs to. | [optional] 
**clauseId** | **String** | The id of the clause the output value belongs to. | [optional] 
**clauseName** | **String** | The name of the clause the output value belongs to. | [optional] 
**ruleId** | **String** | The id of the rule the output value belongs to. | [optional] 
**ruleOrder** | **int** | The order of the rule the output value belongs to. | [optional] 
**errorMessage** | **String** | An error message in case a Java Serialized Object could not be de-serialized. | [optional] 
**variableName** | **String** | The name of the output variable. | [optional] 
**type** | **String** | The value type of the variable. | [optional] 
**createTime** | [**DateTime**](DateTime.md) | The time the variable was inserted.  [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**removalTime** | [**DateTime**](DateTime.md) | The time after which the entry should be removed by the History Cleanup job. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**rootProcessInstanceId** | **String** | The process instance id of the root process instance that initiated the process containing this entry. | [optional] 
**value** | [**Object**](.md) | The variable's value. Value differs depending on the variable's type and on the `disableCustomObjectDeserialization` parameter. | [optional] 
**valueInfo** | [**Map<String, Object>**](Object.md) | A JSON object containing additional, value-type-dependent properties.  For variables of type `Object`, the following properties are returned:  * `objectTypeName`: A string representation of the object's type name.  * `serializationDataFormat`: The serialization format used to store the variable. | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


