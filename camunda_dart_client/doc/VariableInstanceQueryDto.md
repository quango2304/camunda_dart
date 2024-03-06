# openapi.model.VariableInstanceQueryDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**variableName** | **String** | Filter by variable instance name. | [optional] 
**variableNameLike** | **String** | Filter by the variable instance name. The parameter can include the wildcard `%` to express like-strategy such as: starts with (`%`name), ends with (name`%`) or contains (`%`name`%`). | [optional] 
**processInstanceIdIn** | **List<String>** | Only include variable instances which belong to one of the passed  process instance ids. | [optional] [default to const []]
**executionIdIn** | **List<String>** | Only include variable instances which belong to one of the passed  execution ids. | [optional] [default to const []]
**caseInstanceIdIn** | **List<String>** | Only include variable instances which belong to one of the passed  case instance ids. | [optional] [default to const []]
**caseExecutionIdIn** | **List<String>** | Only include variable instances which belong to one of the passed  case execution ids. | [optional] [default to const []]
**taskIdIn** | **List<String>** | Only include variable instances which belong to one of the passed  task ids. | [optional] [default to const []]
**batchIdIn** | **List<String>** | Only include variable instances which belong to one of the passed  batch ids. | [optional] [default to const []]
**activityInstanceIdIn** | **List<String>** | Only include variable instances which belong to one of the passed  activity instance ids. | [optional] [default to const []]
**tenantIdIn** | **List<String>** | Only include variable instances which belong to one of the passed  tenant ids. | [optional] [default to const []]
**variableValues** | [**List<VariableQueryParameterDto>**](VariableQueryParameterDto.md) | An array to only include variable instances that have the certain values. The array consists of objects with the three properties `name`, `operator` and `value`. `name (String)` is the variable name, `operator (String)` is the comparison operator to be used and `value` the variable value. `value` may be `String`, `Number` or `Boolean`.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like` | [optional] [default to const []]
**variableNamesIgnoreCase** | **bool** | Match all variable names provided in `variableValues` case-insensitively. If set to `true` **variableName** and **variablename** are treated as equal. | [optional] 
**variableValuesIgnoreCase** | **bool** | Match all variable values provided in `variableValues` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal. | [optional] 
**variableScopeIdIn** | **List<String>** | Only include variable instances which belong to one of passed scope ids. | [optional] [default to const []]
**sorting** | [**List<VariableInstanceQueryDtoSortingInner>**](VariableInstanceQueryDtoSortingInner.md) | An array of criteria to sort the result by. Each element of the array is an object that specifies one ordering.                       The position in the array identifies the rank of an ordering, i.e., whether it is primary, secondary, etc.                       Sorting has no effect for `count` endpoints | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


