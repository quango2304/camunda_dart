//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VariableInstanceQueryDto {
  /// Returns a new [VariableInstanceQueryDto] instance.
  VariableInstanceQueryDto({
    this.variableName,
    this.variableNameLike,
    this.processInstanceIdIn = const [],
    this.executionIdIn = const [],
    this.caseInstanceIdIn = const [],
    this.caseExecutionIdIn = const [],
    this.taskIdIn = const [],
    this.batchIdIn = const [],
    this.activityInstanceIdIn = const [],
    this.tenantIdIn = const [],
    this.variableValues = const [],
    this.variableNamesIgnoreCase,
    this.variableValuesIgnoreCase,
    this.variableScopeIdIn = const [],
    this.sorting = const [],
  });

  /// Filter by variable instance name.
  String? variableName;

  /// Filter by the variable instance name. The parameter can include the wildcard `%` to express like-strategy such as: starts with (`%`name), ends with (name`%`) or contains (`%`name`%`).
  String? variableNameLike;

  /// Only include variable instances which belong to one of the passed  process instance ids.
  List<String>? processInstanceIdIn;

  /// Only include variable instances which belong to one of the passed  execution ids.
  List<String>? executionIdIn;

  /// Only include variable instances which belong to one of the passed  case instance ids.
  List<String>? caseInstanceIdIn;

  /// Only include variable instances which belong to one of the passed  case execution ids.
  List<String>? caseExecutionIdIn;

  /// Only include variable instances which belong to one of the passed  task ids.
  List<String>? taskIdIn;

  /// Only include variable instances which belong to one of the passed  batch ids.
  List<String>? batchIdIn;

  /// Only include variable instances which belong to one of the passed  activity instance ids.
  List<String>? activityInstanceIdIn;

  /// Only include variable instances which belong to one of the passed  tenant ids.
  List<String>? tenantIdIn;

  /// An array to only include variable instances that have the certain values. The array consists of objects with the three properties `name`, `operator` and `value`. `name (String)` is the variable name, `operator (String)` is the comparison operator to be used and `value` the variable value. `value` may be `String`, `Number` or `Boolean`.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`
  List<VariableQueryParameterDto>? variableValues;

  /// Match all variable names provided in `variableValues` case-insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
  bool? variableNamesIgnoreCase;

  /// Match all variable values provided in `variableValues` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
  bool? variableValuesIgnoreCase;

  /// Only include variable instances which belong to one of passed scope ids.
  List<String>? variableScopeIdIn;

  /// An array of criteria to sort the result by. Each element of the array is an object that specifies one ordering.                       The position in the array identifies the rank of an ordering, i.e., whether it is primary, secondary, etc.                       Sorting has no effect for `count` endpoints
  List<VariableInstanceQueryDtoSortingInner>? sorting;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VariableInstanceQueryDto &&
    other.variableName == variableName &&
    other.variableNameLike == variableNameLike &&
    _deepEquality.equals(other.processInstanceIdIn, processInstanceIdIn) &&
    _deepEquality.equals(other.executionIdIn, executionIdIn) &&
    _deepEquality.equals(other.caseInstanceIdIn, caseInstanceIdIn) &&
    _deepEquality.equals(other.caseExecutionIdIn, caseExecutionIdIn) &&
    _deepEquality.equals(other.taskIdIn, taskIdIn) &&
    _deepEquality.equals(other.batchIdIn, batchIdIn) &&
    _deepEquality.equals(other.activityInstanceIdIn, activityInstanceIdIn) &&
    _deepEquality.equals(other.tenantIdIn, tenantIdIn) &&
    _deepEquality.equals(other.variableValues, variableValues) &&
    other.variableNamesIgnoreCase == variableNamesIgnoreCase &&
    other.variableValuesIgnoreCase == variableValuesIgnoreCase &&
    _deepEquality.equals(other.variableScopeIdIn, variableScopeIdIn) &&
    _deepEquality.equals(other.sorting, sorting);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (variableName == null ? 0 : variableName!.hashCode) +
    (variableNameLike == null ? 0 : variableNameLike!.hashCode) +
    (processInstanceIdIn == null ? 0 : processInstanceIdIn!.hashCode) +
    (executionIdIn == null ? 0 : executionIdIn!.hashCode) +
    (caseInstanceIdIn == null ? 0 : caseInstanceIdIn!.hashCode) +
    (caseExecutionIdIn == null ? 0 : caseExecutionIdIn!.hashCode) +
    (taskIdIn == null ? 0 : taskIdIn!.hashCode) +
    (batchIdIn == null ? 0 : batchIdIn!.hashCode) +
    (activityInstanceIdIn == null ? 0 : activityInstanceIdIn!.hashCode) +
    (tenantIdIn == null ? 0 : tenantIdIn!.hashCode) +
    (variableValues == null ? 0 : variableValues!.hashCode) +
    (variableNamesIgnoreCase == null ? 0 : variableNamesIgnoreCase!.hashCode) +
    (variableValuesIgnoreCase == null ? 0 : variableValuesIgnoreCase!.hashCode) +
    (variableScopeIdIn == null ? 0 : variableScopeIdIn!.hashCode) +
    (sorting == null ? 0 : sorting!.hashCode);

  @override
  String toString() => 'VariableInstanceQueryDto[variableName=$variableName, variableNameLike=$variableNameLike, processInstanceIdIn=$processInstanceIdIn, executionIdIn=$executionIdIn, caseInstanceIdIn=$caseInstanceIdIn, caseExecutionIdIn=$caseExecutionIdIn, taskIdIn=$taskIdIn, batchIdIn=$batchIdIn, activityInstanceIdIn=$activityInstanceIdIn, tenantIdIn=$tenantIdIn, variableValues=$variableValues, variableNamesIgnoreCase=$variableNamesIgnoreCase, variableValuesIgnoreCase=$variableValuesIgnoreCase, variableScopeIdIn=$variableScopeIdIn, sorting=$sorting]';

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
    if (this.processInstanceIdIn != null) {
      json[r'processInstanceIdIn'] = this.processInstanceIdIn;
    } else {
      json[r'processInstanceIdIn'] = null;
    }
    if (this.executionIdIn != null) {
      json[r'executionIdIn'] = this.executionIdIn;
    } else {
      json[r'executionIdIn'] = null;
    }
    if (this.caseInstanceIdIn != null) {
      json[r'caseInstanceIdIn'] = this.caseInstanceIdIn;
    } else {
      json[r'caseInstanceIdIn'] = null;
    }
    if (this.caseExecutionIdIn != null) {
      json[r'caseExecutionIdIn'] = this.caseExecutionIdIn;
    } else {
      json[r'caseExecutionIdIn'] = null;
    }
    if (this.taskIdIn != null) {
      json[r'taskIdIn'] = this.taskIdIn;
    } else {
      json[r'taskIdIn'] = null;
    }
    if (this.batchIdIn != null) {
      json[r'batchIdIn'] = this.batchIdIn;
    } else {
      json[r'batchIdIn'] = null;
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
    if (this.variableValues != null) {
      json[r'variableValues'] = this.variableValues;
    } else {
      json[r'variableValues'] = null;
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
    if (this.variableScopeIdIn != null) {
      json[r'variableScopeIdIn'] = this.variableScopeIdIn;
    } else {
      json[r'variableScopeIdIn'] = null;
    }
    if (this.sorting != null) {
      json[r'sorting'] = this.sorting;
    } else {
      json[r'sorting'] = null;
    }
    return json;
  }

  /// Returns a new [VariableInstanceQueryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VariableInstanceQueryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VariableInstanceQueryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VariableInstanceQueryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VariableInstanceQueryDto(
        variableName: mapValueOfType<String>(json, r'variableName'),
        variableNameLike: mapValueOfType<String>(json, r'variableNameLike'),
        processInstanceIdIn: json[r'processInstanceIdIn'] is Iterable
            ? (json[r'processInstanceIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        executionIdIn: json[r'executionIdIn'] is Iterable
            ? (json[r'executionIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        caseInstanceIdIn: json[r'caseInstanceIdIn'] is Iterable
            ? (json[r'caseInstanceIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        caseExecutionIdIn: json[r'caseExecutionIdIn'] is Iterable
            ? (json[r'caseExecutionIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        taskIdIn: json[r'taskIdIn'] is Iterable
            ? (json[r'taskIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        batchIdIn: json[r'batchIdIn'] is Iterable
            ? (json[r'batchIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        activityInstanceIdIn: json[r'activityInstanceIdIn'] is Iterable
            ? (json[r'activityInstanceIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tenantIdIn: json[r'tenantIdIn'] is Iterable
            ? (json[r'tenantIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        variableValues: VariableQueryParameterDto.listFromJson(json[r'variableValues']),
        variableNamesIgnoreCase: mapValueOfType<bool>(json, r'variableNamesIgnoreCase'),
        variableValuesIgnoreCase: mapValueOfType<bool>(json, r'variableValuesIgnoreCase'),
        variableScopeIdIn: json[r'variableScopeIdIn'] is Iterable
            ? (json[r'variableScopeIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        sorting: VariableInstanceQueryDtoSortingInner.listFromJson(json[r'sorting']),
      );
    }
    return null;
  }

  static List<VariableInstanceQueryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VariableInstanceQueryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VariableInstanceQueryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VariableInstanceQueryDto> mapFromJson(dynamic json) {
    final map = <String, VariableInstanceQueryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VariableInstanceQueryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VariableInstanceQueryDto-objects as value to a dart map
  static Map<String, List<VariableInstanceQueryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VariableInstanceQueryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VariableInstanceQueryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

