//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JobSuspensionStateDto {
  /// Returns a new [JobSuspensionStateDto] instance.
  JobSuspensionStateDto({
    this.suspended,
    this.jobDefinitionId,
    this.processDefinitionId,
    this.processInstanceId,
    this.processDefinitionKey,
    this.processDefinitionTenantId,
    this.processDefinitionWithoutTenantId,
  });

  /// A Boolean value which indicates whether to activate or suspend a given instance  (e.g. process instance, job, job definition, or batch). When the value is set to true,  the given instance will be suspended and when the value is set to false,  the given instance will be activated.
  bool? suspended;

  /// The job definition id of the jobs to activate or suspend.
  String? jobDefinitionId;

  /// The process definition id of the jobs to activate or suspend.
  String? processDefinitionId;

  /// The process instance id of the jobs to activate or suspend.
  String? processInstanceId;

  /// The process definition key of the jobs to activate or suspend.
  String? processDefinitionKey;

  /// Only activate or suspend jobs of a process definition which belongs to a tenant with the given id. Works only when selecting with `processDefinitionKey`.
  String? processDefinitionTenantId;

  /// Only activate or suspend jobs of a process definition which belongs to no tenant. Value may only be `true`, as `false` is the default behavior. Works only when selecting with `processDefinitionKey`.
  bool? processDefinitionWithoutTenantId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobSuspensionStateDto &&
    other.suspended == suspended &&
    other.jobDefinitionId == jobDefinitionId &&
    other.processDefinitionId == processDefinitionId &&
    other.processInstanceId == processInstanceId &&
    other.processDefinitionKey == processDefinitionKey &&
    other.processDefinitionTenantId == processDefinitionTenantId &&
    other.processDefinitionWithoutTenantId == processDefinitionWithoutTenantId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (suspended == null ? 0 : suspended!.hashCode) +
    (jobDefinitionId == null ? 0 : jobDefinitionId!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (processDefinitionTenantId == null ? 0 : processDefinitionTenantId!.hashCode) +
    (processDefinitionWithoutTenantId == null ? 0 : processDefinitionWithoutTenantId!.hashCode);

  @override
  String toString() => 'JobSuspensionStateDto[suspended=$suspended, jobDefinitionId=$jobDefinitionId, processDefinitionId=$processDefinitionId, processInstanceId=$processInstanceId, processDefinitionKey=$processDefinitionKey, processDefinitionTenantId=$processDefinitionTenantId, processDefinitionWithoutTenantId=$processDefinitionWithoutTenantId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.suspended != null) {
      json[r'suspended'] = this.suspended;
    } else {
      json[r'suspended'] = null;
    }
    if (this.jobDefinitionId != null) {
      json[r'jobDefinitionId'] = this.jobDefinitionId;
    } else {
      json[r'jobDefinitionId'] = null;
    }
    if (this.processDefinitionId != null) {
      json[r'processDefinitionId'] = this.processDefinitionId;
    } else {
      json[r'processDefinitionId'] = null;
    }
    if (this.processInstanceId != null) {
      json[r'processInstanceId'] = this.processInstanceId;
    } else {
      json[r'processInstanceId'] = null;
    }
    if (this.processDefinitionKey != null) {
      json[r'processDefinitionKey'] = this.processDefinitionKey;
    } else {
      json[r'processDefinitionKey'] = null;
    }
    if (this.processDefinitionTenantId != null) {
      json[r'processDefinitionTenantId'] = this.processDefinitionTenantId;
    } else {
      json[r'processDefinitionTenantId'] = null;
    }
    if (this.processDefinitionWithoutTenantId != null) {
      json[r'processDefinitionWithoutTenantId'] = this.processDefinitionWithoutTenantId;
    } else {
      json[r'processDefinitionWithoutTenantId'] = null;
    }
    return json;
  }

  /// Returns a new [JobSuspensionStateDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobSuspensionStateDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobSuspensionStateDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobSuspensionStateDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobSuspensionStateDto(
        suspended: mapValueOfType<bool>(json, r'suspended'),
        jobDefinitionId: mapValueOfType<String>(json, r'jobDefinitionId'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        processDefinitionTenantId: mapValueOfType<String>(json, r'processDefinitionTenantId'),
        processDefinitionWithoutTenantId: mapValueOfType<bool>(json, r'processDefinitionWithoutTenantId'),
      );
    }
    return null;
  }

  static List<JobSuspensionStateDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobSuspensionStateDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobSuspensionStateDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobSuspensionStateDto> mapFromJson(dynamic json) {
    final map = <String, JobSuspensionStateDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobSuspensionStateDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobSuspensionStateDto-objects as value to a dart map
  static Map<String, List<JobSuspensionStateDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobSuspensionStateDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobSuspensionStateDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

