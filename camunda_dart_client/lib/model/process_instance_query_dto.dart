//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProcessInstanceQueryDto {
  /// Returns a new [ProcessInstanceQueryDto] instance.
  ProcessInstanceQueryDto({
    this.deploymentId,
    this.processDefinitionId,
    this.processDefinitionKey,
    this.processDefinitionKeyIn = const [],
    this.processDefinitionKeyNotIn = const [],
    this.businessKey,
    this.businessKeyLike,
    this.caseInstanceId,
    this.superProcessInstance,
    this.subProcessInstance,
    this.superCaseInstance,
    this.subCaseInstance,
    this.active,
    this.suspended,
    this.processInstanceIds = const [],
    this.withIncident,
    this.incidentId,
    this.incidentType,
    this.incidentMessage,
    this.incidentMessageLike,
    this.tenantIdIn = const [],
    this.withoutTenantId,
    this.processDefinitionWithoutTenantId,
    this.activityIdIn = const [],
    this.rootProcessInstances,
    this.leafProcessInstances,
    this.variables = const [],
    this.variableNamesIgnoreCase,
    this.variableValuesIgnoreCase,
    this.orQueries = const [],
    this.sorting = const [],
  });

  /// Filter by the deployment the id belongs to.
  String? deploymentId;

  /// Filter by the process definition the instances run on.
  String? processDefinitionId;

  /// Filter by the key of the process definition the instances run on.
  String? processDefinitionKey;

  /// Filter by a list of process definition keys. A process instance must have one of the given process definition keys. Must be a JSON array of Strings.
  List<String>? processDefinitionKeyIn;

  /// Exclude instances by a list of process definition keys. A process instance must not have one of the given process definition keys. Must be a JSON array of Strings.
  List<String>? processDefinitionKeyNotIn;

  /// Filter by process instance business key.
  String? businessKey;

  /// Filter by process instance business key that the parameter is a substring of.
  String? businessKeyLike;

  /// Filter by case instance id.
  String? caseInstanceId;

  /// Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id.
  String? superProcessInstance;

  /// Restrict query to all process instances that have the given process instance as a sub process instance. Takes a process instance id.
  String? subProcessInstance;

  /// Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
  String? superCaseInstance;

  /// Restrict query to all process instances that have the given case instance as a sub case instance. Takes a case instance id.
  String? subCaseInstance;

  /// Only include active process instances. Value may only be true, as false is the default behavior.
  bool? active;

  /// Only include suspended process instances. Value may only be true, as false is the default behavior.
  bool? suspended;

  /// Filter by a list of process instance ids. Must be a JSON array of Strings.
  List<String>? processInstanceIds;

  /// Filter by presence of incidents. Selects only process instances that have an incident.
  bool? withIncident;

  /// Filter by the incident id.
  String? incidentId;

  /// Filter by the incident type. See the User Guide for a list of incident types.
  String? incidentType;

  /// Filter by the incident message. Exact match.
  String? incidentMessage;

  /// Filter by the incident message that the parameter is a substring of.
  String? incidentMessageLike;

  /// Filter by a list of tenant ids. A process instance must have one of the given tenant ids. Must be a JSON array of Strings.
  List<String>? tenantIdIn;

  /// Only include process instances which belong to no tenant. Value may only be true, as false is the default behavior.
  bool? withoutTenantId;

  /// Only include process instances which process definition has no tenant id.
  bool? processDefinitionWithoutTenantId;

  /// Filter by a list of activity ids. A process instance must currently wait in a leaf activity with one of the given activity ids.
  List<String>? activityIdIn;

  /// Restrict the query to all process instances that are top level process instances.
  bool? rootProcessInstances;

  /// Restrict the query to all process instances that are leaf instances. (i.e. don't have any sub instances)
  bool? leafProcessInstances;

  /// A JSON array to only include process instances that have variables with certain values. The array consists of objects with the three properties `name`, `operator` and `value`. `name` (String) is the variable name, `operator` (String) is the comparison operator to be used and `value` the variable value. The `value` may be String, Number or Boolean.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`.
  List<VariableQueryParameterDto>? variables;

  /// Match all variable names in this query case-insensitively. If set to true variableName and variablename are treated as equal.
  bool? variableNamesIgnoreCase;

  /// Match all variable values in this query case-insensitively. If set to true variableValue and variablevalue are treated as equal.
  bool? variableValuesIgnoreCase;

  /// A JSON array of nested process instance queries with OR semantics. A process instance matches a nested query if it fulfills at least one of the query's predicates. With multiple nested queries, a process instance must fulfill at least one predicate of each query (Conjunctive Normal Form). All process instance query properties can be used except for: `sorting` See the [User guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-engine-api/#or-queries) for more information about OR queries.
  List<ProcessInstanceQueryDto>? orQueries;

  /// Apply sorting of the result
  List<ProcessInstanceQueryDtoSortingInner>? sorting;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProcessInstanceQueryDto &&
    other.deploymentId == deploymentId &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    _deepEquality.equals(other.processDefinitionKeyIn, processDefinitionKeyIn) &&
    _deepEquality.equals(other.processDefinitionKeyNotIn, processDefinitionKeyNotIn) &&
    other.businessKey == businessKey &&
    other.businessKeyLike == businessKeyLike &&
    other.caseInstanceId == caseInstanceId &&
    other.superProcessInstance == superProcessInstance &&
    other.subProcessInstance == subProcessInstance &&
    other.superCaseInstance == superCaseInstance &&
    other.subCaseInstance == subCaseInstance &&
    other.active == active &&
    other.suspended == suspended &&
    _deepEquality.equals(other.processInstanceIds, processInstanceIds) &&
    other.withIncident == withIncident &&
    other.incidentId == incidentId &&
    other.incidentType == incidentType &&
    other.incidentMessage == incidentMessage &&
    other.incidentMessageLike == incidentMessageLike &&
    _deepEquality.equals(other.tenantIdIn, tenantIdIn) &&
    other.withoutTenantId == withoutTenantId &&
    other.processDefinitionWithoutTenantId == processDefinitionWithoutTenantId &&
    _deepEquality.equals(other.activityIdIn, activityIdIn) &&
    other.rootProcessInstances == rootProcessInstances &&
    other.leafProcessInstances == leafProcessInstances &&
    _deepEquality.equals(other.variables, variables) &&
    other.variableNamesIgnoreCase == variableNamesIgnoreCase &&
    other.variableValuesIgnoreCase == variableValuesIgnoreCase &&
    _deepEquality.equals(other.orQueries, orQueries) &&
    _deepEquality.equals(other.sorting, sorting);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deploymentId == null ? 0 : deploymentId!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (processDefinitionKeyIn == null ? 0 : processDefinitionKeyIn!.hashCode) +
    (processDefinitionKeyNotIn == null ? 0 : processDefinitionKeyNotIn!.hashCode) +
    (businessKey == null ? 0 : businessKey!.hashCode) +
    (businessKeyLike == null ? 0 : businessKeyLike!.hashCode) +
    (caseInstanceId == null ? 0 : caseInstanceId!.hashCode) +
    (superProcessInstance == null ? 0 : superProcessInstance!.hashCode) +
    (subProcessInstance == null ? 0 : subProcessInstance!.hashCode) +
    (superCaseInstance == null ? 0 : superCaseInstance!.hashCode) +
    (subCaseInstance == null ? 0 : subCaseInstance!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (suspended == null ? 0 : suspended!.hashCode) +
    (processInstanceIds == null ? 0 : processInstanceIds!.hashCode) +
    (withIncident == null ? 0 : withIncident!.hashCode) +
    (incidentId == null ? 0 : incidentId!.hashCode) +
    (incidentType == null ? 0 : incidentType!.hashCode) +
    (incidentMessage == null ? 0 : incidentMessage!.hashCode) +
    (incidentMessageLike == null ? 0 : incidentMessageLike!.hashCode) +
    (tenantIdIn == null ? 0 : tenantIdIn!.hashCode) +
    (withoutTenantId == null ? 0 : withoutTenantId!.hashCode) +
    (processDefinitionWithoutTenantId == null ? 0 : processDefinitionWithoutTenantId!.hashCode) +
    (activityIdIn == null ? 0 : activityIdIn!.hashCode) +
    (rootProcessInstances == null ? 0 : rootProcessInstances!.hashCode) +
    (leafProcessInstances == null ? 0 : leafProcessInstances!.hashCode) +
    (variables == null ? 0 : variables!.hashCode) +
    (variableNamesIgnoreCase == null ? 0 : variableNamesIgnoreCase!.hashCode) +
    (variableValuesIgnoreCase == null ? 0 : variableValuesIgnoreCase!.hashCode) +
    (orQueries == null ? 0 : orQueries!.hashCode) +
    (sorting == null ? 0 : sorting!.hashCode);

  @override
  String toString() => 'ProcessInstanceQueryDto[deploymentId=$deploymentId, processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, processDefinitionKeyIn=$processDefinitionKeyIn, processDefinitionKeyNotIn=$processDefinitionKeyNotIn, businessKey=$businessKey, businessKeyLike=$businessKeyLike, caseInstanceId=$caseInstanceId, superProcessInstance=$superProcessInstance, subProcessInstance=$subProcessInstance, superCaseInstance=$superCaseInstance, subCaseInstance=$subCaseInstance, active=$active, suspended=$suspended, processInstanceIds=$processInstanceIds, withIncident=$withIncident, incidentId=$incidentId, incidentType=$incidentType, incidentMessage=$incidentMessage, incidentMessageLike=$incidentMessageLike, tenantIdIn=$tenantIdIn, withoutTenantId=$withoutTenantId, processDefinitionWithoutTenantId=$processDefinitionWithoutTenantId, activityIdIn=$activityIdIn, rootProcessInstances=$rootProcessInstances, leafProcessInstances=$leafProcessInstances, variables=$variables, variableNamesIgnoreCase=$variableNamesIgnoreCase, variableValuesIgnoreCase=$variableValuesIgnoreCase, orQueries=$orQueries, sorting=$sorting]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.deploymentId != null) {
      json[r'deploymentId'] = this.deploymentId;
    } else {
      json[r'deploymentId'] = null;
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
    if (this.processDefinitionKeyNotIn != null) {
      json[r'processDefinitionKeyNotIn'] = this.processDefinitionKeyNotIn;
    } else {
      json[r'processDefinitionKeyNotIn'] = null;
    }
    if (this.businessKey != null) {
      json[r'businessKey'] = this.businessKey;
    } else {
      json[r'businessKey'] = null;
    }
    if (this.businessKeyLike != null) {
      json[r'businessKeyLike'] = this.businessKeyLike;
    } else {
      json[r'businessKeyLike'] = null;
    }
    if (this.caseInstanceId != null) {
      json[r'caseInstanceId'] = this.caseInstanceId;
    } else {
      json[r'caseInstanceId'] = null;
    }
    if (this.superProcessInstance != null) {
      json[r'superProcessInstance'] = this.superProcessInstance;
    } else {
      json[r'superProcessInstance'] = null;
    }
    if (this.subProcessInstance != null) {
      json[r'subProcessInstance'] = this.subProcessInstance;
    } else {
      json[r'subProcessInstance'] = null;
    }
    if (this.superCaseInstance != null) {
      json[r'superCaseInstance'] = this.superCaseInstance;
    } else {
      json[r'superCaseInstance'] = null;
    }
    if (this.subCaseInstance != null) {
      json[r'subCaseInstance'] = this.subCaseInstance;
    } else {
      json[r'subCaseInstance'] = null;
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
    if (this.processInstanceIds != null) {
      json[r'processInstanceIds'] = this.processInstanceIds;
    } else {
      json[r'processInstanceIds'] = null;
    }
    if (this.withIncident != null) {
      json[r'withIncident'] = this.withIncident;
    } else {
      json[r'withIncident'] = null;
    }
    if (this.incidentId != null) {
      json[r'incidentId'] = this.incidentId;
    } else {
      json[r'incidentId'] = null;
    }
    if (this.incidentType != null) {
      json[r'incidentType'] = this.incidentType;
    } else {
      json[r'incidentType'] = null;
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
    if (this.processDefinitionWithoutTenantId != null) {
      json[r'processDefinitionWithoutTenantId'] = this.processDefinitionWithoutTenantId;
    } else {
      json[r'processDefinitionWithoutTenantId'] = null;
    }
    if (this.activityIdIn != null) {
      json[r'activityIdIn'] = this.activityIdIn;
    } else {
      json[r'activityIdIn'] = null;
    }
    if (this.rootProcessInstances != null) {
      json[r'rootProcessInstances'] = this.rootProcessInstances;
    } else {
      json[r'rootProcessInstances'] = null;
    }
    if (this.leafProcessInstances != null) {
      json[r'leafProcessInstances'] = this.leafProcessInstances;
    } else {
      json[r'leafProcessInstances'] = null;
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

  /// Returns a new [ProcessInstanceQueryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProcessInstanceQueryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProcessInstanceQueryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProcessInstanceQueryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProcessInstanceQueryDto(
        deploymentId: mapValueOfType<String>(json, r'deploymentId'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        processDefinitionKeyIn: json[r'processDefinitionKeyIn'] is Iterable
            ? (json[r'processDefinitionKeyIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processDefinitionKeyNotIn: json[r'processDefinitionKeyNotIn'] is Iterable
            ? (json[r'processDefinitionKeyNotIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        businessKey: mapValueOfType<String>(json, r'businessKey'),
        businessKeyLike: mapValueOfType<String>(json, r'businessKeyLike'),
        caseInstanceId: mapValueOfType<String>(json, r'caseInstanceId'),
        superProcessInstance: mapValueOfType<String>(json, r'superProcessInstance'),
        subProcessInstance: mapValueOfType<String>(json, r'subProcessInstance'),
        superCaseInstance: mapValueOfType<String>(json, r'superCaseInstance'),
        subCaseInstance: mapValueOfType<String>(json, r'subCaseInstance'),
        active: mapValueOfType<bool>(json, r'active'),
        suspended: mapValueOfType<bool>(json, r'suspended'),
        processInstanceIds: json[r'processInstanceIds'] is Iterable
            ? (json[r'processInstanceIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        withIncident: mapValueOfType<bool>(json, r'withIncident'),
        incidentId: mapValueOfType<String>(json, r'incidentId'),
        incidentType: mapValueOfType<String>(json, r'incidentType'),
        incidentMessage: mapValueOfType<String>(json, r'incidentMessage'),
        incidentMessageLike: mapValueOfType<String>(json, r'incidentMessageLike'),
        tenantIdIn: json[r'tenantIdIn'] is Iterable
            ? (json[r'tenantIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        withoutTenantId: mapValueOfType<bool>(json, r'withoutTenantId'),
        processDefinitionWithoutTenantId: mapValueOfType<bool>(json, r'processDefinitionWithoutTenantId'),
        activityIdIn: json[r'activityIdIn'] is Iterable
            ? (json[r'activityIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        rootProcessInstances: mapValueOfType<bool>(json, r'rootProcessInstances'),
        leafProcessInstances: mapValueOfType<bool>(json, r'leafProcessInstances'),
        variables: VariableQueryParameterDto.listFromJson(json[r'variables']),
        variableNamesIgnoreCase: mapValueOfType<bool>(json, r'variableNamesIgnoreCase'),
        variableValuesIgnoreCase: mapValueOfType<bool>(json, r'variableValuesIgnoreCase'),
        orQueries: ProcessInstanceQueryDto.listFromJson(json[r'orQueries']),
        sorting: ProcessInstanceQueryDtoSortingInner.listFromJson(json[r'sorting']),
      );
    }
    return null;
  }

  static List<ProcessInstanceQueryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProcessInstanceQueryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProcessInstanceQueryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProcessInstanceQueryDto> mapFromJson(dynamic json) {
    final map = <String, ProcessInstanceQueryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProcessInstanceQueryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProcessInstanceQueryDto-objects as value to a dart map
  static Map<String, List<ProcessInstanceQueryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProcessInstanceQueryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProcessInstanceQueryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

