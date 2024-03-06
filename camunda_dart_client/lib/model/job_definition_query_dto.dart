//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JobDefinitionQueryDto {
  /// Returns a new [JobDefinitionQueryDto] instance.
  JobDefinitionQueryDto({
    this.jobDefinitionId,
    this.activityIdIn = const [],
    this.processDefinitionId,
    this.processDefinitionKey,
    this.jobType,
    this.jobConfiguration,
    this.active,
    this.suspended,
    this.withOverridingJobPriority,
    this.tenantIdIn = const [],
    this.withoutTenantId,
    this.includeJobDefinitionsWithoutTenantId,
    this.sorting = const [],
  });

  /// Filter by job definition id.
  String? jobDefinitionId;

  /// Only include job definitions which belong to one of the passed activity ids.
  List<String>? activityIdIn;

  /// Only include job definitions which exist for the given process definition id.
  String? processDefinitionId;

  /// Only include job definitions which exist for the given process definition key.
  String? processDefinitionKey;

  /// Only include job definitions which exist for the given job type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job types.
  String? jobType;

  /// Only include job definitions which exist for the given job configuration. For example: for timer jobs it is the timer configuration.
  String? jobConfiguration;

  /// Only include active job definitions. Value may only be `true`, as `false` is the default behavior.
  bool? active;

  /// Only include suspended job definitions. Value may only be `true`, as `false` is the default behavior.
  bool? suspended;

  /// Only include job definitions that have an overriding job priority defined. The only effective value is `true`. If set to `false`, this filter is not applied.
  bool? withOverridingJobPriority;

  /// Only include job definitions which belong to one of the passed tenant ids.
  List<String>? tenantIdIn;

  /// Only include job definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  bool? withoutTenantId;

  /// Include job definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  bool? includeJobDefinitionsWithoutTenantId;

  /// An array of criteria to sort the result by. Each element of the array is                        an object that specifies one ordering. The position in the array                        identifies the rank of an ordering, i.e., whether it is primary, secondary,                        etc. Sorting has no effect for `count` endpoints.
  List<JobDefinitionQueryDtoSortingInner>? sorting;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobDefinitionQueryDto &&
    other.jobDefinitionId == jobDefinitionId &&
    _deepEquality.equals(other.activityIdIn, activityIdIn) &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    other.jobType == jobType &&
    other.jobConfiguration == jobConfiguration &&
    other.active == active &&
    other.suspended == suspended &&
    other.withOverridingJobPriority == withOverridingJobPriority &&
    _deepEquality.equals(other.tenantIdIn, tenantIdIn) &&
    other.withoutTenantId == withoutTenantId &&
    other.includeJobDefinitionsWithoutTenantId == includeJobDefinitionsWithoutTenantId &&
    _deepEquality.equals(other.sorting, sorting);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (jobDefinitionId == null ? 0 : jobDefinitionId!.hashCode) +
    (activityIdIn == null ? 0 : activityIdIn!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (jobType == null ? 0 : jobType!.hashCode) +
    (jobConfiguration == null ? 0 : jobConfiguration!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (suspended == null ? 0 : suspended!.hashCode) +
    (withOverridingJobPriority == null ? 0 : withOverridingJobPriority!.hashCode) +
    (tenantIdIn == null ? 0 : tenantIdIn!.hashCode) +
    (withoutTenantId == null ? 0 : withoutTenantId!.hashCode) +
    (includeJobDefinitionsWithoutTenantId == null ? 0 : includeJobDefinitionsWithoutTenantId!.hashCode) +
    (sorting == null ? 0 : sorting!.hashCode);

  @override
  String toString() => 'JobDefinitionQueryDto[jobDefinitionId=$jobDefinitionId, activityIdIn=$activityIdIn, processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, jobType=$jobType, jobConfiguration=$jobConfiguration, active=$active, suspended=$suspended, withOverridingJobPriority=$withOverridingJobPriority, tenantIdIn=$tenantIdIn, withoutTenantId=$withoutTenantId, includeJobDefinitionsWithoutTenantId=$includeJobDefinitionsWithoutTenantId, sorting=$sorting]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.jobDefinitionId != null) {
      json[r'jobDefinitionId'] = this.jobDefinitionId;
    } else {
      json[r'jobDefinitionId'] = null;
    }
    if (this.activityIdIn != null) {
      json[r'activityIdIn'] = this.activityIdIn;
    } else {
      json[r'activityIdIn'] = null;
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
    if (this.jobType != null) {
      json[r'jobType'] = this.jobType;
    } else {
      json[r'jobType'] = null;
    }
    if (this.jobConfiguration != null) {
      json[r'jobConfiguration'] = this.jobConfiguration;
    } else {
      json[r'jobConfiguration'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.suspended != null) {
      json[r'suspended'] = this.suspended;
    } else {
      json[r'suspended'] = null;
    }
    if (this.withOverridingJobPriority != null) {
      json[r'withOverridingJobPriority'] = this.withOverridingJobPriority;
    } else {
      json[r'withOverridingJobPriority'] = null;
    }
    if (this.tenantIdIn != null) {
      json[r'tenantIdIn'] = this.tenantIdIn;
    } else {
      json[r'tenantIdIn'] = null;
    }
    if (this.withoutTenantId != null) {
      json[r'withoutTenantId'] = this.withoutTenantId;
    } else {
      json[r'withoutTenantId'] = null;
    }
    if (this.includeJobDefinitionsWithoutTenantId != null) {
      json[r'includeJobDefinitionsWithoutTenantId'] = this.includeJobDefinitionsWithoutTenantId;
    } else {
      json[r'includeJobDefinitionsWithoutTenantId'] = null;
    }
    if (this.sorting != null) {
      json[r'sorting'] = this.sorting;
    } else {
      json[r'sorting'] = null;
    }
    return json;
  }

  /// Returns a new [JobDefinitionQueryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobDefinitionQueryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobDefinitionQueryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobDefinitionQueryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobDefinitionQueryDto(
        jobDefinitionId: mapValueOfType<String>(json, r'jobDefinitionId'),
        activityIdIn: json[r'activityIdIn'] is Iterable
            ? (json[r'activityIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        jobType: mapValueOfType<String>(json, r'jobType'),
        jobConfiguration: mapValueOfType<String>(json, r'jobConfiguration'),
        active: mapValueOfType<bool>(json, r'active'),
        suspended: mapValueOfType<bool>(json, r'suspended'),
        withOverridingJobPriority: mapValueOfType<bool>(json, r'withOverridingJobPriority'),
        tenantIdIn: json[r'tenantIdIn'] is Iterable
            ? (json[r'tenantIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        withoutTenantId: mapValueOfType<bool>(json, r'withoutTenantId'),
        includeJobDefinitionsWithoutTenantId: mapValueOfType<bool>(json, r'includeJobDefinitionsWithoutTenantId'),
        sorting: JobDefinitionQueryDtoSortingInner.listFromJson(json[r'sorting']),
      );
    }
    return null;
  }

  static List<JobDefinitionQueryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobDefinitionQueryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobDefinitionQueryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobDefinitionQueryDto> mapFromJson(dynamic json) {
    final map = <String, JobDefinitionQueryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobDefinitionQueryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobDefinitionQueryDto-objects as value to a dart map
  static Map<String, List<JobDefinitionQueryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobDefinitionQueryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobDefinitionQueryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

