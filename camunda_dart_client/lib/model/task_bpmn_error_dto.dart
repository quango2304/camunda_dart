//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TaskBpmnErrorDto {
  /// Returns a new [TaskBpmnErrorDto] instance.
  TaskBpmnErrorDto({
    this.errorCode,
    this.errorMessage,
    this.variables = const {},
  });

  /// An error code that indicates the predefined error. It is used to identify the BPMN error handler.
  String? errorCode;

  /// An error message that describes the error.
  String? errorMessage;

  /// A JSON object containing variable key-value pairs.
  Map<String, VariableValueDto>? variables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TaskBpmnErrorDto &&
    other.errorCode == errorCode &&
    other.errorMessage == errorMessage &&
    _deepEquality.equals(other.variables, variables);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (errorCode == null ? 0 : errorCode!.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (variables == null ? 0 : variables!.hashCode);

  @override
  String toString() => 'TaskBpmnErrorDto[errorCode=$errorCode, errorMessage=$errorMessage, variables=$variables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.errorCode != null) {
      json[r'errorCode'] = this.errorCode;
    } else {
      json[r'errorCode'] = null;
    }
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    if (this.variables != null) {
      json[r'variables'] = this.variables;
    } else {
      json[r'variables'] = null;
    }
    return json;
  }

  /// Returns a new [TaskBpmnErrorDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskBpmnErrorDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TaskBpmnErrorDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TaskBpmnErrorDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskBpmnErrorDto(
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
        variables: VariableValueDto.mapFromJson(json[r'variables']),
      );
    }
    return null;
  }

  static List<TaskBpmnErrorDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskBpmnErrorDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskBpmnErrorDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskBpmnErrorDto> mapFromJson(dynamic json) {
    final map = <String, TaskBpmnErrorDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskBpmnErrorDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskBpmnErrorDto-objects as value to a dart map
  static Map<String, List<TaskBpmnErrorDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TaskBpmnErrorDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskBpmnErrorDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

