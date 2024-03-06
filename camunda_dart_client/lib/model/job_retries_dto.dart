//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JobRetriesDto {
  /// Returns a new [JobRetriesDto] instance.
  JobRetriesDto({
    this.retries,
    this.dueDate,
  });

  /// The number of retries to set for the resource.  Must be >= 0. If this is 0, an incident is created and the task, or job, cannot be fetched, or acquired anymore unless the retries are increased again. Can not be null.
  int? retries;

  /// The due date to set for the job. A due date indicates when this job is ready for execution. Jobs with due dates in the past will be scheduled for execution.
  DateTime? dueDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobRetriesDto &&
    other.retries == retries &&
    other.dueDate == dueDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (retries == null ? 0 : retries!.hashCode) +
    (dueDate == null ? 0 : dueDate!.hashCode);

  @override
  String toString() => 'JobRetriesDto[retries=$retries, dueDate=$dueDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.retries != null) {
      json[r'retries'] = this.retries;
    } else {
      json[r'retries'] = null;
    }
    if (this.dueDate != null) {
      json[r'dueDate'] = this.dueDate!.toUtc().toIso8601String();
    } else {
      json[r'dueDate'] = null;
    }
    return json;
  }

  /// Returns a new [JobRetriesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobRetriesDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobRetriesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobRetriesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobRetriesDto(
        retries: mapValueOfType<int>(json, r'retries'),
        dueDate: mapDateTime(json, r'dueDate', r''),
      );
    }
    return null;
  }

  static List<JobRetriesDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobRetriesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobRetriesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobRetriesDto> mapFromJson(dynamic json) {
    final map = <String, JobRetriesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobRetriesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobRetriesDto-objects as value to a dart map
  static Map<String, List<JobRetriesDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobRetriesDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobRetriesDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

