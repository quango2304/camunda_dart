//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JobDefinitionPriorityDto {
  /// Returns a new [JobDefinitionPriorityDto] instance.
  JobDefinitionPriorityDto({
    this.priority,
    this.includeJobs,
  });

  /// The new execution priority number for jobs of the given definition. The definition's priority can be reset by using the value `null`. In that case, the job definition's priority no longer applies but a new job's priority is determined as specified in the process model.
  int? priority;

  /// A boolean value indicating whether existing jobs of the given definition should receive the priority as well. Default value is `false`. Can only be `true` when the __priority__ parameter is not `null`.
  bool? includeJobs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobDefinitionPriorityDto &&
    other.priority == priority &&
    other.includeJobs == includeJobs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (priority == null ? 0 : priority!.hashCode) +
    (includeJobs == null ? 0 : includeJobs!.hashCode);

  @override
  String toString() => 'JobDefinitionPriorityDto[priority=$priority, includeJobs=$includeJobs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.includeJobs != null) {
      json[r'includeJobs'] = this.includeJobs;
    } else {
      json[r'includeJobs'] = null;
    }
    return json;
  }

  /// Returns a new [JobDefinitionPriorityDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobDefinitionPriorityDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobDefinitionPriorityDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobDefinitionPriorityDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobDefinitionPriorityDto(
        priority: mapValueOfType<int>(json, r'priority'),
        includeJobs: mapValueOfType<bool>(json, r'includeJobs'),
      );
    }
    return null;
  }

  static List<JobDefinitionPriorityDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobDefinitionPriorityDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobDefinitionPriorityDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobDefinitionPriorityDto> mapFromJson(dynamic json) {
    final map = <String, JobDefinitionPriorityDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobDefinitionPriorityDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobDefinitionPriorityDto-objects as value to a dart map
  static Map<String, List<JobDefinitionPriorityDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobDefinitionPriorityDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobDefinitionPriorityDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

