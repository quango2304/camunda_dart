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

// tests for TaskQueryDto
void main() {
  // final instance = TaskQueryDto();

  group('test TaskQueryDto', () {
    // Restrict to task with the given id.
    // String taskId
    test('to test the property `taskId`', () async {
      // TODO
    });

    // Restrict to tasks with any of the given ids.
    // List<String> taskIdIn (default value: const [])
    test('to test the property `taskIdIn`', () async {
      // TODO
    });

    // Restrict to tasks that belong to process instances with the given id.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // Restrict to tasks that belong to process instances with the given ids.
    // List<String> processInstanceIdIn (default value: const [])
    test('to test the property `processInstanceIdIn`', () async {
      // TODO
    });

    // Restrict to tasks that belong to process instances with the given business key.
    // String processInstanceBusinessKey
    test('to test the property `processInstanceBusinessKey`', () async {
      // TODO
    });

    // Restrict to tasks that belong to process instances with the given business key which  is described by an expression. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions.
    // String processInstanceBusinessKeyExpression
    test('to test the property `processInstanceBusinessKeyExpression`', () async {
      // TODO
    });

    // Restrict to tasks that belong to process instances with one of the give business keys.  The keys need to be in a comma-separated list.
    // List<String> processInstanceBusinessKeyIn (default value: const [])
    test('to test the property `processInstanceBusinessKeyIn`', () async {
      // TODO
    });

    // Restrict to tasks that have a process instance business key that has the parameter  value as a substring.
    // String processInstanceBusinessKeyLike
    test('to test the property `processInstanceBusinessKeyLike`', () async {
      // TODO
    });

    // Restrict to tasks that have a process instance business key that has the parameter  value as a substring and is described by an expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
    // String processInstanceBusinessKeyLikeExpression
    test('to test the property `processInstanceBusinessKeyLikeExpression`', () async {
      // TODO
    });

    // Restrict to tasks that belong to a process definition with the given id.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // Restrict to tasks that belong to a process definition with the given key.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // Restrict to tasks that belong to a process definition with one of the given keys. The  keys need to be in a comma-separated list.
    // List<String> processDefinitionKeyIn (default value: const [])
    test('to test the property `processDefinitionKeyIn`', () async {
      // TODO
    });

    // Restrict to tasks that belong to a process definition with the given name.
    // String processDefinitionName
    test('to test the property `processDefinitionName`', () async {
      // TODO
    });

    // Restrict to tasks that have a process definition name that has the parameter value as  a substring.
    // String processDefinitionNameLike
    test('to test the property `processDefinitionNameLike`', () async {
      // TODO
    });

    // Restrict to tasks that belong to an execution with the given id.
    // String executionId
    test('to test the property `executionId`', () async {
      // TODO
    });

    // Restrict to tasks that belong to case instances with the given id.
    // String caseInstanceId
    test('to test the property `caseInstanceId`', () async {
      // TODO
    });

    // Restrict to tasks that belong to case instances with the given business key.
    // String caseInstanceBusinessKey
    test('to test the property `caseInstanceBusinessKey`', () async {
      // TODO
    });

    // Restrict to tasks that have a case instance business key that has the parameter value  as a substring.
    // String caseInstanceBusinessKeyLike
    test('to test the property `caseInstanceBusinessKeyLike`', () async {
      // TODO
    });

    // Restrict to tasks that belong to a case definition with the given id.
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

    // Restrict to tasks that have a case definition name that has the parameter value as a  substring.
    // String caseDefinitionNameLike
    test('to test the property `caseDefinitionNameLike`', () async {
      // TODO
    });

    // Restrict to tasks that belong to a case execution with the given id.
    // String caseExecutionId
    test('to test the property `caseExecutionId`', () async {
      // TODO
    });

    // Only include tasks which belong to one of the passed and comma-separated activity  instance ids.
    // List<String> activityInstanceIdIn (default value: const [])
    test('to test the property `activityInstanceIdIn`', () async {
      // TODO
    });

    // Only include tasks which belong to one of the passed and comma-separated  tenant ids.
    // List<String> tenantIdIn (default value: const [])
    test('to test the property `tenantIdIn`', () async {
      // TODO
    });

    // Only include tasks which belong to no tenant. Value may only be `true`,  as `false` is the default behavior.
    // bool withoutTenantId (default value: false)
    test('to test the property `withoutTenantId`', () async {
      // TODO
    });

    // Restrict to tasks that the given user is assigned to.
    // String assignee
    test('to test the property `assignee`', () async {
      // TODO
    });

    // Restrict to tasks that the user described by the given expression is assigned to. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
    // String assigneeExpression
    test('to test the property `assigneeExpression`', () async {
      // TODO
    });

    // Restrict to tasks that have an assignee that has the parameter  value as a substring.
    // String assigneeLike
    test('to test the property `assigneeLike`', () async {
      // TODO
    });

    // Restrict to tasks that have an assignee that has the parameter value described by the  given expression as a substring. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
    // String assigneeLikeExpression
    test('to test the property `assigneeLikeExpression`', () async {
      // TODO
    });

    // Only include tasks which are assigned to one of the passed and comma-separated user ids.
    // List<String> assigneeIn (default value: const [])
    test('to test the property `assigneeIn`', () async {
      // TODO
    });

    // Only include tasks which are not assigned to one of the passed and comma-separated user ids.
    // List<String> assigneeNotIn (default value: const [])
    test('to test the property `assigneeNotIn`', () async {
      // TODO
    });

    // Restrict to tasks that the given user owns.
    // String owner
    test('to test the property `owner`', () async {
      // TODO
    });

    // Restrict to tasks that the user described by the given expression owns. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
    // String ownerExpression
    test('to test the property `ownerExpression`', () async {
      // TODO
    });

    // Only include tasks that are offered to the given group.
    // String candidateGroup
    test('to test the property `candidateGroup`', () async {
      // TODO
    });

    // Only include tasks that are offered to the group described by the given expression.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
    // String candidateGroupExpression
    test('to test the property `candidateGroupExpression`', () async {
      // TODO
    });

    // Only include tasks that are offered to the given user or to one of his groups.
    // String candidateUser
    test('to test the property `candidateUser`', () async {
      // TODO
    });

    // Only include tasks that are offered to the user described by the given expression.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
    // String candidateUserExpression
    test('to test the property `candidateUserExpression`', () async {
      // TODO
    });

    // Also include tasks that are assigned to users in candidate queries. Default is to only  include tasks that are not assigned to any user if you query by candidate user or group(s).
    // bool includeAssignedTasks (default value: false)
    test('to test the property `includeAssignedTasks`', () async {
      // TODO
    });

    // Only include tasks that the given user is involved in. A user is involved in a task if  an identity link exists between task and user (e.g., the user is the assignee).
    // String involvedUser
    test('to test the property `involvedUser`', () async {
      // TODO
    });

    // Only include tasks that the user described by the given expression is involved in. A user is involved in a task if an identity link exists between task and user (e.g., the user is the assignee). See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions.
    // String involvedUserExpression
    test('to test the property `involvedUserExpression`', () async {
      // TODO
    });

    // If set to `true`, restricts the query to all tasks that are assigned.
    // bool assigned (default value: false)
    test('to test the property `assigned`', () async {
      // TODO
    });

    // If set to `true`, restricts the query to all tasks that are unassigned.
    // bool unassigned (default value: false)
    test('to test the property `unassigned`', () async {
      // TODO
    });

    // Restrict to tasks that have the given key.
    // String taskDefinitionKey
    test('to test the property `taskDefinitionKey`', () async {
      // TODO
    });

    // Restrict to tasks that have one of the given keys. The keys need to be in a comma-separated list.
    // List<String> taskDefinitionKeyIn (default value: const [])
    test('to test the property `taskDefinitionKeyIn`', () async {
      // TODO
    });

    // Restrict to tasks that have a key that has the parameter value as a substring.
    // String taskDefinitionKeyLike
    test('to test the property `taskDefinitionKeyLike`', () async {
      // TODO
    });

    // Restrict to tasks that have the given name.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Restrict to tasks that do not have the given name.
    // String nameNotEqual
    test('to test the property `nameNotEqual`', () async {
      // TODO
    });

    // Restrict to tasks that have a name with the given parameter value as substring.
    // String nameLike
    test('to test the property `nameLike`', () async {
      // TODO
    });

    // Restrict to tasks that do not have a name with the given parameter value as substring.
    // String nameNotLike
    test('to test the property `nameNotLike`', () async {
      // TODO
    });

    // Restrict to tasks that have the given description.
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Restrict to tasks that have a description that has the parameter value as a substring.
    // String descriptionLike
    test('to test the property `descriptionLike`', () async {
      // TODO
    });

    // Restrict to tasks that have the given priority.
    // int priority
    test('to test the property `priority`', () async {
      // TODO
    });

    // Restrict to tasks that have a lower or equal priority.
    // int maxPriority
    test('to test the property `maxPriority`', () async {
      // TODO
    });

    // Restrict to tasks that have a higher or equal priority.
    // int minPriority
    test('to test the property `minPriority`', () async {
      // TODO
    });

    // Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`.
    // DateTime dueDate
    test('to test the property `dueDate`', () async {
      // TODO
    });

    // Restrict to tasks that are due on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
    // String dueDateExpression
    test('to test the property `dueDateExpression`', () async {
      // TODO
    });

    // Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.435+0200`.
    // DateTime dueAfter
    test('to test the property `dueAfter`', () async {
      // TODO
    });

    // Restrict to tasks that are due after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
    // String dueAfterExpression
    test('to test the property `dueAfterExpression`', () async {
      // TODO
    });

    // Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.243+0200`.
    // DateTime dueBefore
    test('to test the property `dueBefore`', () async {
      // TODO
    });

    // Restrict to tasks that are due before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
    // String dueBeforeExpression
    test('to test the property `dueBeforeExpression`', () async {
      // TODO
    });

    // Only include tasks which have no due date. Value may only be `true`,  as `false` is the default behavior.
    // bool withoutDueDate (default value: false)
    test('to test the property `withoutDueDate`', () async {
      // TODO
    });

    // Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.342+0200`.
    // DateTime followUpDate
    test('to test the property `followUpDate`', () async {
      // TODO
    });

    // Restrict to tasks that have a followUp date on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
    // String followUpDateExpression
    test('to test the property `followUpDateExpression`', () async {
      // TODO
    });

    // Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.542+0200`.
    // DateTime followUpAfter
    test('to test the property `followUpAfter`', () async {
      // TODO
    });

    // Restrict to tasks that have a followUp date after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
    // String followUpAfterExpression
    test('to test the property `followUpAfterExpression`', () async {
      // TODO
    });

    // Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.234+0200`.
    // String followUpBefore
    test('to test the property `followUpBefore`', () async {
      // TODO
    });

    // Restrict to tasks that have a followUp date before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
    // String followUpBeforeExpression
    test('to test the property `followUpBeforeExpression`', () async {
      // TODO
    });

    // Restrict to tasks that have no followUp date or a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.432+0200`. The typical use case is to query all `active` tasks for a user for a given date.
    // DateTime followUpBeforeOrNotExistent
    test('to test the property `followUpBeforeOrNotExistent`', () async {
      // TODO
    });

    // Restrict to tasks that have no followUp date or a followUp date before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
    // String followUpBeforeOrNotExistentExpression
    test('to test the property `followUpBeforeOrNotExistentExpression`', () async {
      // TODO
    });

    // Restrict to tasks that were created on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.324+0200`.
    // DateTime createdOn
    test('to test the property `createdOn`', () async {
      // TODO
    });

    // Restrict to tasks that were created on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
    // String createdOnExpression
    test('to test the property `createdOnExpression`', () async {
      // TODO
    });

    // Restrict to tasks that were created after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.342+0200`.
    // DateTime createdAfter
    test('to test the property `createdAfter`', () async {
      // TODO
    });

    // Restrict to tasks that were created after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
    // String createdAfterExpression
    test('to test the property `createdAfterExpression`', () async {
      // TODO
    });

    // Restrict to tasks that were created before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.332+0200`.
    // DateTime createdBefore
    test('to test the property `createdBefore`', () async {
      // TODO
    });

    // Restrict to tasks that were created before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
    // String createdBeforeExpression
    test('to test the property `createdBeforeExpression`', () async {
      // TODO
    });

    // Restrict to tasks that were updated after the given date. Every action that fires  a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) is considered as updating the task. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.332+0200`.
    // DateTime updatedAfter
    test('to test the property `updatedAfter`', () async {
      // TODO
    });

    // Restrict to tasks that were updated after the date described by the given expression. Every action that fires  a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) is considered as updating the task. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
    // String updatedAfterExpression
    test('to test the property `updatedAfterExpression`', () async {
      // TODO
    });

    // Restrict to tasks that are in the given delegation state. Valid values are `PENDING` and `RESOLVED`.
    // String delegationState
    test('to test the property `delegationState`', () async {
      // TODO
    });

    // Restrict to tasks that are offered to any of the given candidate groups. Takes a comma-separated list of group names, so for example `developers,support,sales`.
    // List<String> candidateGroups (default value: const [])
    test('to test the property `candidateGroups`', () async {
      // TODO
    });

    // Restrict to tasks that are offered to any of the candidate groups described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to `java.util.List` of Strings.
    // String candidateGroupsExpression
    test('to test the property `candidateGroupsExpression`', () async {
      // TODO
    });

    // Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior.
    // bool withCandidateGroups (default value: false)
    test('to test the property `withCandidateGroups`', () async {
      // TODO
    });

    // Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior.
    // bool withoutCandidateGroups (default value: false)
    test('to test the property `withoutCandidateGroups`', () async {
      // TODO
    });

    // Only include tasks which have a candidate user. Value may only be `true`, as `false` is the default behavior.
    // bool withCandidateUsers (default value: false)
    test('to test the property `withCandidateUsers`', () async {
      // TODO
    });

    // Only include tasks which have no candidate users. Value may only be `true`, as `false` is the default behavior.
    // bool withoutCandidateUsers (default value: false)
    test('to test the property `withoutCandidateUsers`', () async {
      // TODO
    });

    // Only include active tasks. Value may only be `true`, as `false` is the default behavior.
    // bool active (default value: false)
    test('to test the property `active`', () async {
      // TODO
    });

    // Only include suspended tasks. Value may only be `true`, as `false` is the default behavior.
    // bool suspended (default value: false)
    test('to test the property `suspended`', () async {
      // TODO
    });

    // A JSON array to only include tasks that have variables with certain values. The array consists of JSON objects with three properties `name`, `operator` and `value`. `name` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. `value` may be of type `String`, `Number` or `Boolean`.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
    // List<VariableQueryParameterDto> taskVariables (default value: const [])
    test('to test the property `taskVariables`', () async {
      // TODO
    });

    // A JSON array to only include tasks that belong to a process instance with variables with certain values. The array consists of JSON objects with three properties `name`, `operator` and `value`. `name` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. `value` may be of type `String`, `Number` or `Boolean`.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`; `notLike`. `key` and `value` may not contain underscore or comma characters.
    // List<VariableQueryParameterDto> processVariables (default value: const [])
    test('to test the property `processVariables`', () async {
      // TODO
    });

    // A JSON array to only include tasks that belong to a case instance with variables with certain values. The array consists of JSON objects with three properties `name`, `operator` and `value`. `name` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. `value` may be of type `String`, `Number` or `Boolean`.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
    // List<VariableQueryParameterDto> caseInstanceVariables (default value: const [])
    test('to test the property `caseInstanceVariables`', () async {
      // TODO
    });

    // Match all variable names in this query case-insensitively. If set `variableName` and `variablename` are treated as equal.
    // bool variableNamesIgnoreCase (default value: false)
    test('to test the property `variableNamesIgnoreCase`', () async {
      // TODO
    });

    // Match all variable values in this query case-insensitively. If set `variableValue` and `variablevalue` are treated as equal.
    // bool variableValuesIgnoreCase (default value: false)
    test('to test the property `variableValuesIgnoreCase`', () async {
      // TODO
    });

    // Restrict query to all tasks that are sub tasks of the given task. Takes a task id.
    // String parentTaskId
    test('to test the property `parentTaskId`', () async {
      // TODO
    });

    // A JSON array of nested task queries with OR semantics. A task matches a nested query if it fulfills *at least one* of the query's predicates. With multiple nested queries, a task must fulfill at least one predicate of *each* query ([Conjunctive Normal Form](https://en.wikipedia.org/wiki/Conjunctive_normal_form)).  All task query properties can be used except for: `sorting`, `withCandidateGroups`, `withoutCandidateGroups`, `withCandidateUsers`, `withoutCandidateUsers`  See the [User guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-engine-api/#or-queries) for more information about OR queries.
    // List<TaskQueryDto> orQueries (default value: const [])
    test('to test the property `orQueries`', () async {
      // TODO
    });

    // Apply sorting of the result
    // List<TaskQueryDtoSortingInner> sorting (default value: const [])
    test('to test the property `sorting`', () async {
      // TODO
    });


  });

}
