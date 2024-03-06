# openapi.model.HistoricVariableInstanceQueryDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**variableName** | **String** | Filter by variable name. | [optional] 
**variableNameLike** | **String** | Restrict to variables with a name like the parameter. | [optional] 
**variableValue** | [**Object**](.md) | Filter by variable value. May be `String`, `Number` or `Boolean`. | [optional] 
**variableNamesIgnoreCase** | **bool** | Match the variable name provided in `variableName` and `variableNameLike` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal. | [optional] 
**variableValuesIgnoreCase** | **bool** | Match the variable value provided in `variableValue` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal. | [optional] 
**variableTypeIn** | **List<String>** | Only include historic variable instances which belong to one of the passed and comma- separated variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type 'serializable'. | [optional] [default to const []]
**includeDeleted** | **bool** | Include variables that has already been deleted during the execution. | [optional] 
**processInstanceId** | **String** | Filter by the process instance the variable belongs to. | [optional] 
**processInstanceIdIn** | **List<String>** | Only include historic variable instances which belong to one of the passed  process instance ids. | [optional] [default to const []]
**processDefinitionId** | **String** | Filter by the process definition the variable belongs to. | [optional] 
**processDefinitionKey** | **String** | Filter by a key of the process definition the variable belongs to. | [optional] 
**executionIdIn** | **List<String>** | Only include historic variable instances which belong to one of the passed and  execution ids. | [optional] [default to const []]
**caseInstanceId** | **String** | Filter by the case instance the variable belongs to. | [optional] 
**caseExecutionIdIn** | **List<String>** | Only include historic variable instances which belong to one of the passed and  case execution ids. | [optional] [default to const []]
**caseActivityIdIn** | **List<String>** | Only include historic variable instances which belong to one of the passed and  case activity ids. | [optional] [default to const []]
**taskIdIn** | **List<String>** | Only include historic variable instances which belong to one of the passed and  task ids. | [optional] [default to const []]
**activityInstanceIdIn** | **List<String>** | Only include historic variable instances which belong to one of the passed and  activity instance ids. | [optional] [default to const []]
**tenantIdIn** | **List<String>** | Only include historic variable instances which belong to one of the passed and comma- separated tenant ids. | [optional] [default to const []]
**withoutTenantId** | **bool** | Only include historic variable instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
**variableNameIn** | **List<String>** | Only include historic variable instances which belong to one of the passed  variable names. | [optional] [default to const []]
**sorting** | [**List<HistoricVariableInstanceQueryDtoSortingInner>**](HistoricVariableInstanceQueryDtoSortingInner.md) | An array of criteria to sort the result by. Each element of the array is                      an object that specifies one ordering. The position in the array                      identifies the rank of an ordering, i.e., whether it is primary, secondary,                      etc. Sorting has no effect for `count` endpoints | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


