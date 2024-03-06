//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricProcessInstanceQueryDto {
  /// Returns a new [HistoricProcessInstanceQueryDto] instance.
  HistoricProcessInstanceQueryDto({
    this.processInstanceId,
    this.processInstanceIds = const [],
    this.processDefinitionId,
    this.processDefinitionKey,
    this.processDefinitionKeyIn = const [],
    this.processDefinitionName,
    this.processDefinitionNameLike,
    this.processDefinitionKeyNotIn = const [],
    this.processInstanceBusinessKey,
    this.processInstanceBusinessKeyIn = const [],
    this.processInstanceBusinessKeyLike,
    this.rootProcessInstances,
    this.finished,
    this.unfinished,
    this.withIncidents,
    this.withRootIncidents,
    this.incidentType,
    this.incidentStatus,
    this.incidentMessage,
    this.incidentMessageLike,
    this.startedBefore,
    this.startedAfter,
    this.finishedBefore,
    this.finishedAfter,
    this.executedActivityAfter,
    this.executedActivityBefore,
    this.executedJobAfter,
    this.executedJobBefore,
    this.startedBy,
    this.superProcessInstanceId,
    this.subProcessInstanceId,
    this.superCaseInstanceId,
    this.subCaseInstanceId,
    this.caseInstanceId,
    this.tenantIdIn = const [],
    this.withoutTenantId,
    this.executedActivityIdIn = const [],
    this.activeActivityIdIn = const [],
    this.active,
    this.suspended,
    this.completed,
    this.externallyTerminated,
    this.internallyTerminated,
    this.variables = const [],
    this.variableNamesIgnoreCase,
    this.variableValuesIgnoreCase,
    this.orQueries = const [],
    this.sorting = const [],
  });

  /// Filter by process instance id.
  String? processInstanceId;

  /// Filter by process instance ids. Must be a JSON array of `Strings`.
  List<String>? processInstanceIds;

  /// Filter by the process definition the instances run on.
  String? processDefinitionId;

  /// Filter by the key of the process definition the instances run on.
  String? processDefinitionKey;

  /// Filter by a list of process definition keys. A process instance must have one of the given process definition keys. Must be a JSON array of `Strings`.
  List<String>? processDefinitionKeyIn;

  /// Filter by the name of the process definition the instances run on.
  String? processDefinitionName;

  /// Filter by process definition names that the parameter is a substring of.
  String? processDefinitionNameLike;

  /// Exclude instances that belong to a set of process definitions. Must be a JSON array of `Strings`.
  List<String>? processDefinitionKeyNotIn;

  /// Filter by process instance business key.
  String? processInstanceBusinessKey;

  /// Filter by a list of business keys. A process instance must have one of the given business keys. Must be a JSON array of `Strings`
  List<String>? processInstanceBusinessKeyIn;

  /// Filter by process instance business key that the parameter is a substring of.
  String? processInstanceBusinessKeyLike;

  /// Restrict the query to all process instances that are top level process instances.
  bool? rootProcessInstances;

  /// Only include finished process instances. This flag includes all process instances that are completed or terminated. Value may only be `true`, as `false` is the default behavior.
  bool? finished;

  /// Only include unfinished process instances. Value may only be `true`, as `false` is the default behavior.
  bool? unfinished;

  /// Only include process instances which have an incident. Value may only be `true`, as `false` is the default behavior.
  bool? withIncidents;

  /// Only include process instances which have a root incident. Value may only be `true`, as `false` is the default behavior.
  bool? withRootIncidents;

  /// Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  String? incidentType;

  /// Only include process instances which have an incident in status either open or resolved. To get all process instances, use the query parameter withIncidents.
  HistoricProcessInstanceQueryDtoIncidentStatusEnum? incidentStatus;

  /// Filter by the incident message. Exact match.
  String? incidentMessage;

  /// Filter by the incident message that the parameter is a substring of.
  String? incidentMessageLike;

  /// Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? startedBefore;

  /// Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? startedAfter;

  /// Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? finishedBefore;

  /// Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? finishedAfter;

  /// Restrict to instances that executed an activity after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? executedActivityAfter;

  /// Restrict to instances that executed an activity before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? executedActivityBefore;

  /// Restrict to instances that executed an job after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? executedJobAfter;

  /// Restrict to instances that executed an job before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? executedJobBefore;

  /// Only include process instances that were started by the given user.
  String? startedBy;

  /// Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id.
  String? superProcessInstanceId;

  /// Restrict query to one process instance that has a sub process instance with the given id.
  String? subProcessInstanceId;

  /// Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
  String? superCaseInstanceId;

  /// Restrict query to one process instance that has a sub case instance with the given id.
  String? subCaseInstanceId;

  /// Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
  String? caseInstanceId;

  /// Filter by a list of tenant ids. A process instance must have one of the given tenant ids. Must be a JSON array of `Strings`
  List<String>? tenantIdIn;

  /// Only include historic process instances which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  bool? withoutTenantId;

  /// Restrict to instances that executed an activity with one of given ids. Must be a JSON array of `Strings`
  List<String>? executedActivityIdIn;

  /// Restrict to instances that have an active activity with one of given ids. Must be a JSON array of `Strings`
  List<String>? activeActivityIdIn;

  /// Restrict to instances that are active.
  bool? active;

  /// Restrict to instances that are suspended.
  bool? suspended;

  /// Restrict to instances that are completed.
  bool? completed;

  /// Restrict to instances that are externallyTerminated.
  bool? externallyTerminated;

  /// Restrict to instances that are internallyTerminated.
  bool? internallyTerminated;

  /// A JSON array to only include process instances that have/had variables with certain values. The array consists of objects with the three properties `name`, `operator` and `value`. `name` (`String`) is the variable name, `operator` (`String`) is the comparison operator to be used and `value` the variable value.  Value may be `String`, `Number` or `Boolean`.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. 
  List<VariableQueryParameterDto>? variables;

  /// Match all variable names provided in variables case-insensitively. If set to `true` variableName and variablename are treated as equal.
  bool? variableNamesIgnoreCase;

  /// Match all variable values provided in variables case-insensitively. If set to `true` variableValue and variablevalue are treated as equal.
  bool? variableValuesIgnoreCase;

  /// A JSON array of nested historic process instance queries with OR semantics.  A process instance matches a nested query if it fulfills at least one of the query's predicates.  With multiple nested queries, a process instance must fulfill at least one predicate of each query ([Conjunctive Normal Form](https://en.wikipedia.org/wiki/Conjunctive_normal_form)).  All process instance query properties can be used except for: `sorting`  See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-engine-api/#or-queries) for more information about OR queries.
  List<HistoricProcessInstanceQueryDto>? orQueries;

  /// Apply sorting of the result
  List<HistoricProcessInstanceQueryDtoSortingInner>? sorting;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricProcessInstanceQueryDto &&
    other.processInstanceId == processInstanceId &&
    _deepEquality.equals(other.processInstanceIds, processInstanceIds) &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    _deepEquality.equals(other.processDefinitionKeyIn, processDefinitionKeyIn) &&
    other.processDefinitionName == processDefinitionName &&
    other.processDefinitionNameLike == processDefinitionNameLike &&
    _deepEquality.equals(other.processDefinitionKeyNotIn, processDefinitionKeyNotIn) &&
    other.processInstanceBusinessKey == processInstanceBusinessKey &&
    _deepEquality.equals(other.processInstanceBusinessKeyIn, processInstanceBusinessKeyIn) &&
    other.processInstanceBusinessKeyLike == processInstanceBusinessKeyLike &&
    other.rootProcessInstances == rootProcessInstances &&
    other.finished == finished &&
    other.unfinished == unfinished &&
    other.withIncidents == withIncidents &&
    other.withRootIncidents == withRootIncidents &&
    other.incidentType == incidentType &&
    other.incidentStatus == incidentStatus &&
    other.incidentMessage == incidentMessage &&
    other.incidentMessageLike == incidentMessageLike &&
    other.startedBefore == startedBefore &&
    other.startedAfter == startedAfter &&
    other.finishedBefore == finishedBefore &&
    other.finishedAfter == finishedAfter &&
    other.executedActivityAfter == executedActivityAfter &&
    other.executedActivityBefore == executedActivityBefore &&
    other.executedJobAfter == executedJobAfter &&
    other.executedJobBefore == executedJobBefore &&
    other.startedBy == startedBy &&
    other.superProcessInstanceId == superProcessInstanceId &&
    other.subProcessInstanceId == subProcessInstanceId &&
    other.superCaseInstanceId == superCaseInstanceId &&
    other.subCaseInstanceId == subCaseInstanceId &&
    other.caseInstanceId == caseInstanceId &&
    _deepEquality.equals(other.tenantIdIn, tenantIdIn) &&
    other.withoutTenantId == withoutTenantId &&
    _deepEquality.equals(other.executedActivityIdIn, executedActivityIdIn) &&
    _deepEquality.equals(other.activeActivityIdIn, activeActivityIdIn) &&
    other.active == active &&
    other.suspended == suspended &&
    other.completed == completed &&
    other.externallyTerminated == externallyTerminated &&
    other.internallyTerminated == internallyTerminated &&
    _deepEquality.equals(other.variables, variables) &&
    other.variableNamesIgnoreCase == variableNamesIgnoreCase &&
    other.variableValuesIgnoreCase == variableValuesIgnoreCase &&
    _deepEquality.equals(other.orQueries, orQueries) &&
    _deepEquality.equals(other.sorting, sorting);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (processInstanceIds == null ? 0 : processInstanceIds!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (processDefinitionKeyIn == null ? 0 : processDefinitionKeyIn!.hashCode) +
    (processDefinitionName == null ? 0 : processDefinitionName!.hashCode) +
    (processDefinitionNameLike == null ? 0 : processDefinitionNameLike!.hashCode) +
    (processDefinitionKeyNotIn == null ? 0 : processDefinitionKeyNotIn!.hashCode) +
    (processInstanceBusinessKey == null ? 0 : processInstanceBusinessKey!.hashCode) +
    (processInstanceBusinessKeyIn == null ? 0 : processInstanceBusinessKeyIn!.hashCode) +
    (processInstanceBusinessKeyLike == null ? 0 : processInstanceBusinessKeyLike!.hashCode) +
    (rootProcessInstances == null ? 0 : rootProcessInstances!.hashCode) +
    (finished == null ? 0 : finished!.hashCode) +
    (unfinished == null ? 0 : unfinished!.hashCode) +
    (withIncidents == null ? 0 : withIncidents!.hashCode) +
    (withRootIncidents == null ? 0 : withRootIncidents!.hashCode) +
    (incidentType == null ? 0 : incidentType!.hashCode) +
    (incidentStatus == null ? 0 : incidentStatus!.hashCode) +
    (incidentMessage == null ? 0 : incidentMessage!.hashCode) +
    (incidentMessageLike == null ? 0 : incidentMessageLike!.hashCode) +
    (startedBefore == null ? 0 : startedBefore!.hashCode) +
    (startedAfter == null ? 0 : startedAfter!.hashCode) +
    (finishedBefore == null ? 0 : finishedBefore!.hashCode) +
    (finishedAfter == null ? 0 : finishedAfter!.hashCode) +
    (executedActivityAfter == null ? 0 : executedActivityAfter!.hashCode) +
    (executedActivityBefore == null ? 0 : executedActivityBefore!.hashCode) +
    (executedJobAfter == null ? 0 : executedJobAfter!.hashCode) +
    (executedJobBefore == null ? 0 : executedJobBefore!.hashCode) +
    (startedBy == null ? 0 : startedBy!.hashCode) +
    (superProcessInstanceId == null ? 0 : superProcessInstanceId!.hashCode) +
    (subProcessInstanceId == null ? 0 : subProcessInstanceId!.hashCode) +
    (superCaseInstanceId == null ? 0 : superCaseInstanceId!.hashCode) +
    (subCaseInstanceId == null ? 0 : subCaseInstanceId!.hashCode) +
    (caseInstanceId == null ? 0 : caseInstanceId!.hashCode) +
    (tenantIdIn == null ? 0 : tenantIdIn!.hashCode) +
    (withoutTenantId == null ? 0 : withoutTenantId!.hashCode) +
    (executedActivityIdIn == null ? 0 : executedActivityIdIn!.hashCode) +
    (activeActivityIdIn == null ? 0 : activeActivityIdIn!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (suspended == null ? 0 : suspended!.hashCode) +
    (completed == null ? 0 : completed!.hashCode) +
    (externallyTerminated == null ? 0 : externallyTerminated!.hashCode) +
    (internallyTerminated == null ? 0 : internallyTerminated!.hashCode) +
    (variables == null ? 0 : variables!.hashCode) +
    (variableNamesIgnoreCase == null ? 0 : variableNamesIgnoreCase!.hashCode) +
    (variableValuesIgnoreCase == null ? 0 : variableValuesIgnoreCase!.hashCode) +
    (orQueries == null ? 0 : orQueries!.hashCode) +
    (sorting == null ? 0 : sorting!.hashCode);

  @override
  String toString() => 'HistoricProcessInstanceQueryDto[processInstanceId=$processInstanceId, processInstanceIds=$processInstanceIds, processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, processDefinitionKeyIn=$processDefinitionKeyIn, processDefinitionName=$processDefinitionName, processDefinitionNameLike=$processDefinitionNameLike, processDefinitionKeyNotIn=$processDefinitionKeyNotIn, processInstanceBusinessKey=$processInstanceBusinessKey, processInstanceBusinessKeyIn=$processInstanceBusinessKeyIn, processInstanceBusinessKeyLike=$processInstanceBusinessKeyLike, rootProcessInstances=$rootProcessInstances, finished=$finished, unfinished=$unfinished, withIncidents=$withIncidents, withRootIncidents=$withRootIncidents, incidentType=$incidentType, incidentStatus=$incidentStatus, incidentMessage=$incidentMessage, incidentMessageLike=$incidentMessageLike, startedBefore=$startedBefore, startedAfter=$startedAfter, finishedBefore=$finishedBefore, finishedAfter=$finishedAfter, executedActivityAfter=$executedActivityAfter, executedActivityBefore=$executedActivityBefore, executedJobAfter=$executedJobAfter, executedJobBefore=$executedJobBefore, startedBy=$startedBy, superProcessInstanceId=$superProcessInstanceId, subProcessInstanceId=$subProcessInstanceId, superCaseInstanceId=$superCaseInstanceId, subCaseInstanceId=$subCaseInstanceId, caseInstanceId=$caseInstanceId, tenantIdIn=$tenantIdIn, withoutTenantId=$withoutTenantId, executedActivityIdIn=$executedActivityIdIn, activeActivityIdIn=$activeActivityIdIn, active=$active, suspended=$suspended, completed=$completed, externallyTerminated=$externallyTerminated, internallyTerminated=$internallyTerminated, variables=$variables, variableNamesIgnoreCase=$variableNamesIgnoreCase, variableValuesIgnoreCase=$variableValuesIgnoreCase, orQueries=$orQueries, sorting=$sorting]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.processInstanceId != null) {
      json[r'processInstanceId'] = this.processInstanceId;
    } else {
      json[r'processInstanceId'] = null;
    }
    if (this.processInstanceIds != null) {
      json[r'processInstanceIds'] = this.processInstanceIds;
    } else {
      json[r'processInstanceIds'] = null;
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
    if (this.processDefinitionKeyNotIn != null) {
      json[r'processDefinitionKeyNotIn'] = this.processDefinitionKeyNotIn;
    } else {
      json[r'processDefinitionKeyNotIn'] = null;
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
    if (this.rootProcessInstances != null) {
      json[r'rootProcessInstances'] = this.rootProcessInstances;
    } else {
      json[r'rootProcessInstances'] = null;
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
    if (this.withIncidents != null) {
      json[r'withIncidents'] = this.withIncidents;
    } else {
      json[r'withIncidents'] = null;
    }
    if (this.withRootIncidents != null) {
      json[r'withRootIncidents'] = this.withRootIncidents;
    } else {
      json[r'withRootIncidents'] = null;
    }
    if (this.incidentType != null) {
      json[r'incidentType'] = this.incidentType;
    } else {
      json[r'incidentType'] = null;
    }
    if (this.incidentStatus != null) {
      json[r'incidentStatus'] = this.incidentStatus;
    } else {
      json[r'incidentStatus'] = null;
    }
    if (this.incidentMessage != null) {
      json[r'incidentMessage'] = this.incidentMessage;
    } else {
      json[r'incidentMessage'] = null;
    }
    if (this.incidentMessageLike != null) {
      json[r'incidentMessageLike'] = this.incidentMessageLike;
    } else {
      json[r'incidentMessageLike'] = null;
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
    if (this.executedActivityAfter != null) {
      json[r'executedActivityAfter'] = this.executedActivityAfter!.toUtc().toIso8601String();
    } else {
      json[r'executedActivityAfter'] = null;
    }
    if (this.executedActivityBefore != null) {
      json[r'executedActivityBefore'] = this.executedActivityBefore!.toUtc().toIso8601String();
    } else {
      json[r'executedActivityBefore'] = null;
    }
    if (this.executedJobAfter != null) {
      json[r'executedJobAfter'] = this.executedJobAfter!.toUtc().toIso8601String();
    } else {
      json[r'executedJobAfter'] = null;
    }
    if (this.executedJobBefore != null) {
      json[r'executedJobBefore'] = this.executedJobBefore!.toUtc().toIso8601String();
    } else {
      json[r'executedJobBefore'] = null;
    }
    if (this.startedBy != null) {
      json[r'startedBy'] = this.startedBy;
    } else {
      json[r'startedBy'] = null;
    }
    if (this.superProcessInstanceId != null) {
      json[r'superProcessInstanceId'] = this.superProcessInstanceId;
    } else {
      json[r'superProcessInstanceId'] = null;
    }
    if (this.subProcessInstanceId != null) {
      json[r'subProcessInstanceId'] = this.subProcessInstanceId;
    } else {
      json[r'subProcessInstanceId'] = null;
    }
    if (this.superCaseInstanceId != null) {
      json[r'superCaseInstanceId'] = this.superCaseInstanceId;
    } else {
      json[r'superCaseInstanceId'] = null;
    }
    if (this.subCaseInstanceId != null) {
      json[r'subCaseInstanceId'] = this.subCaseInstanceId;
    } else {
      json[r'subCaseInstanceId'] = null;
    }
    if (this.caseInstanceId != null) {
      json[r'caseInstanceId'] = this.caseInstanceId;
    } else {
      json[r'caseInstanceId'] = null;
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
    if (this.executedActivityIdIn != null) {
      json[r'executedActivityIdIn'] = this.executedActivityIdIn;
    } else {
      json[r'executedActivityIdIn'] = null;
    }
    if (this.activeActivityIdIn != null) {
      json[r'activeActivityIdIn'] = this.activeActivityIdIn;
    } else {
      json[r'activeActivityIdIn'] = null;
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
    if (this.completed != null) {
      json[r'completed'] = this.completed;
    } else {
      json[r'completed'] = null;
    }
    if (this.externallyTerminated != null) {
      json[r'externallyTerminated'] = this.externallyTerminated;
    } else {
      json[r'externallyTerminated'] = null;
    }
    if (this.internallyTerminated != null) {
      json[r'internallyTerminated'] = this.internallyTerminated;
    } else {
      json[r'internallyTerminated'] = null;
    }
    if (this.variables != null) {
      json[r'variables'] = this.variables;
    } else {
      json[r'variables'] = null;
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

  /// Returns a new [HistoricProcessInstanceQueryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricProcessInstanceQueryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricProcessInstanceQueryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricProcessInstanceQueryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricProcessInstanceQueryDto(
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        processInstanceIds: json[r'processInstanceIds'] is Iterable
            ? (json[r'processInstanceIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        processDefinitionKeyIn: json[r'processDefinitionKeyIn'] is Iterable
            ? (json[r'processDefinitionKeyIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processDefinitionName: mapValueOfType<String>(json, r'processDefinitionName'),
        processDefinitionNameLike: mapValueOfType<String>(json, r'processDefinitionNameLike'),
        processDefinitionKeyNotIn: json[r'processDefinitionKeyNotIn'] is Iterable
            ? (json[r'processDefinitionKeyNotIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processInstanceBusinessKey: mapValueOfType<String>(json, r'processInstanceBusinessKey'),
        processInstanceBusinessKeyIn: json[r'processInstanceBusinessKeyIn'] is Iterable
            ? (json[r'processInstanceBusinessKeyIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processInstanceBusinessKeyLike: mapValueOfType<String>(json, r'processInstanceBusinessKeyLike'),
        rootProcessInstances: mapValueOfType<bool>(json, r'rootProcessInstances'),
        finished: mapValueOfType<bool>(json, r'finished'),
        unfinished: mapValueOfType<bool>(json, r'unfinished'),
        withIncidents: mapValueOfType<bool>(json, r'withIncidents'),
        withRootIncidents: mapValueOfType<bool>(json, r'withRootIncidents'),
        incidentType: mapValueOfType<String>(json, r'incidentType'),
        incidentStatus: HistoricProcessInstanceQueryDtoIncidentStatusEnum.fromJson(json[r'incidentStatus']),
        incidentMessage: mapValueOfType<String>(json, r'incidentMessage'),
        incidentMessageLike: mapValueOfType<String>(json, r'incidentMessageLike'),
        startedBefore: mapDateTime(json, r'startedBefore', r''),
        startedAfter: mapDateTime(json, r'startedAfter', r''),
        finishedBefore: mapDateTime(json, r'finishedBefore', r''),
        finishedAfter: mapDateTime(json, r'finishedAfter', r''),
        executedActivityAfter: mapDateTime(json, r'executedActivityAfter', r''),
        executedActivityBefore: mapDateTime(json, r'executedActivityBefore', r''),
        executedJobAfter: mapDateTime(json, r'executedJobAfter', r''),
        executedJobBefore: mapDateTime(json, r'executedJobBefore', r''),
        startedBy: mapValueOfType<String>(json, r'startedBy'),
        superProcessInstanceId: mapValueOfType<String>(json, r'superProcessInstanceId'),
        subProcessInstanceId: mapValueOfType<String>(json, r'subProcessInstanceId'),
        superCaseInstanceId: mapValueOfType<String>(json, r'superCaseInstanceId'),
        subCaseInstanceId: mapValueOfType<String>(json, r'subCaseInstanceId'),
        caseInstanceId: mapValueOfType<String>(json, r'caseInstanceId'),
        tenantIdIn: json[r'tenantIdIn'] is Iterable
            ? (json[r'tenantIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        withoutTenantId: mapValueOfType<bool>(json, r'withoutTenantId'),
        executedActivityIdIn: json[r'executedActivityIdIn'] is Iterable
            ? (json[r'executedActivityIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        activeActivityIdIn: json[r'activeActivityIdIn'] is Iterable
            ? (json[r'activeActivityIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        active: mapValueOfType<bool>(json, r'active'),
        suspended: mapValueOfType<bool>(json, r'suspended'),
        completed: mapValueOfType<bool>(json, r'completed'),
        externallyTerminated: mapValueOfType<bool>(json, r'externallyTerminated'),
        internallyTerminated: mapValueOfType<bool>(json, r'internallyTerminated'),
        variables: VariableQueryParameterDto.listFromJson(json[r'variables']),
        variableNamesIgnoreCase: mapValueOfType<bool>(json, r'variableNamesIgnoreCase'),
        variableValuesIgnoreCase: mapValueOfType<bool>(json, r'variableValuesIgnoreCase'),
        orQueries: HistoricProcessInstanceQueryDto.listFromJson(json[r'orQueries']),
        sorting: HistoricProcessInstanceQueryDtoSortingInner.listFromJson(json[r'sorting']),
      );
    }
    return null;
  }

  static List<HistoricProcessInstanceQueryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricProcessInstanceQueryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricProcessInstanceQueryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricProcessInstanceQueryDto> mapFromJson(dynamic json) {
    final map = <String, HistoricProcessInstanceQueryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricProcessInstanceQueryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricProcessInstanceQueryDto-objects as value to a dart map
  static Map<String, List<HistoricProcessInstanceQueryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricProcessInstanceQueryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricProcessInstanceQueryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Only include process instances which have an incident in status either open or resolved. To get all process instances, use the query parameter withIncidents.
class HistoricProcessInstanceQueryDtoIncidentStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const HistoricProcessInstanceQueryDtoIncidentStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const open = HistoricProcessInstanceQueryDtoIncidentStatusEnum._(r'open');
  static const resolved = HistoricProcessInstanceQueryDtoIncidentStatusEnum._(r'resolved');

  /// List of all possible values in this [enum][HistoricProcessInstanceQueryDtoIncidentStatusEnum].
  static const values = <HistoricProcessInstanceQueryDtoIncidentStatusEnum>[
    open,
    resolved,
  ];

  static HistoricProcessInstanceQueryDtoIncidentStatusEnum? fromJson(dynamic value) => HistoricProcessInstanceQueryDtoIncidentStatusEnumTypeTransformer().decode(value);

  static List<HistoricProcessInstanceQueryDtoIncidentStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricProcessInstanceQueryDtoIncidentStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricProcessInstanceQueryDtoIncidentStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HistoricProcessInstanceQueryDtoIncidentStatusEnum] to String,
/// and [decode] dynamic data back to [HistoricProcessInstanceQueryDtoIncidentStatusEnum].
class HistoricProcessInstanceQueryDtoIncidentStatusEnumTypeTransformer {
  factory HistoricProcessInstanceQueryDtoIncidentStatusEnumTypeTransformer() => _instance ??= const HistoricProcessInstanceQueryDtoIncidentStatusEnumTypeTransformer._();

  const HistoricProcessInstanceQueryDtoIncidentStatusEnumTypeTransformer._();

  String encode(HistoricProcessInstanceQueryDtoIncidentStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HistoricProcessInstanceQueryDtoIncidentStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HistoricProcessInstanceQueryDtoIncidentStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'open': return HistoricProcessInstanceQueryDtoIncidentStatusEnum.open;
        case r'resolved': return HistoricProcessInstanceQueryDtoIncidentStatusEnum.resolved;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HistoricProcessInstanceQueryDtoIncidentStatusEnumTypeTransformer] instance.
  static HistoricProcessInstanceQueryDtoIncidentStatusEnumTypeTransformer? _instance;
}


