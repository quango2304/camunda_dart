//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricTaskInstanceQueryDto {
  /// Returns a new [HistoricTaskInstanceQueryDto] instance.
  HistoricTaskInstanceQueryDto({
    this.taskId,
    this.taskParentTaskId,
    this.processInstanceId,
    this.processInstanceBusinessKey,
    this.processInstanceBusinessKeyIn = const [],
    this.processInstanceBusinessKeyLike,
    this.executionId,
    this.processDefinitionId,
    this.processDefinitionKey,
    this.processDefinitionName,
    this.caseInstanceId,
    this.caseExecutionId,
    this.caseDefinitionId,
    this.caseDefinitionKey,
    this.caseDefinitionName,
    this.activityInstanceIdIn = const [],
    this.taskName,
    this.taskNameLike,
    this.taskDescription,
    this.taskDescriptionLike,
    this.taskDefinitionKey,
    this.taskDefinitionKeyIn = const [],
    this.taskDeleteReason,
    this.taskDeleteReasonLike,
    this.taskAssignee,
    this.taskAssigneeLike,
    this.taskOwner,
    this.taskOwnerLike,
    this.taskPriority,
    this.assigned,
    this.unassigned,
    this.finished,
    this.unfinished,
    this.processFinished,
    this.processUnfinished,
    this.taskDueDate,
    this.taskDueDateBefore,
    this.taskDueDateAfter,
    this.withoutTaskDueDate,
    this.taskFollowUpDate,
    this.taskFollowUpDateBefore,
    this.taskFollowUpDateAfter,
    this.startedBefore,
    this.startedAfter,
    this.finishedBefore,
    this.finishedAfter,
    this.tenantIdIn = const [],
    this.withoutTenantId,
    this.taskVariables = const [],
    this.processVariables = const [],
    this.variableNamesIgnoreCase,
    this.variableValuesIgnoreCase,
    this.taskInvolvedUser,
    this.taskInvolvedGroup,
    this.taskHadCandidateUser,
    this.taskHadCandidateGroup,
    this.withCandidateGroups,
    this.withoutCandidateGroups,
    this.orQueries = const [],
    this.sorting = const [],
  });

  /// Filter by task id.
  String? taskId;

  /// Filter by parent task id.
  String? taskParentTaskId;

  /// Filter by process instance id.
  String? processInstanceId;

  /// Filter by process instance business key.
  String? processInstanceBusinessKey;

  /// Filter by process instances with one of the give business keys. The keys need to be in a comma-separated list.
  List<String>? processInstanceBusinessKeyIn;

  /// Filter by  process instance business key that has the parameter value as a substring.
  String? processInstanceBusinessKeyLike;

  /// Filter by the id of the execution that executed the task.
  String? executionId;

  /// Filter by process definition id.
  String? processDefinitionId;

  /// Restrict to tasks that belong to a process definition with the given key.
  String? processDefinitionKey;

  /// Restrict to tasks that belong to a process definition with the given name.
  String? processDefinitionName;

  /// Filter by case instance id.
  String? caseInstanceId;

  /// Filter by the id of the case execution that executed the task.
  String? caseExecutionId;

  /// Filter by case definition id.
  String? caseDefinitionId;

  /// Restrict to tasks that belong to a case definition with the given key.
  String? caseDefinitionKey;

  /// Restrict to tasks that belong to a case definition with the given name.
  String? caseDefinitionName;

  /// Only include tasks which belong to one of the passed  activity instance ids.
  List<String>? activityInstanceIdIn;

  /// Restrict to tasks that have the given name.
  String? taskName;

  /// Restrict to tasks that have a name with the given parameter value as substring.
  String? taskNameLike;

  /// Restrict to tasks that have the given description.
  String? taskDescription;

  /// Restrict to tasks that have a description that has the parameter value as a substring.
  String? taskDescriptionLike;

  /// Restrict to tasks that have the given key.
  String? taskDefinitionKey;

  /// Restrict to tasks that have one of the passed  task definition keys.
  List<String>? taskDefinitionKeyIn;

  /// Restrict to tasks that have the given delete reason.
  String? taskDeleteReason;

  /// Restrict to tasks that have a delete reason that has the parameter value as a substring.
  String? taskDeleteReasonLike;

  /// Restrict to tasks that the given user is assigned to.
  String? taskAssignee;

  /// Restrict to tasks that are assigned to users with the parameter value as a substring.
  String? taskAssigneeLike;

  /// Restrict to tasks that the given user owns.
  String? taskOwner;

  /// Restrict to tasks that are owned by users with the parameter value as a substring.
  String? taskOwnerLike;

  /// Restrict to tasks that have the given priority.
  int? taskPriority;

  /// If set to `true`, restricts the query to all tasks that are assigned.
  bool? assigned;

  /// If set to `true`, restricts the query to all tasks that are unassigned.
  bool? unassigned;

  /// Only include finished tasks. Value may only be `true`, as `false` is the default behavior.
  bool? finished;

  /// Only include unfinished tasks. Value may only be `true`, as `false` is the default behavior.
  bool? unfinished;

  /// Only include tasks of finished processes. Value may only be `true`, as `false` is the default behavior.
  bool? processFinished;

  /// Only include tasks of unfinished processes. Value may only be `true`, as `false` is the default behavior.
  bool? processUnfinished;

  /// Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? taskDueDate;

  /// Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? taskDueDateBefore;

  /// Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? taskDueDateAfter;

  /// Only include tasks which have no due date. Value may only be `true`, as `false` is the default behavior.
  bool? withoutTaskDueDate;

  /// Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? taskFollowUpDate;

  /// Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? taskFollowUpDateBefore;

  /// Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? taskFollowUpDateAfter;

  /// Restrict to tasks that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? startedBefore;

  /// Restrict to tasks that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? startedAfter;

  /// Restrict to tasks that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? finishedBefore;

  /// Restrict to tasks that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? finishedAfter;

  /// Filter by a  list of tenant ids. A task instance must have one of the given tenant ids.
  List<String>? tenantIdIn;

  /// Only include historic task instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  bool? withoutTenantId;

  /// Only include tasks that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`.  `key` and `value` may not contain underscore or comma characters.
  List<VariableQueryParameterDto>? taskVariables;

  /// Only include tasks that belong to process instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`; * `notLike`.  `key` and `value` may not contain underscore or comma characters.
  List<VariableQueryParameterDto>? processVariables;

  /// Match the variable name provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
  bool? variableNamesIgnoreCase;

  /// Match the variable value provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
  bool? variableValuesIgnoreCase;

  /// Restrict to tasks with a historic identity link to the given user.
  String? taskInvolvedUser;

  /// Restrict to tasks with a historic identity link to the given group.
  String? taskInvolvedGroup;

  /// Restrict to tasks with a historic identity link to the given candidate user.
  String? taskHadCandidateUser;

  /// Restrict to tasks with a historic identity link to the given candidate group.
  String? taskHadCandidateGroup;

  /// Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior.
  bool? withCandidateGroups;

  /// Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior.
  bool? withoutCandidateGroups;

  /// A JSON array of nested historic task instance queries with OR semantics.  A task instance matches a nested query if it fulfills at least one of the query's predicates.  With multiple nested queries, a task instance must fulfill at least one predicate of each query ([Conjunctive Normal Form](https://en.wikipedia.org/wiki/Conjunctive_normal_form)).  All task instance query properties can be used except for: `sorting`, `withCandidateGroups`, ` withoutCandidateGroups`.  See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-engine-api/#or-queries) for more information about OR queries.
  List<HistoricTaskInstanceQueryDto>? orQueries;

  /// An array of criteria to sort the result by. Each element of the array is                     an object that specifies one ordering. The position in the array                     identifies the rank of an ordering, i.e., whether it is primary, secondary,                     etc. Sorting has no effect for `count` endpoints
  List<HistoricTaskInstanceQueryDtoSortingInner>? sorting;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricTaskInstanceQueryDto &&
    other.taskId == taskId &&
    other.taskParentTaskId == taskParentTaskId &&
    other.processInstanceId == processInstanceId &&
    other.processInstanceBusinessKey == processInstanceBusinessKey &&
    _deepEquality.equals(other.processInstanceBusinessKeyIn, processInstanceBusinessKeyIn) &&
    other.processInstanceBusinessKeyLike == processInstanceBusinessKeyLike &&
    other.executionId == executionId &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    other.processDefinitionName == processDefinitionName &&
    other.caseInstanceId == caseInstanceId &&
    other.caseExecutionId == caseExecutionId &&
    other.caseDefinitionId == caseDefinitionId &&
    other.caseDefinitionKey == caseDefinitionKey &&
    other.caseDefinitionName == caseDefinitionName &&
    _deepEquality.equals(other.activityInstanceIdIn, activityInstanceIdIn) &&
    other.taskName == taskName &&
    other.taskNameLike == taskNameLike &&
    other.taskDescription == taskDescription &&
    other.taskDescriptionLike == taskDescriptionLike &&
    other.taskDefinitionKey == taskDefinitionKey &&
    _deepEquality.equals(other.taskDefinitionKeyIn, taskDefinitionKeyIn) &&
    other.taskDeleteReason == taskDeleteReason &&
    other.taskDeleteReasonLike == taskDeleteReasonLike &&
    other.taskAssignee == taskAssignee &&
    other.taskAssigneeLike == taskAssigneeLike &&
    other.taskOwner == taskOwner &&
    other.taskOwnerLike == taskOwnerLike &&
    other.taskPriority == taskPriority &&
    other.assigned == assigned &&
    other.unassigned == unassigned &&
    other.finished == finished &&
    other.unfinished == unfinished &&
    other.processFinished == processFinished &&
    other.processUnfinished == processUnfinished &&
    other.taskDueDate == taskDueDate &&
    other.taskDueDateBefore == taskDueDateBefore &&
    other.taskDueDateAfter == taskDueDateAfter &&
    other.withoutTaskDueDate == withoutTaskDueDate &&
    other.taskFollowUpDate == taskFollowUpDate &&
    other.taskFollowUpDateBefore == taskFollowUpDateBefore &&
    other.taskFollowUpDateAfter == taskFollowUpDateAfter &&
    other.startedBefore == startedBefore &&
    other.startedAfter == startedAfter &&
    other.finishedBefore == finishedBefore &&
    other.finishedAfter == finishedAfter &&
    _deepEquality.equals(other.tenantIdIn, tenantIdIn) &&
    other.withoutTenantId == withoutTenantId &&
    _deepEquality.equals(other.taskVariables, taskVariables) &&
    _deepEquality.equals(other.processVariables, processVariables) &&
    other.variableNamesIgnoreCase == variableNamesIgnoreCase &&
    other.variableValuesIgnoreCase == variableValuesIgnoreCase &&
    other.taskInvolvedUser == taskInvolvedUser &&
    other.taskInvolvedGroup == taskInvolvedGroup &&
    other.taskHadCandidateUser == taskHadCandidateUser &&
    other.taskHadCandidateGroup == taskHadCandidateGroup &&
    other.withCandidateGroups == withCandidateGroups &&
    other.withoutCandidateGroups == withoutCandidateGroups &&
    _deepEquality.equals(other.orQueries, orQueries) &&
    _deepEquality.equals(other.sorting, sorting);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (taskId == null ? 0 : taskId!.hashCode) +
    (taskParentTaskId == null ? 0 : taskParentTaskId!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (processInstanceBusinessKey == null ? 0 : processInstanceBusinessKey!.hashCode) +
    (processInstanceBusinessKeyIn == null ? 0 : processInstanceBusinessKeyIn!.hashCode) +
    (processInstanceBusinessKeyLike == null ? 0 : processInstanceBusinessKeyLike!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (processDefinitionName == null ? 0 : processDefinitionName!.hashCode) +
    (caseInstanceId == null ? 0 : caseInstanceId!.hashCode) +
    (caseExecutionId == null ? 0 : caseExecutionId!.hashCode) +
    (caseDefinitionId == null ? 0 : caseDefinitionId!.hashCode) +
    (caseDefinitionKey == null ? 0 : caseDefinitionKey!.hashCode) +
    (caseDefinitionName == null ? 0 : caseDefinitionName!.hashCode) +
    (activityInstanceIdIn == null ? 0 : activityInstanceIdIn!.hashCode) +
    (taskName == null ? 0 : taskName!.hashCode) +
    (taskNameLike == null ? 0 : taskNameLike!.hashCode) +
    (taskDescription == null ? 0 : taskDescription!.hashCode) +
    (taskDescriptionLike == null ? 0 : taskDescriptionLike!.hashCode) +
    (taskDefinitionKey == null ? 0 : taskDefinitionKey!.hashCode) +
    (taskDefinitionKeyIn == null ? 0 : taskDefinitionKeyIn!.hashCode) +
    (taskDeleteReason == null ? 0 : taskDeleteReason!.hashCode) +
    (taskDeleteReasonLike == null ? 0 : taskDeleteReasonLike!.hashCode) +
    (taskAssignee == null ? 0 : taskAssignee!.hashCode) +
    (taskAssigneeLike == null ? 0 : taskAssigneeLike!.hashCode) +
    (taskOwner == null ? 0 : taskOwner!.hashCode) +
    (taskOwnerLike == null ? 0 : taskOwnerLike!.hashCode) +
    (taskPriority == null ? 0 : taskPriority!.hashCode) +
    (assigned == null ? 0 : assigned!.hashCode) +
    (unassigned == null ? 0 : unassigned!.hashCode) +
    (finished == null ? 0 : finished!.hashCode) +
    (unfinished == null ? 0 : unfinished!.hashCode) +
    (processFinished == null ? 0 : processFinished!.hashCode) +
    (processUnfinished == null ? 0 : processUnfinished!.hashCode) +
    (taskDueDate == null ? 0 : taskDueDate!.hashCode) +
    (taskDueDateBefore == null ? 0 : taskDueDateBefore!.hashCode) +
    (taskDueDateAfter == null ? 0 : taskDueDateAfter!.hashCode) +
    (withoutTaskDueDate == null ? 0 : withoutTaskDueDate!.hashCode) +
    (taskFollowUpDate == null ? 0 : taskFollowUpDate!.hashCode) +
    (taskFollowUpDateBefore == null ? 0 : taskFollowUpDateBefore!.hashCode) +
    (taskFollowUpDateAfter == null ? 0 : taskFollowUpDateAfter!.hashCode) +
    (startedBefore == null ? 0 : startedBefore!.hashCode) +
    (startedAfter == null ? 0 : startedAfter!.hashCode) +
    (finishedBefore == null ? 0 : finishedBefore!.hashCode) +
    (finishedAfter == null ? 0 : finishedAfter!.hashCode) +
    (tenantIdIn == null ? 0 : tenantIdIn!.hashCode) +
    (withoutTenantId == null ? 0 : withoutTenantId!.hashCode) +
    (taskVariables == null ? 0 : taskVariables!.hashCode) +
    (processVariables == null ? 0 : processVariables!.hashCode) +
    (variableNamesIgnoreCase == null ? 0 : variableNamesIgnoreCase!.hashCode) +
    (variableValuesIgnoreCase == null ? 0 : variableValuesIgnoreCase!.hashCode) +
    (taskInvolvedUser == null ? 0 : taskInvolvedUser!.hashCode) +
    (taskInvolvedGroup == null ? 0 : taskInvolvedGroup!.hashCode) +
    (taskHadCandidateUser == null ? 0 : taskHadCandidateUser!.hashCode) +
    (taskHadCandidateGroup == null ? 0 : taskHadCandidateGroup!.hashCode) +
    (withCandidateGroups == null ? 0 : withCandidateGroups!.hashCode) +
    (withoutCandidateGroups == null ? 0 : withoutCandidateGroups!.hashCode) +
    (orQueries == null ? 0 : orQueries!.hashCode) +
    (sorting == null ? 0 : sorting!.hashCode);

  @override
  String toString() => 'HistoricTaskInstanceQueryDto[taskId=$taskId, taskParentTaskId=$taskParentTaskId, processInstanceId=$processInstanceId, processInstanceBusinessKey=$processInstanceBusinessKey, processInstanceBusinessKeyIn=$processInstanceBusinessKeyIn, processInstanceBusinessKeyLike=$processInstanceBusinessKeyLike, executionId=$executionId, processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, processDefinitionName=$processDefinitionName, caseInstanceId=$caseInstanceId, caseExecutionId=$caseExecutionId, caseDefinitionId=$caseDefinitionId, caseDefinitionKey=$caseDefinitionKey, caseDefinitionName=$caseDefinitionName, activityInstanceIdIn=$activityInstanceIdIn, taskName=$taskName, taskNameLike=$taskNameLike, taskDescription=$taskDescription, taskDescriptionLike=$taskDescriptionLike, taskDefinitionKey=$taskDefinitionKey, taskDefinitionKeyIn=$taskDefinitionKeyIn, taskDeleteReason=$taskDeleteReason, taskDeleteReasonLike=$taskDeleteReasonLike, taskAssignee=$taskAssignee, taskAssigneeLike=$taskAssigneeLike, taskOwner=$taskOwner, taskOwnerLike=$taskOwnerLike, taskPriority=$taskPriority, assigned=$assigned, unassigned=$unassigned, finished=$finished, unfinished=$unfinished, processFinished=$processFinished, processUnfinished=$processUnfinished, taskDueDate=$taskDueDate, taskDueDateBefore=$taskDueDateBefore, taskDueDateAfter=$taskDueDateAfter, withoutTaskDueDate=$withoutTaskDueDate, taskFollowUpDate=$taskFollowUpDate, taskFollowUpDateBefore=$taskFollowUpDateBefore, taskFollowUpDateAfter=$taskFollowUpDateAfter, startedBefore=$startedBefore, startedAfter=$startedAfter, finishedBefore=$finishedBefore, finishedAfter=$finishedAfter, tenantIdIn=$tenantIdIn, withoutTenantId=$withoutTenantId, taskVariables=$taskVariables, processVariables=$processVariables, variableNamesIgnoreCase=$variableNamesIgnoreCase, variableValuesIgnoreCase=$variableValuesIgnoreCase, taskInvolvedUser=$taskInvolvedUser, taskInvolvedGroup=$taskInvolvedGroup, taskHadCandidateUser=$taskHadCandidateUser, taskHadCandidateGroup=$taskHadCandidateGroup, withCandidateGroups=$withCandidateGroups, withoutCandidateGroups=$withoutCandidateGroups, orQueries=$orQueries, sorting=$sorting]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.taskId != null) {
      json[r'taskId'] = this.taskId;
    } else {
      json[r'taskId'] = null;
    }
    if (this.taskParentTaskId != null) {
      json[r'taskParentTaskId'] = this.taskParentTaskId;
    } else {
      json[r'taskParentTaskId'] = null;
    }
    if (this.processInstanceId != null) {
      json[r'processInstanceId'] = this.processInstanceId;
    } else {
      json[r'processInstanceId'] = null;
    }
    if (this.processInstanceBusinessKey != null) {
      json[r'processInstanceBusinessKey'] = this.processInstanceBusinessKey;
    } else {
      json[r'processInstanceBusinessKey'] = null;
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
    if (this.executionId != null) {
      json[r'executionId'] = this.executionId;
    } else {
      json[r'executionId'] = null;
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
    if (this.processDefinitionName != null) {
      json[r'processDefinitionName'] = this.processDefinitionName;
    } else {
      json[r'processDefinitionName'] = null;
    }
    if (this.caseInstanceId != null) {
      json[r'caseInstanceId'] = this.caseInstanceId;
    } else {
      json[r'caseInstanceId'] = null;
    }
    if (this.caseExecutionId != null) {
      json[r'caseExecutionId'] = this.caseExecutionId;
    } else {
      json[r'caseExecutionId'] = null;
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
    if (this.activityInstanceIdIn != null) {
      json[r'activityInstanceIdIn'] = this.activityInstanceIdIn;
    } else {
      json[r'activityInstanceIdIn'] = null;
    }
    if (this.taskName != null) {
      json[r'taskName'] = this.taskName;
    } else {
      json[r'taskName'] = null;
    }
    if (this.taskNameLike != null) {
      json[r'taskNameLike'] = this.taskNameLike;
    } else {
      json[r'taskNameLike'] = null;
    }
    if (this.taskDescription != null) {
      json[r'taskDescription'] = this.taskDescription;
    } else {
      json[r'taskDescription'] = null;
    }
    if (this.taskDescriptionLike != null) {
      json[r'taskDescriptionLike'] = this.taskDescriptionLike;
    } else {
      json[r'taskDescriptionLike'] = null;
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
    if (this.taskDeleteReason != null) {
      json[r'taskDeleteReason'] = this.taskDeleteReason;
    } else {
      json[r'taskDeleteReason'] = null;
    }
    if (this.taskDeleteReasonLike != null) {
      json[r'taskDeleteReasonLike'] = this.taskDeleteReasonLike;
    } else {
      json[r'taskDeleteReasonLike'] = null;
    }
    if (this.taskAssignee != null) {
      json[r'taskAssignee'] = this.taskAssignee;
    } else {
      json[r'taskAssignee'] = null;
    }
    if (this.taskAssigneeLike != null) {
      json[r'taskAssigneeLike'] = this.taskAssigneeLike;
    } else {
      json[r'taskAssigneeLike'] = null;
    }
    if (this.taskOwner != null) {
      json[r'taskOwner'] = this.taskOwner;
    } else {
      json[r'taskOwner'] = null;
    }
    if (this.taskOwnerLike != null) {
      json[r'taskOwnerLike'] = this.taskOwnerLike;
    } else {
      json[r'taskOwnerLike'] = null;
    }
    if (this.taskPriority != null) {
      json[r'taskPriority'] = this.taskPriority;
    } else {
      json[r'taskPriority'] = null;
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
    if (this.finished != null) {
      json[r'finished'] = this.finished;
    } else {
      json[r'finished'] = null;
    }
    if (this.unfinished != null) {
      json[r'unfinished'] = this.unfinished;
    } else {
      json[r'unfinished'] = null;
    }
    if (this.processFinished != null) {
      json[r'processFinished'] = this.processFinished;
    } else {
      json[r'processFinished'] = null;
    }
    if (this.processUnfinished != null) {
      json[r'processUnfinished'] = this.processUnfinished;
    } else {
      json[r'processUnfinished'] = null;
    }
    if (this.taskDueDate != null) {
      json[r'taskDueDate'] = this.taskDueDate!.toUtc().toIso8601String();
    } else {
      json[r'taskDueDate'] = null;
    }
    if (this.taskDueDateBefore != null) {
      json[r'taskDueDateBefore'] = this.taskDueDateBefore!.toUtc().toIso8601String();
    } else {
      json[r'taskDueDateBefore'] = null;
    }
    if (this.taskDueDateAfter != null) {
      json[r'taskDueDateAfter'] = this.taskDueDateAfter!.toUtc().toIso8601String();
    } else {
      json[r'taskDueDateAfter'] = null;
    }
    if (this.withoutTaskDueDate != null) {
      json[r'withoutTaskDueDate'] = this.withoutTaskDueDate;
    } else {
      json[r'withoutTaskDueDate'] = null;
    }
    if (this.taskFollowUpDate != null) {
      json[r'taskFollowUpDate'] = this.taskFollowUpDate!.toUtc().toIso8601String();
    } else {
      json[r'taskFollowUpDate'] = null;
    }
    if (this.taskFollowUpDateBefore != null) {
      json[r'taskFollowUpDateBefore'] = this.taskFollowUpDateBefore!.toUtc().toIso8601String();
    } else {
      json[r'taskFollowUpDateBefore'] = null;
    }
    if (this.taskFollowUpDateAfter != null) {
      json[r'taskFollowUpDateAfter'] = this.taskFollowUpDateAfter!.toUtc().toIso8601String();
    } else {
      json[r'taskFollowUpDateAfter'] = null;
    }
    if (this.startedBefore != null) {
      json[r'startedBefore'] = this.startedBefore!.toUtc().toIso8601String();
    } else {
      json[r'startedBefore'] = null;
    }
    if (this.startedAfter != null) {
      json[r'startedAfter'] = this.startedAfter!.toUtc().toIso8601String();
    } else {
      json[r'startedAfter'] = null;
    }
    if (this.finishedBefore != null) {
      json[r'finishedBefore'] = this.finishedBefore!.toUtc().toIso8601String();
    } else {
      json[r'finishedBefore'] = null;
    }
    if (this.finishedAfter != null) {
      json[r'finishedAfter'] = this.finishedAfter!.toUtc().toIso8601String();
    } else {
      json[r'finishedAfter'] = null;
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
    if (this.taskInvolvedUser != null) {
      json[r'taskInvolvedUser'] = this.taskInvolvedUser;
    } else {
      json[r'taskInvolvedUser'] = null;
    }
    if (this.taskInvolvedGroup != null) {
      json[r'taskInvolvedGroup'] = this.taskInvolvedGroup;
    } else {
      json[r'taskInvolvedGroup'] = null;
    }
    if (this.taskHadCandidateUser != null) {
      json[r'taskHadCandidateUser'] = this.taskHadCandidateUser;
    } else {
      json[r'taskHadCandidateUser'] = null;
    }
    if (this.taskHadCandidateGroup != null) {
      json[r'taskHadCandidateGroup'] = this.taskHadCandidateGroup;
    } else {
      json[r'taskHadCandidateGroup'] = null;
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

  /// Returns a new [HistoricTaskInstanceQueryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricTaskInstanceQueryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricTaskInstanceQueryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricTaskInstanceQueryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricTaskInstanceQueryDto(
        taskId: mapValueOfType<String>(json, r'taskId'),
        taskParentTaskId: mapValueOfType<String>(json, r'taskParentTaskId'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        processInstanceBusinessKey: mapValueOfType<String>(json, r'processInstanceBusinessKey'),
        processInstanceBusinessKeyIn: json[r'processInstanceBusinessKeyIn'] is Iterable
            ? (json[r'processInstanceBusinessKeyIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processInstanceBusinessKeyLike: mapValueOfType<String>(json, r'processInstanceBusinessKeyLike'),
        executionId: mapValueOfType<String>(json, r'executionId'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        processDefinitionName: mapValueOfType<String>(json, r'processDefinitionName'),
        caseInstanceId: mapValueOfType<String>(json, r'caseInstanceId'),
        caseExecutionId: mapValueOfType<String>(json, r'caseExecutionId'),
        caseDefinitionId: mapValueOfType<String>(json, r'caseDefinitionId'),
        caseDefinitionKey: mapValueOfType<String>(json, r'caseDefinitionKey'),
        caseDefinitionName: mapValueOfType<String>(json, r'caseDefinitionName'),
        activityInstanceIdIn: json[r'activityInstanceIdIn'] is Iterable
            ? (json[r'activityInstanceIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        taskName: mapValueOfType<String>(json, r'taskName'),
        taskNameLike: mapValueOfType<String>(json, r'taskNameLike'),
        taskDescription: mapValueOfType<String>(json, r'taskDescription'),
        taskDescriptionLike: mapValueOfType<String>(json, r'taskDescriptionLike'),
        taskDefinitionKey: mapValueOfType<String>(json, r'taskDefinitionKey'),
        taskDefinitionKeyIn: json[r'taskDefinitionKeyIn'] is Iterable
            ? (json[r'taskDefinitionKeyIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        taskDeleteReason: mapValueOfType<String>(json, r'taskDeleteReason'),
        taskDeleteReasonLike: mapValueOfType<String>(json, r'taskDeleteReasonLike'),
        taskAssignee: mapValueOfType<String>(json, r'taskAssignee'),
        taskAssigneeLike: mapValueOfType<String>(json, r'taskAssigneeLike'),
        taskOwner: mapValueOfType<String>(json, r'taskOwner'),
        taskOwnerLike: mapValueOfType<String>(json, r'taskOwnerLike'),
        taskPriority: mapValueOfType<int>(json, r'taskPriority'),
        assigned: mapValueOfType<bool>(json, r'assigned'),
        unassigned: mapValueOfType<bool>(json, r'unassigned'),
        finished: mapValueOfType<bool>(json, r'finished'),
        unfinished: mapValueOfType<bool>(json, r'unfinished'),
        processFinished: mapValueOfType<bool>(json, r'processFinished'),
        processUnfinished: mapValueOfType<bool>(json, r'processUnfinished'),
        taskDueDate: mapDateTime(json, r'taskDueDate', r''),
        taskDueDateBefore: mapDateTime(json, r'taskDueDateBefore', r''),
        taskDueDateAfter: mapDateTime(json, r'taskDueDateAfter', r''),
        withoutTaskDueDate: mapValueOfType<bool>(json, r'withoutTaskDueDate'),
        taskFollowUpDate: mapDateTime(json, r'taskFollowUpDate', r''),
        taskFollowUpDateBefore: mapDateTime(json, r'taskFollowUpDateBefore', r''),
        taskFollowUpDateAfter: mapDateTime(json, r'taskFollowUpDateAfter', r''),
        startedBefore: mapDateTime(json, r'startedBefore', r''),
        startedAfter: mapDateTime(json, r'startedAfter', r''),
        finishedBefore: mapDateTime(json, r'finishedBefore', r''),
        finishedAfter: mapDateTime(json, r'finishedAfter', r''),
        tenantIdIn: json[r'tenantIdIn'] is Iterable
            ? (json[r'tenantIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        withoutTenantId: mapValueOfType<bool>(json, r'withoutTenantId'),
        taskVariables: VariableQueryParameterDto.listFromJson(json[r'taskVariables']),
        processVariables: VariableQueryParameterDto.listFromJson(json[r'processVariables']),
        variableNamesIgnoreCase: mapValueOfType<bool>(json, r'variableNamesIgnoreCase'),
        variableValuesIgnoreCase: mapValueOfType<bool>(json, r'variableValuesIgnoreCase'),
        taskInvolvedUser: mapValueOfType<String>(json, r'taskInvolvedUser'),
        taskInvolvedGroup: mapValueOfType<String>(json, r'taskInvolvedGroup'),
        taskHadCandidateUser: mapValueOfType<String>(json, r'taskHadCandidateUser'),
        taskHadCandidateGroup: mapValueOfType<String>(json, r'taskHadCandidateGroup'),
        withCandidateGroups: mapValueOfType<bool>(json, r'withCandidateGroups'),
        withoutCandidateGroups: mapValueOfType<bool>(json, r'withoutCandidateGroups'),
        orQueries: HistoricTaskInstanceQueryDto.listFromJson(json[r'orQueries']),
        sorting: HistoricTaskInstanceQueryDtoSortingInner.listFromJson(json[r'sorting']),
      );
    }
    return null;
  }

  static List<HistoricTaskInstanceQueryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricTaskInstanceQueryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricTaskInstanceQueryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricTaskInstanceQueryDto> mapFromJson(dynamic json) {
    final map = <String, HistoricTaskInstanceQueryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricTaskInstanceQueryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricTaskInstanceQueryDto-objects as value to a dart map
  static Map<String, List<HistoricTaskInstanceQueryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricTaskInstanceQueryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricTaskInstanceQueryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

