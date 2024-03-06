//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SetJobRetriesByProcessDto {
  /// Returns a new [SetJobRetriesByProcessDto] instance.
  SetJobRetriesByProcessDto({
    this.jobIds = const [],
    this.jobQuery,
    this.dueDate,
    this.retries,
    this.processInstances = const [],
    this.processInstanceQuery,
    this.historicProcessInstanceQuery,
  });

  /// A list of job ids to set retries for.
  List<String>? jobIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  JobQueryDto? jobQuery;

  /// The due date to set for the job. A due date indicates when this job is ready for execution. Jobs with due dates in the past will be scheduled for execution.
  DateTime? dueDate;

  /// The number of retries to set for the resource.  Must be >= 0. If this is 0, an incident is created and the task, or job, cannot be fetched, or acquired anymore unless the retries are increased again. Can not be null.
  int? retries;

  /// A list of process instance ids to fetch jobs, for which retries will be set.
  List<String>? processInstances;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProcessInstanceQueryDto? processInstanceQuery;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HistoricProcessInstanceQueryDto? historicProcessInstanceQuery;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetJobRetriesByProcessDto &&
    _deepEquality.equals(other.jobIds, jobIds) &&
    other.jobQuery == jobQuery &&
    other.dueDate == dueDate &&
    other.retries == retries &&
    _deepEquality.equals(other.processInstances, processInstances) &&
    other.processInstanceQuery == processInstanceQuery &&
    other.historicProcessInstanceQuery == historicProcessInstanceQuery;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (jobIds == null ? 0 : jobIds!.hashCode) +
    (jobQuery == null ? 0 : jobQuery!.hashCode) +
    (dueDate == null ? 0 : dueDate!.hashCode) +
    (retries == null ? 0 : retries!.hashCode) +
    (processInstances == null ? 0 : processInstances!.hashCode) +
    (processInstanceQuery == null ? 0 : processInstanceQuery!.hashCode) +
    (historicProcessInstanceQuery == null ? 0 : historicProcessInstanceQuery!.hashCode);

  @override
  String toString() => 'SetJobRetriesByProcessDto[jobIds=$jobIds, jobQuery=$jobQuery, dueDate=$dueDate, retries=$retries, processInstances=$processInstances, processInstanceQuery=$processInstanceQuery, historicProcessInstanceQuery=$historicProcessInstanceQuery]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.processInstances != null) {
      json[r'processInstances'] = this.processInstances;
    } else {
      json[r'processInstances'] = null;
    }
    if (this.processInstanceQuery != null) {
      json[r'processInstanceQuery'] = this.processInstanceQuery;
    } else {
      json[r'processInstanceQuery'] = null;
    }
    if (this.historicProcessInstanceQuery != null) {
      json[r'historicProcessInstanceQuery'] = this.historicProcessInstanceQuery;
    } else {
      json[r'historicProcessInstanceQuery'] = null;
    }
    return json;
  }

  /// Returns a new [SetJobRetriesByProcessDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SetJobRetriesByProcessDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SetJobRetriesByProcessDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SetJobRetriesByProcessDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SetJobRetriesByProcessDto(
        jobIds: json[r'jobIds'] is Iterable
            ? (json[r'jobIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        jobQuery: JobQueryDto.fromJson(json[r'jobQuery']),
        dueDate: mapDateTime(json, r'dueDate', r''),
        retries: mapValueOfType<int>(json, r'retries'),
        processInstances: json[r'processInstances'] is Iterable
            ? (json[r'processInstances'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processInstanceQuery: ProcessInstanceQueryDto.fromJson(json[r'processInstanceQuery']),
        historicProcessInstanceQuery: HistoricProcessInstanceQueryDto.fromJson(json[r'historicProcessInstanceQuery']),
      );
    }
    return null;
  }

  static List<SetJobRetriesByProcessDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SetJobRetriesByProcessDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetJobRetriesByProcessDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SetJobRetriesByProcessDto> mapFromJson(dynamic json) {
    final map = <String, SetJobRetriesByProcessDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetJobRetriesByProcessDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SetJobRetriesByProcessDto-objects as value to a dart map
  static Map<String, List<SetJobRetriesByProcessDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SetJobRetriesByProcessDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SetJobRetriesByProcessDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

