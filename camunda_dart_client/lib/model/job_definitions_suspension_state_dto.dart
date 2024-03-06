//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JobDefinitionsSuspensionStateDto {
  /// Returns a new [JobDefinitionsSuspensionStateDto] instance.
  JobDefinitionsSuspensionStateDto({
    this.includeJobs,
    this.executionDate,
    this.suspended,
    this.processDefinitionId,
    this.processDefinitionKey,
    this.processDefinitionTenantId,
    this.processDefinitionWithoutTenantId,
  });

  /// A `Boolean` value which indicates whether to activate or suspend also all jobs of the referenced job definitions. When the value is set to `true`, all jobs of the provided job definitions will be activated or suspended and when the value is set to `false`, the suspension state of all jobs of the provided job definitions will not be updated.
  bool? includeJobs;

  /// The date on which the referenced job definitions will be activated or suspended. If null, the suspension state of the given job definitions is updated immediately. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  String? executionDate;

  /// A Boolean value which indicates whether to activate or suspend a given instance  (e.g. process instance, job, job definition, or batch). When the value is set to true,  the given instance will be suspended and when the value is set to false,  the given instance will be activated.
  bool? suspended;

  /// The process definition id of the job definitions to activate or suspend.
  String? processDefinitionId;

  /// The process definition key of the job definitions to activate or suspend.
  String? processDefinitionKey;

  /// Only activate or suspend job definitions of a process definition which belongs to a tenant with the given id.  Note that this parameter will only be considered  in combination with `processDefinitionKey`.
  String? processDefinitionTenantId;

  /// Only activate or suspend job definitions of a process definition which belongs to no tenant. Value may only be `true`, as `false` is the default behavior.  Note that this parameter will only be considered  in combination with `processDefinitionKey`.
  bool? processDefinitionWithoutTenantId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobDefinitionsSuspensionStateDto &&
    other.includeJobs == includeJobs &&
    other.executionDate == executionDate &&
    other.suspended == suspended &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    other.processDefinitionTenantId == processDefinitionTenantId &&
    other.processDefinitionWithoutTenantId == processDefinitionWithoutTenantId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (includeJobs == null ? 0 : includeJobs!.hashCode) +
    (executionDate == null ? 0 : executionDate!.hashCode) +
    (suspended == null ? 0 : suspended!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (processDefinitionTenantId == null ? 0 : processDefinitionTenantId!.hashCode) +
    (processDefinitionWithoutTenantId == null ? 0 : processDefinitionWithoutTenantId!.hashCode);

  @override
  String toString() => 'JobDefinitionsSuspensionStateDto[includeJobs=$includeJobs, executionDate=$executionDate, suspended=$suspended, processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, processDefinitionTenantId=$processDefinitionTenantId, processDefinitionWithoutTenantId=$processDefinitionWithoutTenantId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.suspended != null) {
      json[r'suspended'] = this.suspended;
    } else {
      json[r'suspended'] = null;
    }
    if (this.processDefinitionId != null) {
      json[r'processDefinitionId'] = this.processDefinitionId;
    } else {
      json[r'processDefinitionId'] = null;
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

  /// Returns a new [JobDefinitionsSuspensionStateDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobDefinitionsSuspensionStateDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobDefinitionsSuspensionStateDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobDefinitionsSuspensionStateDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobDefinitionsSuspensionStateDto(
        includeJobs: mapValueOfType<bool>(json, r'includeJobs'),
        executionDate: mapValueOfType<String>(json, r'executionDate'),
        suspended: mapValueOfType<bool>(json, r'suspended'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        processDefinitionTenantId: mapValueOfType<String>(json, r'processDefinitionTenantId'),
        processDefinitionWithoutTenantId: mapValueOfType<bool>(json, r'processDefinitionWithoutTenantId'),
      );
    }
    return null;
  }

  static List<JobDefinitionsSuspensionStateDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobDefinitionsSuspensionStateDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobDefinitionsSuspensionStateDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobDefinitionsSuspensionStateDto> mapFromJson(dynamic json) {
    final map = <String, JobDefinitionsSuspensionStateDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobDefinitionsSuspensionStateDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobDefinitionsSuspensionStateDto-objects as value to a dart map
  static Map<String, List<JobDefinitionsSuspensionStateDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobDefinitionsSuspensionStateDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobDefinitionsSuspensionStateDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

