//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for HistoricTaskInstanceQueryDto
void main() {
  // final instance = HistoricTaskInstanceQueryDto();

  group('test HistoricTaskInstanceQueryDto', () {
    // Filter by task id.
    // String taskId
    test('to test the property `taskId`', () async {
      // TODO
    });

    // Filter by parent task id.
    // String taskParentTaskId
    test('to test the property `taskParentTaskId`', () async {
      // TODO
    });

    // Filter by process instance id.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // Filter by process instance business key.
    // String processInstanceBusinessKey
    test('to test the property `processInstanceBusinessKey`', () async {
      // TODO
    });

    // Filter by process instances with one of the give business keys. The keys need to be in a comma-separated list.
    // List<String> processInstanceBusinessKeyIn (default value: const [])
    test('to test the property `processInstanceBusinessKeyIn`', () async {
      // TODO
    });

    // Filter by  process instance business key that has the parameter value as a substring.
    // String processInstanceBusinessKeyLike
    test('to test the property `processInstanceBusinessKeyLike`', () async {
      // TODO
    });

    // Filter by the id of the execution that executed the task.
    // String executionId
    test('to test the property `executionId`', () async {
      // TODO
    });

    // Filter by process definition id.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // Restrict to tasks that belong to a process definition with the given key.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // Restrict to tasks that belong to a process definition with the given name.
    // String processDefinitionName
    test('to test the property `processDefinitionName`', () async {
      // TODO
    });

    // Filter by case instance id.
    // String caseInstanceId
    test('to test the property `caseInstanceId`', () async {
      // TODO
    });

    // Filter by the id of the case execution that executed the task.
    // String caseExecutionId
    test('to test the property `caseExecutionId`', () async {
      // TODO
    });

    // Filter by case definition id.
    // String caseDefinitionId
    test('to test the property `caseDefinitionId`', () async {
      // TODO
    });

    // Restrict to tasks that belong to a case definition with the given key.
    // String caseDefinitionKey
    test('to test the property `caseDefinitionKey`', () async {
      // TODO
    });

    // Restrict to tasks that belong to a case definition with the given name.
    // String caseDefinitionName
    test('to test the property `caseDefinitionName`', () async {
      // TODO
    });

    // Only include tasks which belong to one of the passed  activity instance ids.
    // List<String> activityInstanceIdIn (default value: const [])
    test('to test the property `activityInstanceIdIn`', () async {
      // TODO
    });

    // Restrict to tasks that have the given name.
    // String taskName
    test('to test the property `taskName`', () async {
      // TODO
    });

    // Restrict to tasks that have a name with the given parameter value as substring.
    // String taskNameLike
    test('to test the property `taskNameLike`', () async {
      // TODO
    });

    // Restrict to tasks that have the given description.
    // String taskDescription
    test('to test the property `taskDescription`', () async {
      // TODO
    });

    // Restrict to tasks that have a description that has the parameter value as a substring.
    // String taskDescriptionLike
    test('to test the property `taskDescriptionLike`', () async {
      // TODO
    });

    // Restrict to tasks that have the given key.
    // String taskDefinitionKey
    test('to test the property `taskDefinitionKey`', () async {
      // TODO
    });

    // Restrict to tasks that have one of the passed  task definition keys.
    // List<String> taskDefinitionKeyIn (default value: const [])
    test('to test the property `taskDefinitionKeyIn`', () async {
      // TODO
    });

    // Restrict to tasks that have the given delete reason.
    // String taskDeleteReason
    test('to test the property `taskDeleteReason`', () async {
      // TODO
    });

    // Restrict to tasks that have a delete reason that has the parameter value as a substring.
    // String taskDeleteReasonLike
    test('to test the property `taskDeleteReasonLike`', () async {
      // TODO
    });

    // Restrict to tasks that the given user is assigned to.
    // String taskAssignee
    test('to test the property `taskAssignee`', () async {
      // TODO
    });

    // Restrict to tasks that are assigned to users with the parameter value as a substring.
    // String taskAssigneeLike
    test('to test the property `taskAssigneeLike`', () async {
      // TODO
    });

    // Restrict to tasks that the given user owns.
    // String taskOwner
    test('to test the property `taskOwner`', () async {
      // TODO
    });

    // Restrict to tasks that are owned by users with the parameter value as a substring.
    // String taskOwnerLike
    test('to test the property `taskOwnerLike`', () async {
      // TODO
    });

    // Restrict to tasks that have the given priority.
    // int taskPriority
    test('to test the property `taskPriority`', () async {
      // TODO
    });

    // If set to `true`, restricts the query to all tasks that are assigned.
    // bool assigned
    test('to test the property `assigned`', () async {
      // TODO
    });

    // If set to `true`, restricts the query to all tasks that are unassigned.
    // bool unassigned
    test('to test the property `unassigned`', () async {
      // TODO
    });

    // Only include finished tasks. Value may only be `true`, as `false` is the default behavior.
    // bool finished
    test('to test the property `finished`', () async {
      // TODO
    });

    // Only include unfinished tasks. Value may only be `true`, as `false` is the default behavior.
    // bool unfinished
    test('to test the property `unfinished`', () async {
      // TODO
    });

    // Only include tasks of finished processes. Value may only be `true`, as `false` is the default behavior.
    // bool processFinished
    test('to test the property `processFinished`', () async {
      // TODO
    });

    // Only include tasks of unfinished processes. Value may only be `true`, as `false` is the default behavior.
    // bool processUnfinished
    test('to test the property `processUnfinished`', () async {
      // TODO
    });

    // Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime taskDueDate
    test('to test the property `taskDueDate`', () async {
      // TODO
    });

    // Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime taskDueDateBefore
    test('to test the property `taskDueDateBefore`', () async {
      // TODO
    });

    // Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime taskDueDateAfter
    test('to test the property `taskDueDateAfter`', () async {
      // TODO
    });

    // Only include tasks which have no due date. Value may only be `true`, as `false` is the default behavior.
    // bool withoutTaskDueDate
    test('to test the property `withoutTaskDueDate`', () async {
      // TODO
    });

    // Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime taskFollowUpDate
    test('to test the property `taskFollowUpDate`', () async {
      // TODO
    });

    // Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime taskFollowUpDateBefore
    test('to test the property `taskFollowUpDateBefore`', () async {
      // TODO
    });

    // Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime taskFollowUpDateAfter
    test('to test the property `taskFollowUpDateAfter`', () async {
      // TODO
    });

    // Restrict to tasks that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime startedBefore
    test('to test the property `startedBefore`', () async {
      // TODO
    });

    // Restrict to tasks that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime startedAfter
    test('to test the property `startedAfter`', () async {
      // TODO
    });

    // Restrict to tasks that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime finishedBefore
    test('to test the property `finishedBefore`', () async {
      // TODO
    });

    // Restrict to tasks that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime finishedAfter
    test('to test the property `finishedAfter`', () async {
      // TODO
    });

    // Filter by a  list of tenant ids. A task instance must have one of the given tenant ids.
    // List<String> tenantIdIn (default value: const [])
    test('to test the property `tenantIdIn`', () async {
      // TODO
    });

    // Only include historic task instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
    // bool withoutTenantId
    test('to test the property `withoutTenantId`', () async {
      // TODO
    });

    // Only include tasks that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`.  `key` and `value` may not contain underscore or comma characters.
    // List<VariableQueryParameterDto> taskVariables (default value: const [])
    test('to test the property `taskVariables`', () async {
      // TODO
    });

    // Only include tasks that belong to process instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`; * `notLike`.  `key` and `value` may not contain underscore or comma characters.
    // List<VariableQueryParameterDto> processVariables (default value: const [])
    test('to test the property `processVariables`', () async {
      // TODO
    });

    // Match the variable name provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
    // bool variableNamesIgnoreCase
    test('to test the property `variableNamesIgnoreCase`', () async {
      // TODO
    });

    // Match the variable value provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
    // bool variableValuesIgnoreCase
    test('to test the property `variableValuesIgnoreCase`', () async {
      // TODO
    });

    // Restrict to tasks with a historic identity link to the given user.
    // String taskInvolvedUser
    test('to test the property `taskInvolvedUser`', () async {
      // TODO
    });

    // Restrict to tasks with a historic identity link to the given group.
    // String taskInvolvedGroup
    test('to test the property `taskInvolvedGroup`', () async {
      // TODO
    });

    // Restrict to tasks with a historic identity link to the given candidate user.
    // String taskHadCandidateUser
    test('to test the property `taskHadCandidateUser`', () async {
      // TODO
    });

    // Restrict to tasks with a historic identity link to the given candidate group.
    // String taskHadCandidateGroup
    test('to test the property `taskHadCandidateGroup`', () async {
      // TODO
    });

    // Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior.
    // bool withCandidateGroups
    test('to test the property `withCandidateGroups`', () async {
      // TODO
    });

    // Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior.
    // bool withoutCandidateGroups
    test('to test the property `withoutCandidateGroups`', () async {
      // TODO
    });

    // A JSON array of nested historic task instance queries with OR semantics.  A task instance matches a nested query if it fulfills at least one of the query's predicates.  With multiple nested queries, a task instance must fulfill at least one predicate of each query ([Conjunctive Normal Form](https://en.wikipedia.org/wiki/Conjunctive_normal_form)).  All task instance query properties can be used except for: `sorting`, `withCandidateGroups`, ` withoutCandidateGroups`.  See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-engine-api/#or-queries) for more information about OR queries.
    // List<HistoricTaskInstanceQueryDto> orQueries (default value: const [])
    test('to test the property `orQueries`', () async {
      // TODO
    });

    // An array of criteria to sort the result by. Each element of the array is                     an object that specifies one ordering. The position in the array                     identifies the rank of an ordering, i.e., whether it is primary, secondary,                     etc. Sorting has no effect for `count` endpoints
    // List<HistoricTaskInstanceQueryDtoSortingInner> sorting (default value: const [])
    test('to test the property `sorting`', () async {
      // TODO
    });


  });

}
