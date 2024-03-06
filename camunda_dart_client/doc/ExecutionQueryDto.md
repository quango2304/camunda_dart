# openapi.model.ExecutionQueryDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**businessKey** | **String** | Filter by the business key of the process instances the executions belong to. | [optional] 
**processDefinitionId** | **String** | Filter by the process definition the executions run on. | [optional] 
**processDefinitionKey** | **String** | Filter by the key of the process definition the executions run on. | [optional] 
**processInstanceId** | **String** | Filter by the id of the process instance the execution belongs to. | [optional] 
**activityId** | **String** | Filter by the id of the activity the execution currently executes. | [optional] 
**signalEventSubscriptionName** | **String** | Select only those executions that expect a signal of the given name. | [optional] 
**messageEventSubscriptionName** | **String** | Select only those executions that expect a message of the given name. | [optional] 
**active** | **bool** | Only include active executions. Value may only be `true`, as `false` is the default behavior. | [optional] 
**suspended** | **bool** | Only include suspended executions. Value may only be `true`, as `false` is the default behavior. | [optional] 
**incidentId** | **String** | Filter by the incident id. | [optional] 
**incidentType** | **String** | Filter by the incident type. See the [User Guide](/manual/develop/user-guide/process-engine/incidents/#incident-types) for a list of incident types. | [optional] 
**incidentMessage** | **String** | Filter by the incident message. Exact match. | [optional] 
**incidentMessageLike** | **String** | Filter by the incident message that the parameter is a substring of. | [optional] 
**tenantIdIn** | **List<String>** | Filter by a  list of tenant ids. An execution must have one of the given tenant ids. | [optional] [default to const []]
**variables** | [**List<VariableQueryParameterDto>**](VariableQueryParameterDto.md) | An array to only include executions that have variables with certain values.  The array consists of objects with the three properties `name`, `operator` and `value`. `name (String)` is the variable name, `operator (String)` is the comparison operator to be used and `value` the variable value. `value` may be `String`, `Number` or `Boolean`.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. | [optional] [default to const []]
**processVariables** | [**List<VariableQueryParameterDto>**](VariableQueryParameterDto.md) | An array to only include executions that belong to a process instance with variables with certain values.  The array consists of objects with the three properties `name`, `operator` and `value`. `name (String)` is the variable name, `operator (String)` is the comparison operator to be used and `value` the variable value. `value` may be `String`, `Number` or `Boolean`.  Valid operator values are: `eq` - equal to; `neq` - not equal to. | [optional] [default to const []]
**variableNamesIgnoreCase** | **bool** | Match all variable names provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal. | [optional] 
**variableValuesIgnoreCase** | **bool** | Match all variable values provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal. | [optional] 
**sorting** | [**List<ExecutionQueryDtoSortingInner>**](ExecutionQueryDtoSortingInner.md) | An array of criteria to sort the result by. Each element of the array is                        an object that specifies one ordering. The position in the array                        identifies the rank of an ordering, i.e., whether it is primary, secondary,                        etc. Has no effect for the `/count` endpoint | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


