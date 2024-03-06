//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SetJobRetriesDto {
  /// Returns a new [SetJobRetriesDto] instance.
  SetJobRetriesDto({
    this.dueDate,
    this.retries,
    this.jobIds = const [],
    this.jobQuery,
  });

  /// The due date to set for the job. A due date indicates when this job is ready for execution. Jobs with due dates in the past will be scheduled for execution.
  DateTime? dueDate;

  /// The number of retries to set for the resource.  Must be >= 0. If this is 0, an incident is created and the task, or job, cannot be fetched, or acquired anymore unless the retries are increased again. Can not be null.
  int? retries;

  /// A list of job ids to set retries for.
  List<String>? jobIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  JobQueryDto? jobQuery;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetJobRetriesDto &&
    other.dueDate == dueDate &&
    other.retries == retries &&
    _deepEquality.equals(other.jobIds, jobIds) &&
    other.jobQuery == jobQuery;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dueDate == null ? 0 : dueDate!.hashCode) +
    (retries == null ? 0 : retries!.hashCode) +
    (jobIds == null ? 0 : jobIds!.hashCode) +
    (jobQuery == null ? 0 : jobQuery!.hashCode);

  @override
  String toString() => 'SetJobRetriesDto[dueDate=$dueDate, retries=$retries, jobIds=$jobIds, jobQuery=$jobQuery]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dueDate != null) {
      json[r'dueDate'] = this.dueDate!.toUtc().toIso8601String();
    } else {
      json[r'dueDate'] = null;
    }
    if (this.retries != null) {
      json[r'retries'] = this.retries;
    } else {
      json[r'retries'] = null;
    }
    if (this.jobIds != null) {
      json[r'jobIds'] = this.jobIds;
    } else {
      json[r'jobIds'] = null;
    }
    if (this.jobQuery != null) {
      json[r'jobQuery'] = this.jobQuery;
    } else {
      json[r'jobQuery'] = null;
    }
    return json;
  }

  /// Returns a new [SetJobRetriesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SetJobRetriesDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SetJobRetriesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SetJobRetriesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SetJobRetriesDto(
        dueDate: mapDateTime(json, r'dueDate', r''),
        retries: mapValueOfType<int>(json, r'retries'),
        jobIds: json[r'jobIds'] is Iterable
            ? (json[r'jobIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        jobQuery: JobQueryDto.fromJson(json[r'jobQuery']),
      );
    }
    return null;
  }

  static List<SetJobRetriesDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SetJobRetriesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetJobRetriesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SetJobRetriesDto> mapFromJson(dynamic json) {
    final map = <String, SetJobRetriesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetJobRetriesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SetJobRetriesDto-objects as value to a dart map
  static Map<String, List<SetJobRetriesDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SetJobRetriesDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SetJobRetriesDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

