# openapi.model.HistoricTaskInstanceQueryDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**taskId** | **String** | Filter by task id. | [optional] 
**taskParentTaskId** | **String** | Filter by parent task id. | [optional] 
**processInstanceId** | **String** | Filter by process instance id. | [optional] 
**processInstanceBusinessKey** | **String** | Filter by process instance business key. | [optional] 
**processInstanceBusinessKeyIn** | **List<String>** | Filter by process instances with one of the give business keys. The keys need to be in a comma-separated list. | [optional] [default to const []]
**processInstanceBusinessKeyLike** | **String** | Filter by  process instance business key that has the parameter value as a substring. | [optional] 
**executionId** | **String** | Filter by the id of the execution that executed the task. | [optional] 
**processDefinitionId** | **String** | Filter by process definition id. | [optional] 
**processDefinitionKey** | **String** | Restrict to tasks that belong to a process definition with the given key. | [optional] 
**processDefinitionName** | **String** | Restrict to tasks that belong to a process definition with the given name. | [optional] 
**caseInstanceId** | **String** | Filter by case instance id. | [optional] 
**caseExecutionId** | **String** | Filter by the id of the case execution that executed the task. | [optional] 
**caseDefinitionId** | **String** | Filter by case definition id. | [optional] 
**caseDefinitionKey** | **String** | Restrict to tasks that belong to a case definition with the given key. | [optional] 
**caseDefinitionName** | **String** | Restrict to tasks that belong to a case definition with the given name. | [optional] 
**activityInstanceIdIn** | **List<String>** | Only include tasks which belong to one of the passed  activity instance ids. | [optional] [default to const []]
**taskName** | **String** | Restrict to tasks that have the given name. | [optional] 
**taskNameLike** | **String** | Restrict to tasks that have a name with the given parameter value as substring. | [optional] 
**taskDescription** | **String** | Restrict to tasks that have the given description. | [optional] 
**taskDescriptionLike** | **String** | Restrict to tasks that have a description that has the parameter value as a substring. | [optional] 
**taskDefinitionKey** | **String** | Restrict to tasks that have the given key. | [optional] 
**taskDefinitionKeyIn** | **List<String>** | Restrict to tasks that have one of the passed  task definition keys. | [optional] [default to const []]
**taskDeleteReason** | **String** | Restrict to tasks that have the given delete reason. | [optional] 
**taskDeleteReasonLike** | **String** | Restrict to tasks that have a delete reason that has the parameter value as a substring. | [optional] 
**taskAssignee** | **String** | Restrict to tasks that the given user is assigned to. | [optional] 
**taskAssigneeLike** | **String** | Restrict to tasks that are assigned to users with the parameter value as a substring. | [optional] 
**taskOwner** | **String** | Restrict to tasks that the given user owns. | [optional] 
**taskOwnerLike** | **String** | Restrict to tasks that are owned by users with the parameter value as a substring. | [optional] 
**taskPriority** | **int** | Restrict to tasks that have the given priority. | [optional] 
**assigned** | **bool** | If set to `true`, restricts the query to all tasks that are assigned. | [optional] 
**unassigned** | **bool** | If set to `true`, restricts the query to all tasks that are unassigned. | [optional] 
**finished** | **bool** | Only include finished tasks. Value may only be `true`, as `false` is the default behavior. | [optional] 
**unfinished** | **bool** | Only include unfinished tasks. Value may only be `true`, as `false` is the default behavior. | [optional] 
**processFinished** | **bool** | Only include tasks of finished processes. Value may only be `true`, as `false` is the default behavior. | [optional] 
**processUnfinished** | **bool** | Only include tasks of unfinished processes. Value may only be `true`, as `false` is the default behavior. | [optional] 
**taskDueDate** | [**DateTime**](DateTime.md) | Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**taskDueDateBefore** | [**DateTime**](DateTime.md) | Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**taskDueDateAfter** | [**DateTime**](DateTime.md) | Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**withoutTaskDueDate** | **bool** | Only include tasks which have no due date. Value may only be `true`, as `false` is the default behavior. | [optional] 
**taskFollowUpDate** | [**DateTime**](DateTime.md) | Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**taskFollowUpDateBefore** | [**DateTime**](DateTime.md) | Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**taskFollowUpDateAfter** | [**DateTime**](DateTime.md) | Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**startedBefore** | [**DateTime**](DateTime.md) | Restrict to tasks that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**startedAfter** | [**DateTime**](DateTime.md) | Restrict to tasks that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**finishedBefore** | [**DateTime**](DateTime.md) | Restrict to tasks that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**finishedAfter** | [**DateTime**](DateTime.md) | Restrict to tasks that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**tenantIdIn** | **List<String>** | Filter by a  list of tenant ids. A task instance must have one of the given tenant ids. | [optional] [default to const []]
**withoutTenantId** | **bool** | Only include historic task instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
**taskVariables** | [**List<VariableQueryParameterDto>**](VariableQueryParameterDto.md) | Only include tasks that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`.  `key` and `value` may not contain underscore or comma characters. | [optional] [default to const []]
**processVariables** | [**List<VariableQueryParameterDto>**](VariableQueryParameterDto.md) | Only include tasks that belong to process instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`; * `notLike`.  `key` and `value` may not contain underscore or comma characters. | [optional] [default to const []]
**variableNamesIgnoreCase** | **bool** | Match the variable name provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal. | [optional] 
**variableValuesIgnoreCase** | **bool** | Match the variable value provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal. | [optional] 
**taskInvolvedUser** | **String** | Restrict to tasks with a historic identity link to the given user. | [optional] 
**taskInvolvedGroup** | **String** | Restrict to tasks with a historic identity link to the given group. | [optional] 
**taskHadCandidateUser** | **String** | Restrict to tasks with a historic identity link to the given candidate user. | [optional] 
**taskHadCandidateGroup** | **String** | Restrict to tasks with a historic identity link to the given candidate group. | [optional] 
**withCandidateGroups** | **bool** | Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior. | [optional] 
**withoutCandidateGroups** | **bool** | Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior. | [optional] 
**orQueries** | [**List<HistoricTaskInstanceQueryDto>**](HistoricTaskInstanceQueryDto.md) | A JSON array of nested historic task instance queries with OR semantics.  A task instance matches a nested query if it fulfills at least one of the query's predicates.  With multiple nested queries, a task instance must fulfill at least one predicate of each query ([Conjunctive Normal Form](https://en.wikipedia.org/wiki/Conjunctive_normal_form)).  All task instance query properties can be used except for: `sorting`, `withCandidateGroups`, ` withoutCandidateGroups`.  See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-engine-api/#or-queries) for more information about OR queries. | [optional] [default to const []]
**sorting** | [**List<HistoricTaskInstanceQueryDtoSortingInner>**](HistoricTaskInstanceQueryDtoSortingInner.md) | An array of criteria to sort the result by. Each element of the array is                     an object that specifies one ordering. The position in the array                     identifies the rank of an ordering, i.e., whether it is primary, secondary,                     etc. Sorting has no effect for `count` endpoints | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


