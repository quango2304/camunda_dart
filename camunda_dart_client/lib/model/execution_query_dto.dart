//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExecutionQueryDto {
  /// Returns a new [ExecutionQueryDto] instance.
  ExecutionQueryDto({
    this.businessKey,
    this.processDefinitionId,
    this.processDefinitionKey,
    this.processInstanceId,
    this.activityId,
    this.signalEventSubscriptionName,
    this.messageEventSubscriptionName,
    this.active,
    this.suspended,
    this.incidentId,
    this.incidentType,
    this.incidentMessage,
    this.incidentMessageLike,
    this.tenantIdIn = const [],
    this.variables = const [],
    this.processVariables = const [],
    this.variableNamesIgnoreCase,
    this.variableValuesIgnoreCase,
    this.sorting = const [],
  });

  /// Filter by the business key of the process instances the executions belong to.
  String? businessKey;

  /// Filter by the process definition the executions run on.
  String? processDefinitionId;

  /// Filter by the key of the process definition the executions run on.
  String? processDefinitionKey;

  /// Filter by the id of the process instance the execution belongs to.
  String? processInstanceId;

  /// Filter by the id of the activity the execution currently executes.
  String? activityId;

  /// Select only those executions that expect a signal of the given name.
  String? signalEventSubscriptionName;

  /// Select only those executions that expect a message of the given name.
  String? messageEventSubscriptionName;

  /// Only include active executions. Value may only be `true`, as `false` is the default behavior.
  bool? active;

  /// Only include suspended executions. Value may only be `true`, as `false` is the default behavior.
  bool? suspended;

  /// Filter by the incident id.
  String? incidentId;

  /// Filter by the incident type. See the [User Guide](/manual/develop/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  String? incidentType;

  /// Filter by the incident message. Exact match.
  String? incidentMessage;

  /// Filter by the incident message that the parameter is a substring of.
  String? incidentMessageLike;

  /// Filter by a  list of tenant ids. An execution must have one of the given tenant ids.
  List<String>? tenantIdIn;

  /// An array to only include executions that have variables with certain values.  The array consists of objects with the three properties `name`, `operator` and `value`. `name (String)` is the variable name, `operator (String)` is the comparison operator to be used and `value` the variable value. `value` may be `String`, `Number` or `Boolean`.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`.
  List<VariableQueryParameterDto>? variables;

  /// An array to only include executions that belong to a process instance with variables with certain values.  The array consists of objects with the three properties `name`, `operator` and `value`. `name (String)` is the variable name, `operator (String)` is the comparison operator to be used and `value` the variable value. `value` may be `String`, `Number` or `Boolean`.  Valid operator values are: `eq` - equal to; `neq` - not equal to.
  List<VariableQueryParameterDto>? processVariables;

  /// Match all variable names provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
  bool? variableNamesIgnoreCase;

  /// Match all variable values provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
  bool? variableValuesIgnoreCase;

  /// An array of criteria to sort the result by. Each element of the array is                        an object that specifies one ordering. The position in the array                        identifies the rank of an ordering, i.e., whether it is primary, secondary,                        etc. Has no effect for the `/count` endpoint
  List<ExecutionQueryDtoSortingInner>? sorting;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExecutionQueryDto &&
    other.businessKey == businessKey &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    other.processInstanceId == processInstanceId &&
    other.activityId == activityId &&
    other.signalEventSubscriptionName == signalEventSubscriptionName &&
    other.messageEventSubscriptionName == messageEventSubscriptionName &&
    other.active == active &&
    other.suspended == suspended &&
    other.incidentId == incidentId &&
    other.incidentType == incidentType &&
    other.incidentMessage == incidentMessage &&
    other.incidentMessageLike == incidentMessageLike &&
    _deepEquality.equals(other.tenantIdIn, tenantIdIn) &&
    _deepEquality.equals(other.variables, variables) &&
    _deepEquality.equals(other.processVariables, processVariables) &&
    other.variableNamesIgnoreCase == variableNamesIgnoreCase &&
    other.variableValuesIgnoreCase == variableValuesIgnoreCase &&
    _deepEquality.equals(other.sorting, sorting);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (businessKey == null ? 0 : businessKey!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (activityId == null ? 0 : activityId!.hashCode) +
    (signalEventSubscriptionName == null ? 0 : signalEventSubscriptionName!.hashCode) +
    (messageEventSubscriptionName == null ? 0 : messageEventSubscriptionName!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (suspended == null ? 0 : suspended!.hashCode) +
    (incidentId == null ? 0 : incidentId!.hashCode) +
    (incidentType == null ? 0 : incidentType!.hashCode) +
    (incidentMessage == null ? 0 : incidentMessage!.hashCode) +
    (incidentMessageLike == null ? 0 : incidentMessageLike!.hashCode) +
    (tenantIdIn == null ? 0 : tenantIdIn!.hashCode) +
    (variables == null ? 0 : variables!.hashCode) +
    (processVariables == null ? 0 : processVariables!.hashCode) +
    (variableNamesIgnoreCase == null ? 0 : variableNamesIgnoreCase!.hashCode) +
    (variableValuesIgnoreCase == null ? 0 : variableValuesIgnoreCase!.hashCode) +
    (sorting == null ? 0 : sorting!.hashCode);

  @override
  String toString() => 'ExecutionQueryDto[businessKey=$businessKey, processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, processInstanceId=$processInstanceId, activityId=$activityId, signalEventSubscriptionName=$signalEventSubscriptionName, messageEventSubscriptionName=$messageEventSubscriptionName, active=$active, suspended=$suspended, incidentId=$incidentId, incidentType=$incidentType, incidentMessage=$incidentMessage, incidentMessageLike=$incidentMessageLike, tenantIdIn=$tenantIdIn, variables=$variables, processVariables=$processVariables, variableNamesIgnoreCase=$variableNamesIgnoreCase, variableValuesIgnoreCase=$variableValuesIgnoreCase, sorting=$sorting]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.businessKey != null) {
      json[r'businessKey'] = this.businessKey;
    } else {
      json[r'businessKey'] = null;
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
    if (this.processInstanceId != null) {
      json[r'processInstanceId'] = this.processInstanceId;
    } else {
      json[r'processInstanceId'] = null;
    }
    if (this.activityId != null) {
      json[r'activityId'] = this.activityId;
    } else {
      json[r'activityId'] = null;
    }
    if (this.signalEventSubscriptionName != null) {
      json[r'signalEventSubscriptionName'] = this.signalEventSubscriptionName;
    } else {
      json[r'signalEventSubscriptionName'] = null;
    }
    if (this.messageEventSubscriptionName != null) {
      json[r'messageEventSubscriptionName'] = this.messageEventSubscriptionName;
    } else {
      json[r'messageEventSubscriptionName'] = null;
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
    if (this.variables != null) {
      json[r'variables'] = this.variables;
    } else {
      json[r'variables'] = null;
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
    if (this.sorting != null) {
      json[r'sorting'] = this.sorting;
    } else {
      json[r'sorting'] = null;
    }
    return json;
  }

  /// Returns a new [ExecutionQueryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExecutionQueryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExecutionQueryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExecutionQueryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExecutionQueryDto(
        businessKey: mapValueOfType<String>(json, r'businessKey'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        activityId: mapValueOfType<String>(json, r'activityId'),
        signalEventSubscriptionName: mapValueOfType<String>(json, r'signalEventSubscriptionName'),
        messageEventSubscriptionName: mapValueOfType<String>(json, r'messageEventSubscriptionName'),
        active: mapValueOfType<bool>(json, r'active'),
        suspended: mapValueOfType<bool>(json, r'suspended'),
        incidentId: mapValueOfType<String>(json, r'incidentId'),
        incidentType: mapValueOfType<String>(json, r'incidentType'),
        incidentMessage: mapValueOfType<String>(json, r'incidentMessage'),
        incidentMessageLike: mapValueOfType<String>(json, r'incidentMessageLike'),
        tenantIdIn: json[r'tenantIdIn'] is Iterable
            ? (json[r'tenantIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        variables: VariableQueryParameterDto.listFromJson(json[r'variables']),
        processVariables: VariableQueryParameterDto.listFromJson(json[r'processVariables']),
        variableNamesIgnoreCase: mapValueOfType<bool>(json, r'variableNamesIgnoreCase'),
        variableValuesIgnoreCase: mapValueOfType<bool>(json, r'variableValuesIgnoreCase'),
        sorting: ExecutionQueryDtoSortingInner.listFromJson(json[r'sorting']),
      );
    }
    return null;
  }

  static List<ExecutionQueryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExecutionQueryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExecutionQueryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExecutionQueryDto> mapFromJson(dynamic json) {
    final map = <String, ExecutionQueryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExecutionQueryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExecutionQueryDto-objects as value to a dart map
  static Map<String, List<ExecutionQueryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExecutionQueryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExecutionQueryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

