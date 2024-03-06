//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExtendLockOnExternalTaskDto {
  /// Returns a new [ExtendLockOnExternalTaskDto] instance.
  ExtendLockOnExternalTaskDto({
    this.workerId,
    this.newDuration,
  });

  /// **Mandatory.** The ID of the worker who is performing the operation on the external task. If the task is already locked, must match the id of the worker who has most recently locked the task.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workerId;

  /// An amount of time (in milliseconds). This is the new lock duration starting from the current moment.
  int? newDuration;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtendLockOnExternalTaskDto &&
    other.workerId == workerId &&
    other.newDuration == newDuration;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (workerId == null ? 0 : workerId!.hashCode) +
    (newDuration == null ? 0 : newDuration!.hashCode);

  @override
  String toString() => 'ExtendLockOnExternalTaskDto[workerId=$workerId, newDuration=$newDuration]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.workerId != null) {
      json[r'workerId'] = this.workerId;
    } else {
      json[r'workerId'] = null;
    }
    if (this.newDuration != null) {
      json[r'newDuration'] = this.newDuration;
    } else {
      json[r'newDuration'] = null;
    }
    return json;
  }

  /// Returns a new [ExtendLockOnExternalTaskDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtendLockOnExternalTaskDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExtendLockOnExternalTaskDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExtendLockOnExternalTaskDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExtendLockOnExternalTaskDto(
        workerId: mapValueOfType<String>(json, r'workerId'),
        newDuration: mapValueOfType<int>(json, r'newDuration'),
      );
    }
    return null;
  }

  static List<ExtendLockOnExternalTaskDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtendLockOnExternalTaskDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtendLockOnExternalTaskDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExtendLockOnExternalTaskDto> mapFromJson(dynamic json) {
    final map = <String, ExtendLockOnExternalTaskDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExtendLockOnExternalTaskDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExtendLockOnExternalTaskDto-objects as value to a dart map
  static Map<String, List<ExtendLockOnExternalTaskDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExtendLockOnExternalTaskDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExtendLockOnExternalTaskDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

