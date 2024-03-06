//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CompleteTaskDto {
  /// Returns a new [CompleteTaskDto] instance.
  CompleteTaskDto({
    this.variables = const {},
    this.withVariablesInReturn = false,
  });

  /// A JSON object containing variable key-value pairs.
  Map<String, VariableValueDto>? variables;

  /// Indicates whether the response should contain the process variables or not. The default is `false` with a response code of `204`. If set to `true` the response contains the process variables and has a response code of `200`. If the task is not associated with a process instance (e.g. if it's part of a case instance) no variables will be returned.
  bool? withVariablesInReturn;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CompleteTaskDto &&
    _deepEquality.equals(other.variables, variables) &&
    other.withVariablesInReturn == withVariablesInReturn;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (variables == null ? 0 : variables!.hashCode) +
    (withVariablesInReturn == null ? 0 : withVariablesInReturn!.hashCode);

  @override
  String toString() => 'CompleteTaskDto[variables=$variables, withVariablesInReturn=$withVariablesInReturn]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.variables != null) {
      json[r'variables'] = this.variables;
    } else {
      json[r'variables'] = null;
    }
    if (this.withVariablesInReturn != null) {
      json[r'withVariablesInReturn'] = this.withVariablesInReturn;
    } else {
      json[r'withVariablesInReturn'] = null;
    }
    return json;
  }

  /// Returns a new [CompleteTaskDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CompleteTaskDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CompleteTaskDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CompleteTaskDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CompleteTaskDto(
        variables: VariableValueDto.mapFromJson(json[r'variables']),
        withVariablesInReturn: mapValueOfType<bool>(json, r'withVariablesInReturn') ?? false,
      );
    }
    return null;
  }

  static List<CompleteTaskDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CompleteTaskDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CompleteTaskDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CompleteTaskDto> mapFromJson(dynamic json) {
    final map = <String, CompleteTaskDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CompleteTaskDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CompleteTaskDto-objects as value to a dart map
  static Map<String, List<CompleteTaskDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CompleteTaskDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CompleteTaskDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

