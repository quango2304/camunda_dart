//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricVariableInstanceQueryDto {
  /// Returns a new [HistoricVariableInstanceQueryDto] instance.
  HistoricVariableInstanceQueryDto({
    this.variableName,
    this.variableNameLike,
    this.variableValue,
    this.variableNamesIgnoreCase,
    this.variableValuesIgnoreCase,
    this.variableTypeIn = const [],
    this.includeDeleted,
    this.processInstanceId,
    this.processInstanceIdIn = const [],
    this.processDefinitionId,
    this.processDefinitionKey,
    this.executionIdIn = const [],
    this.caseInstanceId,
    this.caseExecutionIdIn = const [],
    this.caseActivityIdIn = const [],
    this.taskIdIn = const [],
    this.activityInstanceIdIn = const [],
    this.tenantIdIn = const [],
    this.withoutTenantId,
    this.variableNameIn = const [],
    this.sorting = const [],
  });

  /// Filter by variable name.
  String? variableName;

  /// Restrict to variables with a name like the parameter.
  String? variableNameLike;

  /// Filter by variable value. May be `String`, `Number` or `Boolean`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? variableValue;

  /// Match the variable name provided in `variableName` and `variableNameLike` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
  bool? variableNamesIgnoreCase;

  /// Match the variable value provided in `variableValue` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
  bool? variableValuesIgnoreCase;

  /// Only include historic variable instances which belong to one of the passed and comma- separated variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type 'serializable'.
  List<String>? variableTypeIn;

  /// Include variables that has already been deleted during the execution.
  bool? includeDeleted;

  /// Filter by the process instance the variable belongs to.
  String? processInstanceId;

  /// Only include historic variable instances which belong to one of the passed  process instance ids.
  List<String>? processInstanceIdIn;

  /// Filter by the process definition the variable belongs to.
  String? processDefinitionId;

  /// Filter by a key of the process definition the variable belongs to.
  String? processDefinitionKey;

  /// Only include historic variable instances which belong to one of the passed and  execution ids.
  List<String>? executionIdIn;

  /// Filter by the case instance the variable belongs to.
  String? caseInstanceId;

  /// Only include historic variable instances which belong to one of the passed and  case execution ids.
  List<String>? caseExecutionIdIn;

  /// Only include historic variable instances which belong to one of the passed and  case activity ids.
  List<String>? caseActivityIdIn;

  /// Only include historic variable instances which belong to one of the passed and  task ids.
  List<String>? taskIdIn;

  /// Only include historic variable instances which belong to one of the passed and  activity instance ids.
  List<String>? activityInstanceIdIn;

  /// Only include historic variable instances which belong to one of the passed and comma- separated tenant ids.
  List<String>? tenantIdIn;

  /// Only include historic variable instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  bool? withoutTenantId;

  /// Only include historic variable instances which belong to one of the passed  variable names.
  List<String>? variableNameIn;

  /// An array of criteria to sort the result by. Each element of the array is                      an object that specifies one ordering. The position in the array                      identifies the rank of an ordering, i.e., whether it is primary, secondary,                      etc. Sorting has no effect for `count` endpoints
  List<HistoricVariableInstanceQueryDtoSortingInner>? sorting;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricVariableInstanceQueryDto &&
    other.variableName == variableName &&
    other.variableNameLike == variableNameLike &&
    other.variableValue == variableValue &&
    other.variableNamesIgnoreCase == variableNamesIgnoreCase &&
    other.variableValuesIgnoreCase == variableValuesIgnoreCase &&
    _deepEquality.equals(other.variableTypeIn, variableTypeIn) &&
    other.includeDeleted == includeDeleted &&
    other.processInstanceId == processInstanceId &&
    _deepEquality.equals(other.processInstanceIdIn, processInstanceIdIn) &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    _deepEquality.equals(other.executionIdIn, executionIdIn) &&
    other.caseInstanceId == caseInstanceId &&
    _deepEquality.equals(other.caseExecutionIdIn, caseExecutionIdIn) &&
    _deepEquality.equals(other.caseActivityIdIn, caseActivityIdIn) &&
    _deepEquality.equals(other.taskIdIn, taskIdIn) &&
    _deepEquality.equals(other.activityInstanceIdIn, activityInstanceIdIn) &&
    _deepEquality.equals(other.tenantIdIn, tenantIdIn) &&
    other.withoutTenantId == withoutTenantId &&
    _deepEquality.equals(other.variableNameIn, variableNameIn) &&
    _deepEquality.equals(other.sorting, sorting);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (variableName == null ? 0 : variableName!.hashCode) +
    (variableNameLike == null ? 0 : variableNameLike!.hashCode) +
    (variableValue == null ? 0 : variableValue!.hashCode) +
    (variableNamesIgnoreCase == null ? 0 : variableNamesIgnoreCase!.hashCode) +
    (variableValuesIgnoreCase == null ? 0 : variableValuesIgnoreCase!.hashCode) +
    (variableTypeIn == null ? 0 : variableTypeIn!.hashCode) +
    (includeDeleted == null ? 0 : includeDeleted!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (processInstanceIdIn == null ? 0 : processInstanceIdIn!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (executionIdIn == null ? 0 : executionIdIn!.hashCode) +
    (caseInstanceId == null ? 0 : caseInstanceId!.hashCode) +
    (caseExecutionIdIn == null ? 0 : caseExecutionIdIn!.hashCode) +
    (caseActivityIdIn == null ? 0 : caseActivityIdIn!.hashCode) +
    (taskIdIn == null ? 0 : taskIdIn!.hashCode) +
    (activityInstanceIdIn == null ? 0 : activityInstanceIdIn!.hashCode) +
    (tenantIdIn == null ? 0 : tenantIdIn!.hashCode) +
    (withoutTenantId == null ? 0 : withoutTenantId!.hashCode) +
    (variableNameIn == null ? 0 : variableNameIn!.hashCode) +
    (sorting == null ? 0 : sorting!.hashCode);

  @override
  String toString() => 'HistoricVariableInstanceQueryDto[variableName=$variableName, variableNameLike=$variableNameLike, variableValue=$variableValue, variableNamesIgnoreCase=$variableNamesIgnoreCase, variableValuesIgnoreCase=$variableValuesIgnoreCase, variableTypeIn=$variableTypeIn, includeDeleted=$includeDeleted, processInstanceId=$processInstanceId, processInstanceIdIn=$processInstanceIdIn, processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, executionIdIn=$executionIdIn, caseInstanceId=$caseInstanceId, caseExecutionIdIn=$caseExecutionIdIn, caseActivityIdIn=$caseActivityIdIn, taskIdIn=$taskIdIn, activityInstanceIdIn=$activityInstanceIdIn, tenantIdIn=$tenantIdIn, withoutTenantId=$withoutTenantId, variableNameIn=$variableNameIn, sorting=$sorting]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.variableName != null) {
      json[r'variableName'] = this.variableName;
    } else {
      json[r'variableName'] = null;
    }
    if (this.variableNameLike != null) {
      json[r'variableNameLike'] = this.variableNameLike;
    } else {
      json[r'variableNameLike'] = null;
    }
    if (this.variableValue != null) {
      json[r'variableValue'] = this.variableValue;
    } else {
      json[r'variableValue'] = null;
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
    if (this.variableTypeIn != null) {
      json[r'variableTypeIn'] = this.variableTypeIn;
    } else {
      json[r'variableTypeIn'] = null;
    }
    if (this.includeDeleted != null) {
      json[r'includeDeleted'] = this.includeDeleted;
    } else {
      json[r'includeDeleted'] = null;
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
    if (this.executionIdIn != null) {
      json[r'executionIdIn'] = this.executionIdIn;
    } else {
      json[r'executionIdIn'] = null;
    }
    if (this.caseInstanceId != null) {
      json[r'caseInstanceId'] = this.caseInstanceId;
    } else {
      json[r'caseInstanceId'] = null;
    }
    if (this.caseExecutionIdIn != null) {
      json[r'caseExecutionIdIn'] = this.caseExecutionIdIn;
    } else {
      json[r'caseExecutionIdIn'] = null;
    }
    if (this.caseActivityIdIn != null) {
      json[r'caseActivityIdIn'] = this.caseActivityIdIn;
    } else {
      json[r'caseActivityIdIn'] = null;
    }
    if (this.taskIdIn != null) {
      json[r'taskIdIn'] = this.taskIdIn;
    } else {
      json[r'taskIdIn'] = null;
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
    if (this.variableNameIn != null) {
      json[r'variableNameIn'] = this.variableNameIn;
    } else {
      json[r'variableNameIn'] = null;
    }
    if (this.sorting != null) {
      json[r'sorting'] = this.sorting;
    } else {
      json[r'sorting'] = null;
    }
    return json;
  }

  /// Returns a new [HistoricVariableInstanceQueryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricVariableInstanceQueryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricVariableInstanceQueryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricVariableInstanceQueryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricVariableInstanceQueryDto(
        variableName: mapValueOfType<String>(json, r'variableName'),
        variableNameLike: mapValueOfType<String>(json, r'variableNameLike'),
        variableValue: mapValueOfType<Object>(json, r'variableValue'),
        variableNamesIgnoreCase: mapValueOfType<bool>(json, r'variableNamesIgnoreCase'),
        variableValuesIgnoreCase: mapValueOfType<bool>(json, r'variableValuesIgnoreCase'),
        variableTypeIn: json[r'variableTypeIn'] is Iterable
            ? (json[r'variableTypeIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        includeDeleted: mapValueOfType<bool>(json, r'includeDeleted'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        processInstanceIdIn: json[r'processInstanceIdIn'] is Iterable
            ? (json[r'processInstanceIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        executionIdIn: json[r'executionIdIn'] is Iterable
            ? (json[r'executionIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        caseInstanceId: mapValueOfType<String>(json, r'caseInstanceId'),
        caseExecutionIdIn: json[r'caseExecutionIdIn'] is Iterable
            ? (json[r'caseExecutionIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        caseActivityIdIn: json[r'caseActivityIdIn'] is Iterable
            ? (json[r'caseActivityIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        taskIdIn: json[r'taskIdIn'] is Iterable
            ? (json[r'taskIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        activityInstanceIdIn: json[r'activityInstanceIdIn'] is Iterable
            ? (json[r'activityInstanceIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tenantIdIn: json[r'tenantIdIn'] is Iterable
            ? (json[r'tenantIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        withoutTenantId: mapValueOfType<bool>(json, r'withoutTenantId'),
        variableNameIn: json[r'variableNameIn'] is Iterable
            ? (json[r'variableNameIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        sorting: HistoricVariableInstanceQueryDtoSortingInner.listFromJson(json[r'sorting']),
      );
    }
    return null;
  }

  static List<HistoricVariableInstanceQueryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricVariableInstanceQueryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricVariableInstanceQueryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricVariableInstanceQueryDto> mapFromJson(dynamic json) {
    final map = <String, HistoricVariableInstanceQueryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricVariableInstanceQueryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricVariableInstanceQueryDto-objects as value to a dart map
  static Map<String, List<HistoricVariableInstanceQueryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricVariableInstanceQueryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricVariableInstanceQueryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

