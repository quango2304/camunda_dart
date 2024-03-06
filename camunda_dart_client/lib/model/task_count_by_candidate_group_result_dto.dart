//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TaskCountByCandidateGroupResultDto {
  /// Returns a new [TaskCountByCandidateGroupResultDto] instance.
  TaskCountByCandidateGroupResultDto({
    this.groupName,
    this.taskCount,
  });

  /// The name of the candidate group. If there are tasks without a group name, the value will be `null`
  String? groupName;

  /// The number of tasks which have the group name as candidate group.
  int? taskCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TaskCountByCandidateGroupResultDto &&
    other.groupName == groupName &&
    other.taskCount == taskCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (groupName == null ? 0 : groupName!.hashCode) +
    (taskCount == null ? 0 : taskCount!.hashCode);

  @override
  String toString() => 'TaskCountByCandidateGroupResultDto[groupName=$groupName, taskCount=$taskCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.groupName != null) {
      json[r'groupName'] = this.groupName;
    } else {
      json[r'groupName'] = null;
    }
    if (this.taskCount != null) {
      json[r'taskCount'] = this.taskCount;
    } else {
      json[r'taskCount'] = null;
    }
    return json;
  }

  /// Returns a new [TaskCountByCandidateGroupResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskCountByCandidateGroupResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TaskCountByCandidateGroupResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TaskCountByCandidateGroupResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskCountByCandidateGroupResultDto(
        groupName: mapValueOfType<String>(json, r'groupName'),
        taskCount: mapValueOfType<int>(json, r'taskCount'),
      );
    }
    return null;
  }

  static List<TaskCountByCandidateGroupResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskCountByCandidateGroupResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskCountByCandidateGroupResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskCountByCandidateGroupResultDto> mapFromJson(dynamic json) {
    final map = <String, TaskCountByCandidateGroupResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskCountByCandidateGroupResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskCountByCandidateGroupResultDto-objects as value to a dart map
  static Map<String, List<TaskCountByCandidateGroupResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TaskCountByCandidateGroupResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskCountByCandidateGroupResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

