//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JobDefinitionSuspensionStateDto {
  /// Returns a new [JobDefinitionSuspensionStateDto] instance.
  JobDefinitionSuspensionStateDto({
    this.suspended,
    this.includeJobs,
    this.executionDate,
  });

  /// A Boolean value which indicates whether to activate or suspend a given instance  (e.g. process instance, job, job definition, or batch). When the value is set to true,  the given instance will be suspended and when the value is set to false,  the given instance will be activated.
  bool? suspended;

  /// A `Boolean` value which indicates whether to activate or suspend also all jobs of the referenced job definitions. When the value is set to `true`, all jobs of the provided job definitions will be activated or suspended and when the value is set to `false`, the suspension state of all jobs of the provided job definitions will not be updated.
  bool? includeJobs;

  /// The date on which the referenced job definitions will be activated or suspended. If null, the suspension state of the given job definitions is updated immediately. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  String? executionDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobDefinitionSuspensionStateDto &&
    other.suspended == suspended &&
    other.includeJobs == includeJobs &&
    other.executionDate == executionDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (suspended == null ? 0 : suspended!.hashCode) +
    (includeJobs == null ? 0 : includeJobs!.hashCode) +
    (executionDate == null ? 0 : executionDate!.hashCode);

  @override
  String toString() => 'JobDefinitionSuspensionStateDto[suspended=$suspended, includeJobs=$includeJobs, executionDate=$executionDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.suspended != null) {
      json[r'suspended'] = this.suspended;
    } else {
      json[r'suspended'] = null;
    }
    if (this.includeJobs != null) {
      json[r'includeJobs'] = this.includeJobs;
    } else {
      json[r'includeJobs'] = null;
    }
    if (this.executionDate != null) {
      json[r'executionDate'] = this.executionDate;
    } else {
      json[r'executionDate'] = null;
    }
    return json;
  }

  /// Returns a new [JobDefinitionSuspensionStateDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobDefinitionSuspensionStateDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobDefinitionSuspensionStateDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobDefinitionSuspensionStateDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobDefinitionSuspensionStateDto(
        suspended: mapValueOfType<bool>(json, r'suspended'),
        includeJobs: mapValueOfType<bool>(json, r'includeJobs'),
        executionDate: mapValueOfType<String>(json, r'executionDate'),
      );
    }
    return null;
  }

  static List<JobDefinitionSuspensionStateDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobDefinitionSuspensionStateDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobDefinitionSuspensionStateDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobDefinitionSuspensionStateDto> mapFromJson(dynamic json) {
    final map = <String, JobDefinitionSuspensionStateDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobDefinitionSuspensionStateDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobDefinitionSuspensionStateDto-objects as value to a dart map
  static Map<String, List<JobDefinitionSuspensionStateDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobDefinitionSuspensionStateDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobDefinitionSuspensionStateDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

