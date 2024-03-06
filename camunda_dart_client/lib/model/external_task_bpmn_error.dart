//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExternalTaskBpmnError {
  /// Returns a new [ExternalTaskBpmnError] instance.
  ExternalTaskBpmnError({
    this.errorCode,
    this.errorMessage,
    this.variables = const {},
    this.workerId,
  });

  /// An error code that indicates the predefined error. It is used to identify the BPMN error handler.
  String? errorCode;

  /// An error message that describes the error.
  String? errorMessage;

  /// A JSON object containing variable key-value pairs.
  Map<String, VariableValueDto>? variables;

  /// The id of the worker that reports the failure. Must match the id of the worker who has most recently locked the task.
  String? workerId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExternalTaskBpmnError &&
    other.errorCode == errorCode &&
    other.errorMessage == errorMessage &&
    _deepEquality.equals(other.variables, variables) &&
    other.workerId == workerId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (errorCode == null ? 0 : errorCode!.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (variables == null ? 0 : variables!.hashCode) +
    (workerId == null ? 0 : workerId!.hashCode);

  @override
  String toString() => 'ExternalTaskBpmnError[errorCode=$errorCode, errorMessage=$errorMessage, variables=$variables, workerId=$workerId]';

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
    if (this.workerId != null) {
      json[r'workerId'] = this.workerId;
    } else {
      json[r'workerId'] = null;
    }
    return json;
  }

  /// Returns a new [ExternalTaskBpmnError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExternalTaskBpmnError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExternalTaskBpmnError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExternalTaskBpmnError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExternalTaskBpmnError(
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
        variables: VariableValueDto.mapFromJson(json[r'variables']),
        workerId: mapValueOfType<String>(json, r'workerId'),
      );
    }
    return null;
  }

  static List<ExternalTaskBpmnError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExternalTaskBpmnError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExternalTaskBpmnError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExternalTaskBpmnError> mapFromJson(dynamic json) {
    final map = <String, ExternalTaskBpmnError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExternalTaskBpmnError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExternalTaskBpmnError-objects as value to a dart map
  static Map<String, List<ExternalTaskBpmnError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExternalTaskBpmnError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExternalTaskBpmnError.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

