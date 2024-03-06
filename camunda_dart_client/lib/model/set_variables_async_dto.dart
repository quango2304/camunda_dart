//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SetVariablesAsyncDto {
  /// Returns a new [SetVariablesAsyncDto] instance.
  SetVariablesAsyncDto({
    this.processInstanceIds = const [],
    this.processInstanceQuery,
    this.historicProcessInstanceQuery,
    this.variables = const {},
  });

  /// A list of process instance ids that define a group of process instances to which the operation will set variables.  Please note that if `processInstanceIds`, `processInstanceQuery` and `historicProcessInstanceQuery` are defined, the resulting operation will be performed on the union of these sets.
  List<String>? processInstanceIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProcessInstanceQueryDto? processInstanceQuery;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HistoricProcessInstanceQueryDto? historicProcessInstanceQuery;

  /// A variables the operation will set in the root scope of the process instances.
  Map<String, VariableValueDto>? variables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetVariablesAsyncDto &&
    _deepEquality.equals(other.processInstanceIds, processInstanceIds) &&
    other.processInstanceQuery == processInstanceQuery &&
    other.historicProcessInstanceQuery == historicProcessInstanceQuery &&
    _deepEquality.equals(other.variables, variables);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (processInstanceIds == null ? 0 : processInstanceIds!.hashCode) +
    (processInstanceQuery == null ? 0 : processInstanceQuery!.hashCode) +
    (historicProcessInstanceQuery == null ? 0 : historicProcessInstanceQuery!.hashCode) +
    (variables == null ? 0 : variables!.hashCode);

  @override
  String toString() => 'SetVariablesAsyncDto[processInstanceIds=$processInstanceIds, processInstanceQuery=$processInstanceQuery, historicProcessInstanceQuery=$historicProcessInstanceQuery, variables=$variables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.processInstanceIds != null) {
      json[r'processInstanceIds'] = this.processInstanceIds;
    } else {
      json[r'processInstanceIds'] = null;
    }
    if (this.processInstanceQuery != null) {
      json[r'processInstanceQuery'] = this.processInstanceQuery;
    } else {
      json[r'processInstanceQuery'] = null;
    }
    if (this.historicProcessInstanceQuery != null) {
      json[r'historicProcessInstanceQuery'] = this.historicProcessInstanceQuery;
    } else {
      json[r'historicProcessInstanceQuery'] = null;
    }
    if (this.variables != null) {
      json[r'variables'] = this.variables;
    } else {
      json[r'variables'] = null;
    }
    return json;
  }

  /// Returns a new [SetVariablesAsyncDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SetVariablesAsyncDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SetVariablesAsyncDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SetVariablesAsyncDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SetVariablesAsyncDto(
        processInstanceIds: json[r'processInstanceIds'] is Iterable
            ? (json[r'processInstanceIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processInstanceQuery: ProcessInstanceQueryDto.fromJson(json[r'processInstanceQuery']),
        historicProcessInstanceQuery: HistoricProcessInstanceQueryDto.fromJson(json[r'historicProcessInstanceQuery']),
        variables: VariableValueDto.mapFromJson(json[r'variables']),
      );
    }
    return null;
  }

  static List<SetVariablesAsyncDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SetVariablesAsyncDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetVariablesAsyncDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SetVariablesAsyncDto> mapFromJson(dynamic json) {
    final map = <String, SetVariablesAsyncDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetVariablesAsyncDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SetVariablesAsyncDto-objects as value to a dart map
  static Map<String, List<SetVariablesAsyncDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SetVariablesAsyncDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SetVariablesAsyncDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

