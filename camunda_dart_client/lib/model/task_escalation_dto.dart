//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TaskEscalationDto {
  /// Returns a new [TaskEscalationDto] instance.
  TaskEscalationDto({
    this.escalationCode,
    this.variables = const {},
  });

  /// An escalation code that indicates the predefined escalation. It is used to identify the BPMN escalation handler.
  String? escalationCode;

  /// A JSON object containing variable key-value pairs.
  Map<String, VariableValueDto>? variables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TaskEscalationDto &&
    other.escalationCode == escalationCode &&
    _deepEquality.equals(other.variables, variables);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (escalationCode == null ? 0 : escalationCode!.hashCode) +
    (variables == null ? 0 : variables!.hashCode);

  @override
  String toString() => 'TaskEscalationDto[escalationCode=$escalationCode, variables=$variables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.escalationCode != null) {
      json[r'escalationCode'] = this.escalationCode;
    } else {
      json[r'escalationCode'] = null;
    }
    if (this.variables != null) {
      json[r'variables'] = this.variables;
    } else {
      json[r'variables'] = null;
    }
    return json;
  }

  /// Returns a new [TaskEscalationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskEscalationDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TaskEscalationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TaskEscalationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskEscalationDto(
        escalationCode: mapValueOfType<String>(json, r'escalationCode'),
        variables: VariableValueDto.mapFromJson(json[r'variables']),
      );
    }
    return null;
  }

  static List<TaskEscalationDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskEscalationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskEscalationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskEscalationDto> mapFromJson(dynamic json) {
    final map = <String, TaskEscalationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskEscalationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskEscalationDto-objects as value to a dart map
  static Map<String, List<TaskEscalationDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TaskEscalationDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskEscalationDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

