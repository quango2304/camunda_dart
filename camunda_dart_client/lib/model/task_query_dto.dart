//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TaskQueryDto {
  /// Returns a new [TaskQueryDto] instance.
  TaskQueryDto({
    this.taskId,
    this.taskIdIn = const [],
    this.processInstanceId,
    this.processInstanceIdIn = const [],
    this.processInstanceBusinessKey,
    this.processInstanceBusinessKeyExpression,
    this.processInstanceBusinessKeyIn = const [],
    this.processInstanceBusinessKeyLike,
    this.processInstanceBusinessKeyLikeExpression,
    this.processDefinitionId,
    this.processDefinitionKey,
    this.processDefinitionKeyIn = const [],
    this.processDefinitionName,
    this.processDefinitionNameLike,
    this.executionId,
    this.caseInstanceId,
    this.caseInstanceBusinessKey,
    this.caseInstanceBusinessKeyLike,
    this.caseDefinitionId,
    this.caseDefinitionKey,
    this.caseDefinitionName,
    this.caseDefinitionNameLike,
    this.caseExecutionId,
    this.activityInstanceIdIn = const [],
    this.tenantIdIn = const [],
    this.withoutTenantId = false,
    this.assignee,
    this.assigneeExpression,
    this.assigneeLike,
    this.assigneeLikeExpression,
    this.assigneeIn = const [],
    this.assigneeNotIn = const [],
    this.owner,
    this.ownerExpression,
    this.candidateGroup,
    this.candidateGroupExpression,
    this.candidateUser,
    this.candidateUserExpression,
    this.includeAssignedTasks = false,
    this.involvedUser,
    this.involvedUserExpression,
    this.assigned = false,
    this.unassigned = false,
    this.taskDefinitionKey,
    this.taskDefinitionKeyIn = const [],
    this.taskDefinitionKeyLike,
    this.name,
    this.nameNotEqual,
    this.nameLike,
    this.nameNotLike,
    this.description,
    this.descriptionLike,
    this.priority,
    this.maxPriority,
    this.minPriority,
    this.dueDate,
    this.dueDateExpression,
    this.dueAfter,
    this.dueAfterExpression,
    this.dueBefore,
    this.dueBeforeExpression,
    this.withoutDueDate = false,
    this.followUpDate,
    this.followUpDateExpression,
    this.followUpAfter,
    this.followUpAfterExpression,
    this.followUpBefore,
    this.followUpBeforeExpression,
    this.followUpBeforeOrNotExistent,
    this.followUpBeforeOrNotExistentExpression,
    this.createdOn,
    this.createdOnExpression,
    this.createdAfter,
    this.createdAfterExpression,
    this.createdBefore,
    this.createdBeforeExpression,
    this.updatedAfter,
    this.updatedAfterExpression,
    this.delegationState,
    this.candidateGroups = const [],
    this.candidateGroupsExpression,
    this.withCandidateGroups = false,
    this.withoutCandidateGroups = false,
    this.withCandidateUsers = false,
    this.withoutCandidateUsers = false,
    this.active = false,
    this.suspended = false,
    this.taskVariables = const [],
    this.processVariables = const [],
    this.caseInstanceVariables = const [],
    this.variableNamesIgnoreCase = false,
    this.variableValuesIgnoreCase = false,
    this.parentTaskId,
    this.orQueries = const [],
    this.sorting = const [],
  });

  /// Restrict to task with the given id.
  String? taskId;

  /// Restrict to tasks with any of the given ids.
  List<String>? taskIdIn;

  /// Restrict to tasks that belong to process instances with the given id.
  String? processInstanceId;

  /// Restrict to tasks that belong to process instances with the given ids.
  List<String>? processInstanceIdIn;

  /// Restrict to tasks that belong to process instances with the given business key.
  String? processInstanceBusinessKey;

  /// Restrict to tasks that belong to process instances with the given business key which  is described by an expression. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions.
  String? processInstanceBusinessKeyExpression;

  /// Restrict to tasks that belong to process instances with one of the give business keys.  The keys need to be in a comma-separated list.
  List<String>? processInstanceBusinessKeyIn;

  /// Restrict to tasks that have a process instance business key that has the parameter  value as a substring.
  String? processInstanceBusinessKeyLike;

  /// Restrict to tasks that have a process instance business key that has the parameter  value as a substring and is described by an expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  String? processInstanceBusinessKeyLikeExpression;

  /// Restrict to tasks that belong to a process definition with the given id.
  String? processDefinitionId;

  /// Restrict to tasks that belong to a process definition with the given key.
  String? processDefinitionKey;

  /// Restrict to tasks that belong to a process definition with one of the given keys. The  keys need to be in a comma-separated list.
  List<String>? processDefinitionKeyIn;

  /// Restrict to tasks that belong to a process definition with the given name.
  String? processDefinitionName;

  /// Restrict to tasks that have a process definition name that has the parameter value as  a substring.
  String? processDefinitionNameLike;

  /// Restrict to tasks that belong to an execution with the given id.
  String? executionId;

  /// Restrict to tasks that belong to case instances with the given id.
  String? caseInstanceId;

  /// Restrict to tasks that belong to case instances with the given business key.
  String? caseInstanceBusinessKey;

  /// Restrict to tasks that have a case instance business key that has the parameter value  as a substring.
  String? caseInstanceBusinessKeyLike;

  /// Restrict to tasks that belong to a case definition with the given id.
  String? caseDefinitionId;

  /// Restrict to tasks that belong to a case definition with the given key.
  String? caseDefinitionKey;

  /// Restrict to tasks that belong to a case definition with the given name.
  String? caseDefinitionName;

  /// Restrict to tasks that have a case definition name that has the parameter value as a  substring.
  String? caseDefinitionNameLike;

  /// Restrict to tasks that belong to a case execution with the given id.
  String? caseExecutionId;

  /// Only include tasks which belong to one of the passed and comma-separated activity  instance ids.
  List<String>? activityInstanceIdIn;

  /// Only include tasks which belong to one of the passed and comma-separated  tenant ids.
  List<String>? tenantIdIn;

  /// Only include tasks which belong to no tenant. Value may only be `true`,  as `false` is the default behavior.
  bool? withoutTenantId;

  /// Restrict to tasks that the given user is assigned to.
  String? assignee;

  /// Restrict to tasks that the user described by the given expression is assigned to. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  String? assigneeExpression;

  /// Restrict to tasks that have an assignee that has the parameter  value as a substring.
  String? assigneeLike;

  /// Restrict to tasks that have an assignee that has the parameter value described by the  given expression as a substring. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  String? assigneeLikeExpression;

  /// Only include tasks which are assigned to one of the passed and comma-separated user ids.
  List<String>? assigneeIn;

  /// Only include tasks which are not assigned to one of the passed and comma-separated user ids.
  List<String>? assigneeNotIn;

  /// Restrict to tasks that the given user owns.
  String? owner;

  /// Restrict to tasks that the user described by the given expression owns. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  String? ownerExpression;

  /// Only include tasks that are offered to the given group.
  String? candidateGroup;

  /// Only include tasks that are offered to the group described by the given expression.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  String? candidateGroupExpression;

  /// Only include tasks that are offered to the given user or to one of his groups.
  String? candidateUser;

  /// Only include tasks that are offered to the user described by the given expression.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  String? candidateUserExpression;

  /// Also include tasks that are assigned to users in candidate queries. Default is to only  include tasks that are not assigned to any user if you query by candidate user or group(s).
  bool? includeAssignedTasks;

  /// Only include tasks that the given user is involved in. A user is involved in a task if  an identity link exists between task and user (e.g., the user is the assignee).
  String? involvedUser;

  /// Only include tasks that the user described by the given expression is involved in. A user is involved in a task if an identity link exists between task and user (e.g., the user is the assignee). See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions.
  String? involvedUserExpression;

  /// If set to `true`, restricts the query to all tasks that are assigned.
  bool? assigned;

  /// If set to `true`, restricts the query to all tasks that are unassigned.
  bool? unassigned;

  /// Restrict to tasks that have the given key.
  String? taskDefinitionKey;

  /// Restrict to tasks that have one of the given keys. The keys need to be in a comma-separated list.
  List<String>? taskDefinitionKeyIn;

  /// Restrict to tasks that have a key that has the parameter value as a substring.
  String? taskDefinitionKeyLike;

  /// Restrict to tasks that have the given name.
  String? name;

  /// Restrict to tasks that do not have the given name.
  String? nameNotEqual;

  /// Restrict to tasks that have a name with the given parameter value as substring.
  String? nameLike;

  /// Restrict to tasks that do not have a name with the given parameter value as substring.
  String? nameNotLike;

  /// Restrict to tasks that have the given description.
  String? description;

  /// Restrict to tasks that have a description that has the parameter value as a substring.
  String? descriptionLike;

  /// Restrict to tasks that have the given priority.
  int? priority;

  /// Restrict to tasks that have a lower or equal priority.
  int? maxPriority;

  /// Restrict to tasks that have a higher or equal priority.
  int? minPriority;

  /// Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`.
  DateTime? dueDate;

  /// Restrict to tasks that are due on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  String? dueDateExpression;

  /// Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.435+0200`.
  DateTime? dueAfter;

  /// Restrict to tasks that are due after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  String? dueAfterExpression;

  /// Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.243+0200`.
  DateTime? dueBefore;

  /// Restrict to tasks that are due before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  String? dueBeforeExpression;

  /// Only include tasks which have no due date. Value may only be `true`,  as `false` is the default behavior.
  bool? withoutDueDate;

  /// Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.342+0200`.
  DateTime? followUpDate;

  /// Restrict to tasks that have a followUp date on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  String? followUpDateExpression;

  /// Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.542+0200`.
  DateTime? followUpAfter;

  /// Restrict to tasks that have a followUp date after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  String? followUpAfterExpression;

  /// Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.234+0200`.
  String? followUpBefore;

  /// Restrict to tasks that have a followUp date before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  String? followUpBeforeExpression;

  /// Restrict to tasks that have no followUp date or a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.432+0200`. The typical use case is to query all `active` tasks for a user for a given date.
  DateTime? followUpBeforeOrNotExistent;

  /// Restrict to tasks that have no followUp date or a followUp date before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  String? followUpBeforeOrNotExistentExpression;

  /// Restrict to tasks that were created on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.324+0200`.
  DateTime? createdOn;

  /// Restrict to tasks that were created on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  String? createdOnExpression;

  /// Restrict to tasks that were created after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.342+0200`.
  DateTime? createdAfter;

  /// Restrict to tasks that were created after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  String? createdAfterExpression;

  /// Restrict to tasks that were created before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.332+0200`.
  DateTime? createdBefore;

  /// Restrict to tasks that were created before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  String? createdBeforeExpression;

  /// Restrict to tasks that were updated after the given date. Every action that fires  a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) is considered as updating the task. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.332+0200`.
  DateTime? updatedAfter;

  /// Restrict to tasks that were updated after the date described by the given expression. Every action that fires  a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) is considered as updating the task. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  String? updatedAfterExpression;

  /// Restrict to tasks that are in the given delegation state. Valid values are `PENDING` and `RESOLVED`.
  TaskQueryDtoDelegationStateEnum? delegationState;

  /// Restrict to tasks that are offered to any of the given candidate groups. Takes a comma-separated list of group names, so for example `developers,support,sales`.
  List<String>? candidateGroups;

  /// Restrict to tasks that are offered to any of the candidate groups described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to `java.util.List` of Strings.
  String? candidateGroupsExpression;

  /// Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior.
  bool? withCandidateGroups;

  /// Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior.
  bool? withoutCandidateGroups;

  /// Only include tasks which have a candidate user. Value may only be `true`, as `false` is the default behavior.
  bool? withCandidateUsers;

  /// Only include tasks which have no candidate users. Value may only be `true`, as `false` is the default behavior.
  bool? withoutCandidateUsers;

  /// Only include active tasks. Value may only be `true`, as `false` is the default behavior.
  bool? active;

  /// Only include suspended tasks. Value may only be `true`, as `false` is the default behavior.
  bool? suspended;

  /// A JSON array to only include tasks that have variables with certain values. The array consists of JSON objects with three properties `name`, `operator` and `value`. `name` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. `value` may be of type `String`, `Number` or `Boolean`.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  List<VariableQueryParameterDto>? taskVariables;

  /// A JSON array to only include tasks that belong to a process instance with variables with certain values. The array consists of JSON objects with three properties `name`, `operator` and `value`. `name` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. `value` may be of type `String`, `Number` or `Boolean`.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`; `notLike`. `key` and `value` may not contain underscore or comma characters.
  List<VariableQueryParameterDto>? processVariables;

  /// A JSON array to only include tasks that belong to a case instance with variables with certain values. The array consists of JSON objects with three properties `name`, `operator` and `value`. `name` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. `value` may be of type `String`, `Number` or `Boolean`.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  List<VariableQueryParameterDto>? caseInstanceVariables;

  /// Match all variable names in this query case-insensitively. If set `variableName` and `variablename` are treated as equal.
  bool? variableNamesIgnoreCase;

  /// Match all variable values in this query case-insensitively. If set `variableValue` and `variablevalue` are treated as equal.
  bool? variableValuesIgnoreCase;

  /// Restrict query to all tasks that are sub tasks of the given task. Takes a task id.
  String? parentTaskId;

  /// A JSON array of nested task queries with OR semantics. A task matches a nested query if it fulfills *at least one* of the query's predicates. With multiple nested queries, a task must fulfill at least one predicate of *each* query ([Conjunctive Normal Form](https://en.wikipedia.org/wiki/Conjunctive_normal_form)).  All task query properties can be used except for: `sorting`, `withCandidateGroups`, `withoutCandidateGroups`, `withCandidateUsers`, `withoutCandidateUsers`  See the [User guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-engine-api/#or-queries) for more information about OR queries.
  List<TaskQueryDto>? orQueries;

  /// Apply sorting of the result
  List<TaskQueryDtoSortingInner>? sorting;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TaskQueryDto &&
    other.taskId == taskId &&
    _deepEquality.equals(other.taskIdIn, taskIdIn) &&
    other.processInstanceId == processInstanceId &&
    _deepEquality.equals(other.processInstanceIdIn, processInstanceIdIn) &&
    other.processInstanceBusinessKey == processInstanceBusinessKey &&
    other.processInstanceBusinessKeyExpression == processInstanceBusinessKeyExpression &&
    _deepEquality.equals(other.processInstanceBusinessKeyIn, processInstanceBusinessKeyIn) &&
    other.processInstanceBusinessKeyLike == processInstanceBusinessKeyLike &&
    other.processInstanceBusinessKeyLikeExpression == processInstanceBusinessKeyLikeExpression &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    _deepEquality.equals(other.processDefinitionKeyIn, processDefinitionKeyIn) &&
    other.processDefinitionName == processDefinitionName &&
    other.processDefinitionNameLike == processDefinitionNameLike &&
    other.executionId == executionId &&
    other.caseInstanceId == caseInstanceId &&
    other.caseInstanceBusinessKey == caseInstanceBusinessKey &&
    other.caseInstanceBusinessKeyLike == caseInstanceBusinessKeyLike &&
    other.caseDefinitionId == caseDefinitionId &&
    other.caseDefinitionKey == caseDefinitionKey &&
    other.caseDefinitionName == caseDefinitionName &&
    other.caseDefinitionNameLike == caseDefinitionNameLike &&
    other.caseExecutionId == caseExecutionId &&
    _deepEquality.equals(other.activityInstanceIdIn, activityInstanceIdIn) &&
    _deepEquality.equals(other.tenantIdIn, tenantIdIn) &&
    other.withoutTenantId == withoutTenantId &&
    other.assignee == assignee &&
    other.assigneeExpression == assigneeExpression &&
    other.assigneeLike == assigneeLike &&
    other.assigneeLikeExpression == assigneeLikeExpression &&
    _deepEquality.equals(other.assigneeIn, assigneeIn) &&
    _deepEquality.equals(other.assigneeNotIn, assigneeNotIn) &&
    other.owner == owner &&
    other.ownerExpression == ownerExpression &&
    other.candidateGroup == candidateGroup &&
    other.candidateGroupExpression == candidateGroupExpression &&
    other.candidateUser == candidateUser &&
    other.candidateUserExpression == candidateUserExpression &&
    other.includeAssignedTasks == includeAssignedTasks &&
    other.involvedUser == involvedUser &&
    other.involvedUserExpression == involvedUserExpression &&
    other.assigned == assigned &&
    other.unassigned == unassigned &&
    other.taskDefinitionKey == taskDefinitionKey &&
    _deepEquality.equals(other.taskDefinitionKeyIn, taskDefinitionKeyIn) &&
    other.taskDefinitionKeyLike == taskDefinitionKeyLike &&
    other.name == name &&
    other.nameNotEqual == nameNotEqual &&
    other.nameLike == nameLike &&
    other.nameNotLike == nameNotLike &&
    other.description == description &&
    other.descriptionLike == descriptionLike &&
    other.priority == priority &&
    other.maxPriority == maxPriority &&
    other.minPriority == minPriority &&
    other.dueDate == dueDate &&
    other.dueDateExpression == dueDateExpression &&
    other.dueAfter == dueAfter &&
    other.dueAfterExpression == dueAfterExpression &&
    other.dueBefore == dueBefore &&
    other.dueBeforeExpression == dueBeforeExpression &&
    other.withoutDueDate == withoutDueDate &&
    other.followUpDate == followUpDate &&
    other.followUpDateExpression == followUpDateExpression &&
    other.followUpAfter == followUpAfter &&
    other.followUpAfterExpression == followUpAfterExpression &&
    other.followUpBefore == followUpBefore &&
    other.followUpBeforeExpression == followUpBeforeExpression &&
    other.followUpBeforeOrNotExistent == followUpBeforeOrNotExistent &&
    other.followUpBeforeOrNotExistentExpression == followUpBeforeOrNotExistentExpression &&
    other.createdOn == createdOn &&
    other.createdOnExpression == createdOnExpression &&
    other.createdAfter == createdAfter &&
    other.createdAfterExpression == createdAfterExpression &&
    other.createdBefore == createdBefore &&
    other.createdBeforeExpression == createdBeforeExpression &&
    other.updatedAfter == updatedAfter &&
    other.updatedAfterExpression == updatedAfterExpression &&
    other.delegationState == delegationState &&
    _deepEquality.equals(other.candidateGroups, candidateGroups) &&
    other.candidateGroupsExpression == candidateGroupsExpression &&
    other.withCandidateGroups == withCandidateGroups &&
    other.withoutCandidateGroups == withoutCandidateGroups &&
    other.withCandidateUsers == withCandidateUsers &&
    other.withoutCandidateUsers == withoutCandidateUsers &&
    other.active == active &&
    other.suspended == suspended &&
    _deepEquality.equals(other.taskVariables, taskVariables) &&
    _deepEquality.equals(other.processVariables, processVariables) &&
    _deepEquality.equals(other.caseInstanceVariables, caseInstanceVariables) &&
    other.variableNamesIgnoreCase == variableNamesIgnoreCase &&
    other.variableValuesIgnoreCase == variableValuesIgnoreCase &&
    other.parentTaskId == parentTaskId &&
    _deepEquality.equals(other.orQueries, orQueries) &&
    _deepEquality.equals(other.sorting, sorting);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (taskId == null ? 0 : taskId!.hashCode) +
    (taskIdIn == null ? 0 : taskIdIn!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (processInstanceIdIn == null ? 0 : processInstanceIdIn!.hashCode) +
    (processInstanceBusinessKey == null ? 0 : processInstanceBusinessKey!.hashCode) +
    (processInstanceBusinessKeyExpression == null ? 0 : processInstanceBusinessKeyExpression!.hashCode) +
    (processInstanceBusinessKeyIn == null ? 0 : processInstanceBusinessKeyIn!.hashCode) +
    (processInstanceBusinessKeyLike == null ? 0 : processInstanceBusinessKeyLike!.hashCode) +
    (processInstanceBusinessKeyLikeExpression == null ? 0 : processInstanceBusinessKeyLikeExpression!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (processDefinitionKeyIn == null ? 0 : processDefinitionKeyIn!.hashCode) +
    (processDefinitionName == null ? 0 : processDefinitionName!.hashCode) +
    (processDefinitionNameLike == null ? 0 : processDefinitionNameLike!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (caseInstanceId == null ? 0 : caseInstanceId!.hashCode) +
    (caseInstanceBusinessKey == null ? 0 : caseInstanceBusinessKey!.hashCode) +
    (caseInstanceBusinessKeyLike == null ? 0 : caseInstanceBusinessKeyLike!.hashCode) +
    (caseDefinitionId == null ? 0 : caseDefinitionId!.hashCode) +
    (caseDefinitionKey == null ? 0 : caseDefinitionKey!.hashCode) +
    (caseDefinitionName == null ? 0 : caseDefinitionName!.hashCode) +
    (caseDefinitionNameLike == null ? 0 : caseDefinitionNameLike!.hashCode) +
    (caseExecutionId == null ? 0 : caseExecutionId!.hashCode) +
    (activityInstanceIdIn == null ? 0 : activityInstanceIdIn!.hashCode) +
    (tenantIdIn == null ? 0 : tenantIdIn!.hashCode) +
    (withoutTenantId == null ? 0 : withoutTenantId!.hashCode) +
    (assignee == null ? 0 : assignee!.hashCode) +
    (assigneeExpression == null ? 0 : assigneeExpression!.hashCode) +
    (assigneeLike == null ? 0 : assigneeLike!.hashCode) +
    (assigneeLikeExpression == null ? 0 : assigneeLikeExpression!.hashCode) +
    (assigneeIn == null ? 0 : assigneeIn!.hashCode) +
    (assigneeNotIn == null ? 0 : assigneeNotIn!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (ownerExpression == null ? 0 : ownerExpression!.hashCode) +
    (candidateGroup == null ? 0 : candidateGroup!.hashCode) +
    (candidateGroupExpression == null ? 0 : candidateGroupExpression!.hashCode) +
    (candidateUser == null ? 0 : candidateUser!.hashCode) +
    (candidateUserExpression == null ? 0 : candidateUserExpression!.hashCode) +
    (includeAssignedTasks == null ? 0 : includeAssignedTasks!.hashCode) +
    (involvedUser == null ? 0 : involvedUser!.hashCode) +
    (involvedUserExpression == null ? 0 : involvedUserExpression!.hashCode) +
    (assigned == null ? 0 : assigned!.hashCode) +
    (unassigned == null ? 0 : unassigned!.hashCode) +
    (taskDefinitionKey == null ? 0 : taskDefinitionKey!.hashCode) +
    (taskDefinitionKeyIn == null ? 0 : taskDefinitionKeyIn!.hashCode) +
    (taskDefinitionKeyLike == null ? 0 : taskDefinitionKeyLike!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (nameNotEqual == null ? 0 : nameNotEqual!.hashCode) +
    (nameLike == null ? 0 : nameLike!.hashCode) +
    (nameNotLike == null ? 0 : nameNotLike!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (descriptionLike == null ? 0 : descriptionLike!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (maxPriority == null ? 0 : maxPriority!.hashCode) +
    (minPriority == null ? 0 : minPriority!.hashCode) +
    (dueDate == null ? 0 : dueDate!.hashCode) +
    (dueDateExpression == null ? 0 : dueDateExpression!.hashCode) +
    (dueAfter == null ? 0 : dueAfter!.hashCode) +
    (dueAfterExpression == null ? 0 : dueAfterExpression!.hashCode) +
    (dueBefore == null ? 0 : dueBefore!.hashCode) +
    (dueBeforeExpression == null ? 0 : dueBeforeExpression!.hashCode) +
    (withoutDueDate == null ? 0 : withoutDueDate!.hashCode) +
    (followUpDate == null ? 0 : followUpDate!.hashCode) +
    (followUpDateExpression == null ? 0 : followUpDateExpression!.hashCode) +
    (followUpAfter == null ? 0 : followUpAfter!.hashCode) +
    (followUpAfterExpression == null ? 0 : followUpAfterExpression!.hashCode) +
    (followUpBefore == null ? 0 : followUpBefore!.hashCode) +
    (followUpBeforeExpression == null ? 0 : followUpBeforeExpression!.hashCode) +
    (followUpBeforeOrNotExistent == null ? 0 : followUpBeforeOrNotExistent!.hashCode) +
    (followUpBeforeOrNotExistentExpression == null ? 0 : followUpBeforeOrNotExistentExpression!.hashCode) +
    (createdOn == null ? 0 : createdOn!.hashCode) +
    (createdOnExpression == null ? 0 : createdOnExpression!.hashCode) +
    (createdAfter == null ? 0 : createdAfter!.hashCode) +
    (createdAfterExpression == null ? 0 : createdAfterExpression!.hashCode) +
    (createdBefore == null ? 0 : createdBefore!.hashCode) +
    (createdBeforeExpression == null ? 0 : createdBeforeExpression!.hashCode) +
    (updatedAfter == null ? 0 : updatedAfter!.hashCode) +
    (updatedAfterExpression == null ? 0 : updatedAfterExpression!.hashCode) +
    (delegationState == null ? 0 : delegationState!.hashCode) +
    (candidateGroups == null ? 0 : candidateGroups!.hashCode) +
    (candidateGroupsExpression == null ? 0 : candidateGroupsExpression!.hashCode) +
    (withCandidateGroups == null ? 0 : withCandidateGroups!.hashCode) +
    (withoutCandidateGroups == null ? 0 : withoutCandidateGroups!.hashCode) +
    (withCandidateUsers == null ? 0 : withCandidateUsers!.hashCode) +
    (withoutCandidateUsers == null ? 0 : withoutCandidateUsers!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (suspended == null ? 0 : suspended!.hashCode) +
    (taskVariables == null ? 0 : taskVariables!.hashCode) +
    (processVariables == null ? 0 : processVariables!.hashCode) +
    (caseInstanceVariables == null ? 0 : caseInstanceVariables!.hashCode) +
    (variableNamesIgnoreCase == null ? 0 : variableNamesIgnoreCase!.hashCode) +
    (variableValuesIgnoreCase == null ? 0 : variableValuesIgnoreCase!.hashCode) +
    (parentTaskId == null ? 0 : parentTaskId!.hashCode) +
    (orQueries == null ? 0 : orQueries!.hashCode) +
    (sorting == null ? 0 : sorting!.hashCode);

  @override
  String toString() => 'TaskQueryDto[taskId=$taskId, taskIdIn=$taskIdIn, processInstanceId=$processInstanceId, processInstanceIdIn=$processInstanceIdIn, processInstanceBusinessKey=$processInstanceBusinessKey, processInstanceBusinessKeyExpression=$processInstanceBusinessKeyExpression, processInstanceBusinessKeyIn=$processInstanceBusinessKeyIn, processInstanceBusinessKeyLike=$processInstanceBusinessKeyLike, processInstanceBusinessKeyLikeExpression=$processInstanceBusinessKeyLikeExpression, processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, processDefinitionKeyIn=$processDefinitionKeyIn, processDefinitionName=$processDefinitionName, processDefinitionNameLike=$processDefinitionNameLike, executionId=$executionId, caseInstanceId=$caseInstanceId, caseInstanceBusinessKey=$caseInstanceBusinessKey, caseInstanceBusinessKeyLike=$caseInstanceBusinessKeyLike, caseDefinitionId=$caseDefinitionId, caseDefinitionKey=$caseDefinitionKey, caseDefinitionName=$caseDefinitionName, caseDefinitionNameLike=$caseDefinitionNameLike, caseExecutionId=$caseExecutionId, activityInstanceIdIn=$activityInstanceIdIn, tenantIdIn=$tenantIdIn, withoutTenantId=$withoutTenantId, assignee=$assignee, assigneeExpression=$assigneeExpression, assigneeLike=$assigneeLike, assigneeLikeExpression=$assigneeLikeExpression, assigneeIn=$assigneeIn, assigneeNotIn=$assigneeNotIn, owner=$owner, ownerExpression=$ownerExpression, candidateGroup=$candidateGroup, candidateGroupExpression=$candidateGroupExpression, candidateUser=$candidateUser, candidateUserExpression=$candidateUserExpression, includeAssignedTasks=$includeAssignedTasks, involvedUser=$involvedUser, involvedUserExpression=$involvedUserExpression, assigned=$assigned, unassigned=$unassigned, taskDefinitionKey=$taskDefinitionKey, taskDefinitionKeyIn=$taskDefinitionKeyIn, taskDefinitionKeyLike=$taskDefinitionKeyLike, name=$name, nameNotEqual=$nameNotEqual, nameLike=$nameLike, nameNotLike=$nameNotLike, description=$description, descriptionLike=$descriptionLike, priority=$priority, maxPriority=$maxPriority, minPriority=$minPriority, dueDate=$dueDate, dueDateExpression=$dueDateExpression, dueAfter=$dueAfter, dueAfterExpression=$dueAfterExpression, dueBefore=$dueBefore, dueBeforeExpression=$dueBeforeExpression, withoutDueDate=$withoutDueDate, followUpDate=$followUpDate, followUpDateExpression=$followUpDateExpression, followUpAfter=$followUpAfter, followUpAfterExpression=$followUpAfterExpression, followUpBefore=$followUpBefore, followUpBeforeExpression=$followUpBeforeExpression, followUpBeforeOrNotExistent=$followUpBeforeOrNotExistent, followUpBeforeOrNotExistentExpression=$followUpBeforeOrNotExistentExpression, createdOn=$createdOn, createdOnExpression=$createdOnExpression, createdAfter=$createdAfter, createdAfterExpression=$createdAfterExpression, createdBefore=$createdBefore, createdBeforeExpression=$createdBeforeExpression, updatedAfter=$updatedAfter, updatedAfterExpression=$updatedAfterExpression, delegationState=$delegationState, candidateGroups=$candidateGroups, candidateGroupsExpression=$candidateGroupsExpression, withCandidateGroups=$withCandidateGroups, withoutCandidateGroups=$withoutCandidateGroups, withCandidateUsers=$withCandidateUsers, withoutCandidateUsers=$withoutCandidateUsers, active=$active, suspended=$suspended, taskVariables=$taskVariables, processVariables=$processVariables, caseInstanceVariables=$caseInstanceVariables, variableNamesIgnoreCase=$variableNamesIgnoreCase, variableValuesIgnoreCase=$variableValuesIgnoreCase, parentTaskId=$parentTaskId, orQueries=$orQueries, sorting=$sorting]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.taskId != null) {
      json[r'taskId'] = this.taskId;
    } else {
      json[r'taskId'] = null;
    }
    if (this.taskIdIn != null) {
      json[r'taskIdIn'] = this.taskIdIn;
    } else {
      json[r'taskIdIn'] = null;
    }
    if (this.processInstanceId != null) {
      json[r'processInstanceId'] = this.processInstanceId;
    } else {
      json[r'processInstanceId'] = null;
    }
    if (this.processInstanceIdIn != null) {
      json[r'processInstanceIdIn'] = this.processInstanceIdIn;
    } else {
      json[r'processInstanceIdIn'] = null;
    }
    if (this.processInstanceBusinessKey != null) {
      json[r'processInstanceBusinessKey'] = this.processInstanceBusinessKey;
    } else {
      json[r'processInstanceBusinessKey'] = null;
    }
    if (this.processInstanceBusinessKeyExpression != null) {
      json[r'processInstanceBusinessKeyExpression'] = this.processInstanceBusinessKeyExpression;
    } else {
      json[r'processInstanceBusinessKeyExpression'] = null;
    }
    if (this.processInstanceBusinessKeyIn != null) {
      json[r'processInstanceBusinessKeyIn'] = this.processInstanceBusinessKeyIn;
    } else {
      json[r'processInstanceBusinessKeyIn'] = null;
    }
    if (this.processInstanceBusinessKeyLike != null) {
      json[r'processInstanceBusinessKeyLike'] = this.processInstanceBusinessKeyLike;
    } else {
      json[r'processInstanceBusinessKeyLike'] = null;
    }
    if (this.processInstanceBusinessKeyLikeExpression != null) {
      json[r'processInstanceBusinessKeyLikeExpression'] = this.processInstanceBusinessKeyLikeExpression;
    } else {
      json[r'processInstanceBusinessKeyLikeExpression'] = null;
    }
    if (this.processDefinitionId != null) {
      json[r'processDefinitionId'] = this.processDefinitionId;
    } else {
      json[r'processDefinitionId'] = null;
    }
    if (this.processDefinitionKey != null) {
      json[r'processDefinitionKey'] = this.processDefinitionKey;
    } else {
      json[r'processDefinitionKey'] = null;
    }
    if (this.processDefinitionKeyIn != null) {
      json[r'processDefinitionKeyIn'] = this.processDefinitionKeyIn;
    } else {
      json[r'processDefinitionKeyIn'] = null;
    }
    if (this.processDefinitionName != null) {
      json[r'processDefinitionName'] = this.processDefinitionName;
    } else {
      json[r'processDefinitionName'] = null;
    }
    if (this.processDefinitionNameLike != null) {
      json[r'processDefinitionNameLike'] = this.processDefinitionNameLike;
    } else {
      json[r'processDefinitionNameLike'] = null;
    }
    if (this.executionId != null) {
      json[r'executionId'] = this.executionId;
    } else {
      json[r'executionId'] = null;
    }
    if (this.caseInstanceId != null) {
      json[r'caseInstanceId'] = this.caseInstanceId;
    } else {
      json[r'caseInstanceId'] = null;
    }
    if (this.caseInstanceBusinessKey != null) {
      json[r'caseInstanceBusinessKey'] = this.caseInstanceBusinessKey;
    } else {
      json[r'caseInstanceBusinessKey'] = null;
    }
    if (this.caseInstanceBusinessKeyLike != null) {
      json[r'caseInstanceBusinessKeyLike'] = this.caseInstanceBusinessKeyLike;
    } else {
      json[r'caseInstanceBusinessKeyLike'] = null;
    }
    if (this.caseDefinitionId != null) {
      json[r'caseDefinitionId'] = this.caseDefinitionId;
    } else {
      json[r'caseDefinitionId'] = null;
    }
    if (this.caseDefinitionKey != null) {
      json[r'caseDefinitionKey'] = this.caseDefinitionKey;
    } else {
      json[r'caseDefinitionKey'] = null;
    }
    if (this.caseDefinitionName != null) {
      json[r'caseDefinitionName'] = this.caseDefinitionName;
    } else {
      json[r'caseDefinitionName'] = null;
    }
    if (this.caseDefinitionNameLike != null) {
      json[r'caseDefinitionNameLike'] = this.caseDefinitionNameLike;
    } else {
      json[r'caseDefinitionNameLike'] = null;
    }
    if (this.caseExecutionId != null) {
      json[r'caseExecutionId'] = this.caseExecutionId;
    } else {
      json[r'caseExecutionId'] = null;
    }
    if (this.activityInstanceIdIn != null) {
      json[r'activityInstanceIdIn'] = this.activityInstanceIdIn;
    } else {
      json[r'activityInstanceIdIn'] = null;
    }
    if (this.tenantIdIn != null) {
      json[r'tenantIdIn'] = this.tenantIdIn;
    } else {
      json[r'tenantIdIn'] = null;
    }
    if (this.withoutTenantId != null) {
      json[r'withoutTenantId'] = this.withoutTenantId;
    } else {
      json[r'withoutTenantId'] = null;
    }
    if (this.assignee != null) {
      json[r'assignee'] = this.assignee;
    } else {
      json[r'assignee'] = null;
    }
    if (this.assigneeExpression != null) {
      json[r'assigneeExpression'] = this.assigneeExpression;
    } else {
      json[r'assigneeExpression'] = null;
    }
    if (this.assigneeLike != null) {
      json[r'assigneeLike'] = this.assigneeLike;
    } else {
      json[r'assigneeLike'] = null;
    }
    if (this.assigneeLikeExpression != null) {
      json[r'assigneeLikeExpression'] = this.assigneeLikeExpression;
    } else {
      json[r'assigneeLikeExpression'] = null;
    }
    if (this.assigneeIn != null) {
      json[r'assigneeIn'] = this.assigneeIn;
    } else {
      json[r'assigneeIn'] = null;
    }
    if (this.assigneeNotIn != null) {
      json[r'assigneeNotIn'] = this.assigneeNotIn;
    } else {
      json[r'assigneeNotIn'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.ownerExpression != null) {
      json[r'ownerExpression'] = this.ownerExpression;
    } else {
      json[r'ownerExpression'] = null;
    }
    if (this.candidateGroup != null) {
      json[r'candidateGroup'] = this.candidateGroup;
    } else {
      json[r'candidateGroup'] = null;
    }
    if (this.candidateGroupExpression != null) {
      json[r'candidateGroupExpression'] = this.candidateGroupExpression;
    } else {
      json[r'candidateGroupExpression'] = null;
    }
    if (this.candidateUser != null) {
      json[r'candidateUser'] = this.candidateUser;
    } else {
      json[r'candidateUser'] = null;
    }
    if (this.candidateUserExpression != null) {
      json[r'candidateUserExpression'] = this.candidateUserExpression;
    } else {
      json[r'candidateUserExpression'] = null;
    }
    if (this.includeAssignedTasks != null) {
      json[r'includeAssignedTasks'] = this.includeAssignedTasks;
    } else {
      json[r'includeAssignedTasks'] = null;
    }
    if (this.involvedUser != null) {
      json[r'involvedUser'] = this.involvedUser;
    } else {
      json[r'involvedUser'] = null;
    }
    if (this.involvedUserExpression != null) {
      json[r'involvedUserExpression'] = this.involvedUserExpression;
    } else {
      json[r'involvedUserExpression'] = null;
    }
    if (this.assigned != null) {
      json[r'assigned'] = this.assigned;
    } else {
      json[r'assigned'] = null;
    }
    if (this.unassigned != null) {
      json[r'unassigned'] = this.unassigned;
    } else {
      json[r'unassigned'] = null;
    }
    if (this.taskDefinitionKey != null) {
      json[r'taskDefinitionKey'] = this.taskDefinitionKey;
    } else {
      json[r'taskDefinitionKey'] = null;
    }
    if (this.taskDefinitionKeyIn != null) {
      json[r'taskDefinitionKeyIn'] = this.taskDefinitionKeyIn;
    } else {
      json[r'taskDefinitionKeyIn'] = null;
    }
    if (this.taskDefinitionKeyLike != null) {
      json[r'taskDefinitionKeyLike'] = this.taskDefinitionKeyLike;
    } else {
      json[r'taskDefinitionKeyLike'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.nameNotEqual != null) {
      json[r'nameNotEqual'] = this.nameNotEqual;
    } else {
      json[r'nameNotEqual'] = null;
    }
    if (this.nameLike != null) {
      json[r'nameLike'] = this.nameLike;
    } else {
      json[r'nameLike'] = null;
    }
    if (this.nameNotLike != null) {
      json[r'nameNotLike'] = this.nameNotLike;
    } else {
      json[r'nameNotLike'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.descriptionLike != null) {
      json[r'descriptionLike'] = this.descriptionLike;
    } else {
      json[r'descriptionLike'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.maxPriority != null) {
      json[r'maxPriority'] = this.maxPriority;
    } else {
      json[r'maxPriority'] = null;
    }
    if (this.minPriority != null) {
      json[r'minPriority'] = this.minPriority;
    } else {
      json[r'minPriority'] = null;
    }
    if (this.dueDate != null) {
      json[r'dueDate'] = this.dueDate!.toUtc().toIso8601String();
    } else {
      json[r'dueDate'] = null;
    }
    if (this.dueDateExpression != null) {
      json[r'dueDateExpression'] = this.dueDateExpression;
    } else {
      json[r'dueDateExpression'] = null;
    }
    if (this.dueAfter != null) {
      json[r'dueAfter'] = this.dueAfter!.toUtc().toIso8601String();
    } else {
      json[r'dueAfter'] = null;
    }
    if (this.dueAfterExpression != null) {
      json[r'dueAfterExpression'] = this.dueAfterExpression;
    } else {
      json[r'dueAfterExpression'] = null;
    }
    if (this.dueBefore != null) {
      json[r'dueBefore'] = this.dueBefore!.toUtc().toIso8601String();
    } else {
      json[r'dueBefore'] = null;
    }
    if (this.dueBeforeExpression != null) {
      json[r'dueBeforeExpression'] = this.dueBeforeExpression;
    } else {
      json[r'dueBeforeExpression'] = null;
    }
    if (this.withoutDueDate != null) {
      json[r'withoutDueDate'] = this.withoutDueDate;
    } else {
      json[r'withoutDueDate'] = null;
    }
    if (this.followUpDate != null) {
      json[r'followUpDate'] = this.followUpDate!.toUtc().toIso8601String();
    } else {
      json[r'followUpDate'] = null;
    }
    if (this.followUpDateExpression != null) {
      json[r'followUpDateExpression'] = this.followUpDateExpression;
    } else {
      json[r'followUpDateExpression'] = null;
    }
    if (this.followUpAfter != null) {
      json[r'followUpAfter'] = this.followUpAfter!.toUtc().toIso8601String();
    } else {
      json[r'followUpAfter'] = null;
    }
    if (this.followUpAfterExpression != null) {
      json[r'followUpAfterExpression'] = this.followUpAfterExpression;
    } else {
      json[r'followUpAfterExpression'] = null;
    }
    if (this.followUpBefore != null) {
      json[r'followUpBefore'] = this.followUpBefore;
    } else {
      json[r'followUpBefore'] = null;
    }
    if (this.followUpBeforeExpression != null) {
      json[r'followUpBeforeExpression'] = this.followUpBeforeExpression;
    } else {
      json[r'followUpBeforeExpression'] = null;
    }
    if (this.followUpBeforeOrNotExistent != null) {
      json[r'followUpBeforeOrNotExistent'] = this.followUpBeforeOrNotExistent!.toUtc().toIso8601String();
    } else {
      json[r'followUpBeforeOrNotExistent'] = null;
    }
    if (this.followUpBeforeOrNotExistentExpression != null) {
      json[r'followUpBeforeOrNotExistentExpression'] = this.followUpBeforeOrNotExistentExpression;
    } else {
      json[r'followUpBeforeOrNotExistentExpression'] = null;
    }
    if (this.createdOn != null) {
      json[r'createdOn'] = this.createdOn!.toUtc().toIso8601String();
    } else {
      json[r'createdOn'] = null;
    }
    if (this.createdOnExpression != null) {
      json[r'createdOnExpression'] = this.createdOnExpression;
    } else {
      json[r'createdOnExpression'] = null;
    }
    if (this.createdAfter != null) {
      json[r'createdAfter'] = this.createdAfter!.toUtc().toIso8601String();
    } else {
      json[r'createdAfter'] = null;
    }
    if (this.createdAfterExpression != null) {
      json[r'createdAfterExpression'] = this.createdAfterExpression;
    } else {
      json[r'createdAfterExpression'] = null;
    }
    if (this.createdBefore != null) {
      json[r'createdBefore'] = this.createdBefore!.toUtc().toIso8601String();
    } else {
      json[r'createdBefore'] = null;
    }
    if (this.createdBeforeExpression != null) {
      json[r'createdBeforeExpression'] = this.createdBeforeExpression;
    } else {
      json[r'createdBeforeExpression'] = null;
    }
    if (this.updatedAfter != null) {
      json[r'updatedAfter'] = this.updatedAfter!.toUtc().toIso8601String();
    } else {
      json[r'updatedAfter'] = null;
    }
    if (this.updatedAfterExpression != null) {
      json[r'updatedAfterExpression'] = this.updatedAfterExpression;
    } else {
      json[r'updatedAfterExpression'] = null;
    }
    if (this.delegationState != null) {
      json[r'delegationState'] = this.delegationState;
    } else {
      json[r'delegationState'] = null;
    }
    if (this.candidateGroups != null) {
      json[r'candidateGroups'] = this.candidateGroups;
    } else {
      json[r'candidateGroups'] = null;
    }
    if (this.candidateGroupsExpression != null) {
      json[r'candidateGroupsExpression'] = this.candidateGroupsExpression;
    } else {
      json[r'candidateGroupsExpression'] = null;
    }
    if (this.withCandidateGroups != null) {
      json[r'withCandidateGroups'] = this.withCandidateGroups;
    } else {
      json[r'withCandidateGroups'] = null;
    }
    if (this.withoutCandidateGroups != null) {
      json[r'withoutCandidateGroups'] = this.withoutCandidateGroups;
    } else {
      json[r'withoutCandidateGroups'] = null;
    }
    if (this.withCandidateUsers != null) {
      json[r'withCandidateUsers'] = this.withCandidateUsers;
    } else {
      json[r'withCandidateUsers'] = null;
    }
    if (this.withoutCandidateUsers != null) {
      json[r'withoutCandidateUsers'] = this.withoutCandidateUsers;
    } else {
      json[r'withoutCandidateUsers'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.suspended != null) {
      json[r'suspended'] = this.suspended;
    } else {
      json[r'suspended'] = null;
    }
    if (this.taskVariables != null) {
      json[r'taskVariables'] = this.taskVariables;
    } else {
      json[r'taskVariables'] = null;
    }
    if (this.processVariables != null) {
      json[r'processVariables'] = this.processVariables;
    } else {
      json[r'processVariables'] = null;
    }
    if (this.caseInstanceVariables != null) {
      json[r'caseInstanceVariables'] = this.caseInstanceVariables;
    } else {
      json[r'caseInstanceVariables'] = null;
    }
    if (this.variableNamesIgnoreCase != null) {
      json[r'variableNamesIgnoreCase'] = this.variableNamesIgnoreCase;
    } else {
      json[r'variableNamesIgnoreCase'] = null;
    }
    if (this.variableValuesIgnoreCase != null) {
      json[r'variableValuesIgnoreCase'] = this.variableValuesIgnoreCase;
    } else {
      json[r'variableValuesIgnoreCase'] = null;
    }
    if (this.parentTaskId != null) {
      json[r'parentTaskId'] = this.parentTaskId;
    } else {
      json[r'parentTaskId'] = null;
    }
    if (this.orQueries != null) {
      json[r'orQueries'] = this.orQueries;
    } else {
      json[r'orQueries'] = null;
    }
    if (this.sorting != null) {
      json[r'sorting'] = this.sorting;
    } else {
      json[r'sorting'] = null;
    }
    return json;
  }

  /// Returns a new [TaskQueryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskQueryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TaskQueryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TaskQueryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskQueryDto(
        taskId: mapValueOfType<String>(json, r'taskId'),
        taskIdIn: json[r'taskIdIn'] is Iterable
            ? (json[r'taskIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        processInstanceIdIn: json[r'processInstanceIdIn'] is Iterable
            ? (json[r'processInstanceIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processInstanceBusinessKey: mapValueOfType<String>(json, r'processInstanceBusinessKey'),
        processInstanceBusinessKeyExpression: mapValueOfType<String>(json, r'processInstanceBusinessKeyExpression'),
        processInstanceBusinessKeyIn: json[r'processInstanceBusinessKeyIn'] is Iterable
            ? (json[r'processInstanceBusinessKeyIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processInstanceBusinessKeyLike: mapValueOfType<String>(json, r'processInstanceBusinessKeyLike'),
        processInstanceBusinessKeyLikeExpression: mapValueOfType<String>(json, r'processInstanceBusinessKeyLikeExpression'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        processDefinitionKeyIn: json[r'processDefinitionKeyIn'] is Iterable
            ? (json[r'processDefinitionKeyIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processDefinitionName: mapValueOfType<String>(json, r'processDefinitionName'),
        processDefinitionNameLike: mapValueOfType<String>(json, r'processDefinitionNameLike'),
        executionId: mapValueOfType<String>(json, r'executionId'),
        caseInstanceId: mapValueOfType<String>(json, r'caseInstanceId'),
        caseInstanceBusinessKey: mapValueOfType<String>(json, r'caseInstanceBusinessKey'),
        caseInstanceBusinessKeyLike: mapValueOfType<String>(json, r'caseInstanceBusinessKeyLike'),
        caseDefinitionId: mapValueOfType<String>(json, r'caseDefinitionId'),
        caseDefinitionKey: mapValueOfType<String>(json, r'caseDefinitionKey'),
        caseDefinitionName: mapValueOfType<String>(json, r'caseDefinitionName'),
        caseDefinitionNameLike: mapValueOfType<String>(json, r'caseDefinitionNameLike'),
        caseExecutionId: mapValueOfType<String>(json, r'caseExecutionId'),
        activityInstanceIdIn: json[r'activityInstanceIdIn'] is Iterable
            ? (json[r'activityInstanceIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tenantIdIn: json[r'tenantIdIn'] is Iterable
            ? (json[r'tenantIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        withoutTenantId: mapValueOfType<bool>(json, r'withoutTenantId') ?? false,
        assignee: mapValueOfType<String>(json, r'assignee'),
        assigneeExpression: mapValueOfType<String>(json, r'assigneeExpression'),
        assigneeLike: mapValueOfType<String>(json, r'assigneeLike'),
        assigneeLikeExpression: mapValueOfType<String>(json, r'assigneeLikeExpression'),
        assigneeIn: json[r'assigneeIn'] is Iterable
            ? (json[r'assigneeIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        assigneeNotIn: json[r'assigneeNotIn'] is Iterable
            ? (json[r'assigneeNotIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        owner: mapValueOfType<String>(json, r'owner'),
        ownerExpression: mapValueOfType<String>(json, r'ownerExpression'),
        candidateGroup: mapValueOfType<String>(json, r'candidateGroup'),
        candidateGroupExpression: mapValueOfType<String>(json, r'candidateGroupExpression'),
        candidateUser: mapValueOfType<String>(json, r'candidateUser'),
        candidateUserExpression: mapValueOfType<String>(json, r'candidateUserExpression'),
        includeAssignedTasks: mapValueOfType<bool>(json, r'includeAssignedTasks') ?? false,
        involvedUser: mapValueOfType<String>(json, r'involvedUser'),
        involvedUserExpression: mapValueOfType<String>(json, r'involvedUserExpression'),
        assigned: mapValueOfType<bool>(json, r'assigned') ?? false,
        unassigned: mapValueOfType<bool>(json, r'unassigned') ?? false,
        taskDefinitionKey: mapValueOfType<String>(json, r'taskDefinitionKey'),
        taskDefinitionKeyIn: json[r'taskDefinitionKeyIn'] is Iterable
            ? (json[r'taskDefinitionKeyIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        taskDefinitionKeyLike: mapValueOfType<String>(json, r'taskDefinitionKeyLike'),
        name: mapValueOfType<String>(json, r'name'),
        nameNotEqual: mapValueOfType<String>(json, r'nameNotEqual'),
        nameLike: mapValueOfType<String>(json, r'nameLike'),
        nameNotLike: mapValueOfType<String>(json, r'nameNotLike'),
        description: mapValueOfType<String>(json, r'description'),
        descriptionLike: mapValueOfType<String>(json, r'descriptionLike'),
        priority: mapValueOfType<int>(json, r'priority'),
        maxPriority: mapValueOfType<int>(json, r'maxPriority'),
        minPriority: mapValueOfType<int>(json, r'minPriority'),
        dueDate: mapDateTime(json, r'dueDate', r''),
        dueDateExpression: mapValueOfType<String>(json, r'dueDateExpression'),
        dueAfter: mapDateTime(json, r'dueAfter', r''),
        dueAfterExpression: mapValueOfType<String>(json, r'dueAfterExpression'),
        dueBefore: mapDateTime(json, r'dueBefore', r''),
        dueBeforeExpression: mapValueOfType<String>(json, r'dueBeforeExpression'),
        withoutDueDate: mapValueOfType<bool>(json, r'withoutDueDate') ?? false,
        followUpDate: mapDateTime(json, r'followUpDate', r''),
        followUpDateExpression: mapValueOfType<String>(json, r'followUpDateExpression'),
        followUpAfter: mapDateTime(json, r'followUpAfter', r''),
        followUpAfterExpression: mapValueOfType<String>(json, r'followUpAfterExpression'),
        followUpBefore: mapValueOfType<String>(json, r'followUpBefore'),
        followUpBeforeExpression: mapValueOfType<String>(json, r'followUpBeforeExpression'),
        followUpBeforeOrNotExistent: mapDateTime(json, r'followUpBeforeOrNotExistent', r''),
        followUpBeforeOrNotExistentExpression: mapValueOfType<String>(json, r'followUpBeforeOrNotExistentExpression'),
        createdOn: mapDateTime(json, r'createdOn', r''),
        createdOnExpression: mapValueOfType<String>(json, r'createdOnExpression'),
        createdAfter: mapDateTime(json, r'createdAfter', r''),
        createdAfterExpression: mapValueOfType<String>(json, r'createdAfterExpression'),
        createdBefore: mapDateTime(json, r'createdBefore', r''),
        createdBeforeExpression: mapValueOfType<String>(json, r'createdBeforeExpression'),
        updatedAfter: mapDateTime(json, r'updatedAfter', r''),
        updatedAfterExpression: mapValueOfType<String>(json, r'updatedAfterExpression'),
        delegationState: TaskQueryDtoDelegationStateEnum.fromJson(json[r'delegationState']),
        candidateGroups: json[r'candidateGroups'] is Iterable
            ? (json[r'candidateGroups'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        candidateGroupsExpression: mapValueOfType<String>(json, r'candidateGroupsExpression'),
        withCandidateGroups: mapValueOfType<bool>(json, r'withCandidateGroups') ?? false,
        withoutCandidateGroups: mapValueOfType<bool>(json, r'withoutCandidateGroups') ?? false,
        withCandidateUsers: mapValueOfType<bool>(json, r'withCandidateUsers') ?? false,
        withoutCandidateUsers: mapValueOfType<bool>(json, r'withoutCandidateUsers') ?? false,
        active: mapValueOfType<bool>(json, r'active') ?? false,
        suspended: mapValueOfType<bool>(json, r'suspended') ?? false,
        taskVariables: VariableQueryParameterDto.listFromJson(json[r'taskVariables']),
        processVariables: VariableQueryParameterDto.listFromJson(json[r'processVariables']),
        caseInstanceVariables: VariableQueryParameterDto.listFromJson(json[r'caseInstanceVariables']),
        variableNamesIgnoreCase: mapValueOfType<bool>(json, r'variableNamesIgnoreCase') ?? false,
        variableValuesIgnoreCase: mapValueOfType<bool>(json, r'variableValuesIgnoreCase') ?? false,
        parentTaskId: mapValueOfType<String>(json, r'parentTaskId'),
        orQueries: TaskQueryDto.listFromJson(json[r'orQueries']),
        sorting: TaskQueryDtoSortingInner.listFromJson(json[r'sorting']),
      );
    }
    return null;
  }

  static List<TaskQueryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskQueryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskQueryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskQueryDto> mapFromJson(dynamic json) {
    final map = <String, TaskQueryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskQueryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskQueryDto-objects as value to a dart map
  static Map<String, List<TaskQueryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TaskQueryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskQueryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Restrict to tasks that are in the given delegation state. Valid values are `PENDING` and `RESOLVED`.
class TaskQueryDtoDelegationStateEnum {
  /// Instantiate a new enum with the provided [value].
  const TaskQueryDtoDelegationStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = TaskQueryDtoDelegationStateEnum._(r'PENDING');
  static const RESOLVED = TaskQueryDtoDelegationStateEnum._(r'RESOLVED');

  /// List of all possible values in this [enum][TaskQueryDtoDelegationStateEnum].
  static const values = <TaskQueryDtoDelegationStateEnum>[
    PENDING,
    RESOLVED,
  ];

  static TaskQueryDtoDelegationStateEnum? fromJson(dynamic value) => TaskQueryDtoDelegationStateEnumTypeTransformer().decode(value);

  static List<TaskQueryDtoDelegationStateEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskQueryDtoDelegationStateEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskQueryDtoDelegationStateEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TaskQueryDtoDelegationStateEnum] to String,
/// and [decode] dynamic data back to [TaskQueryDtoDelegationStateEnum].
class TaskQueryDtoDelegationStateEnumTypeTransformer {
  factory TaskQueryDtoDelegationStateEnumTypeTransformer() => _instance ??= const TaskQueryDtoDelegationStateEnumTypeTransformer._();

  const TaskQueryDtoDelegationStateEnumTypeTransformer._();

  String encode(TaskQueryDtoDelegationStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TaskQueryDtoDelegationStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TaskQueryDtoDelegationStateEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return TaskQueryDtoDelegationStateEnum.PENDING;
        case r'RESOLVED': return TaskQueryDtoDelegationStateEnum.RESOLVED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TaskQueryDtoDelegationStateEnumTypeTransformer] instance.
  static TaskQueryDtoDelegationStateEnumTypeTransformer? _instance;
}


