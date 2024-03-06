//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HandleExternalTaskDto {
  /// Returns a new [HandleExternalTaskDto] instance.
  HandleExternalTaskDto({
    this.workerId,
  });

  /// **Mandatory.** The ID of the worker who is performing the operation on the external task. If the task is already locked, must match the id of the worker who has most recently locked the task.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workerId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HandleExternalTaskDto &&
    other.workerId == workerId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (workerId == null ? 0 : workerId!.hashCode);

  @override
  String toString() => 'HandleExternalTaskDto[workerId=$workerId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.workerId != null) {
      json[r'workerId'] = this.workerId;
    } else {
      json[r'workerId'] = null;
    }
    return json;
  }

  /// Returns a new [HandleExternalTaskDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HandleExternalTaskDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HandleExternalTaskDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HandleExternalTaskDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HandleExternalTaskDto(
        workerId: mapValueOfType<String>(json, r'workerId'),
      );
    }
    return null;
  }

  static List<HandleExternalTaskDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HandleExternalTaskDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HandleExternalTaskDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HandleExternalTaskDto> mapFromJson(dynamic json) {
    final map = <String, HandleExternalTaskDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HandleExternalTaskDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HandleExternalTaskDto-objects as value to a dart map
  static Map<String, List<HandleExternalTaskDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HandleExternalTaskDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HandleExternalTaskDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

