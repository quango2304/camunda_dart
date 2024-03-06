//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JobDefinitionDto {
  /// Returns a new [JobDefinitionDto] instance.
  JobDefinitionDto({
    this.id,
    this.processDefinitionId,
    this.processDefinitionKey,
    this.activityId,
    this.jobType,
    this.jobConfiguration,
    this.overridingJobPriority,
    this.suspended,
    this.tenantId,
    this.deploymentId,
  });

  /// The id of the job definition.
  String? id;

  /// The id of the process definition this job definition is associated with.
  String? processDefinitionId;

  /// The key of the process definition this job definition is associated with.
  String? processDefinitionKey;

  /// The id of the activity this job definition is associated with.
  String? activityId;

  /// The type of the job which is running for this job definition. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job types.
  String? jobType;

  /// The configuration of a job definition provides details about the jobs which will be created. For example: for timer jobs it is the timer configuration.
  String? jobConfiguration;

  /// The execution priority defined for jobs that are created based on this definition. May be `null` when the priority has not been overridden on the job definition level.
  int? overridingJobPriority;

  /// Indicates whether this job definition is suspended or not.
  bool? suspended;

  /// The id of the tenant this job definition is associated with.
  String? tenantId;

  /// The id of the deployment this job definition is related to. In a deployment-aware setup, this leads to all jobs of the same definition being executed on the same node.
  String? deploymentId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobDefinitionDto &&
    other.id == id &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    other.activityId == activityId &&
    other.jobType == jobType &&
    other.jobConfiguration == jobConfiguration &&
    other.overridingJobPriority == overridingJobPriority &&
    other.suspended == suspended &&
    other.tenantId == tenantId &&
    other.deploymentId == deploymentId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (activityId == null ? 0 : activityId!.hashCode) +
    (jobType == null ? 0 : jobType!.hashCode) +
    (jobConfiguration == null ? 0 : jobConfiguration!.hashCode) +
    (overridingJobPriority == null ? 0 : overridingJobPriority!.hashCode) +
    (suspended == null ? 0 : suspended!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (deploymentId == null ? 0 : deploymentId!.hashCode);

  @override
  String toString() => 'JobDefinitionDto[id=$id, processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, activityId=$activityId, jobType=$jobType, jobConfiguration=$jobConfiguration, overridingJobPriority=$overridingJobPriority, suspended=$suspended, tenantId=$tenantId, deploymentId=$deploymentId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
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
    if (this.activityId != null) {
      json[r'activityId'] = this.activityId;
    } else {
      json[r'activityId'] = null;
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
    if (this.overridingJobPriority != null) {
      json[r'overridingJobPriority'] = this.overridingJobPriority;
    } else {
      json[r'overridingJobPriority'] = null;
    }
    if (this.suspended != null) {
      json[r'suspended'] = this.suspended;
    } else {
      json[r'suspended'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    if (this.deploymentId != null) {
      json[r'deploymentId'] = this.deploymentId;
    } else {
      json[r'deploymentId'] = null;
    }
    return json;
  }

  /// Returns a new [JobDefinitionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobDefinitionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobDefinitionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobDefinitionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobDefinitionDto(
        id: mapValueOfType<String>(json, r'id'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        activityId: mapValueOfType<String>(json, r'activityId'),
        jobType: mapValueOfType<String>(json, r'jobType'),
        jobConfiguration: mapValueOfType<String>(json, r'jobConfiguration'),
        overridingJobPriority: mapValueOfType<int>(json, r'overridingJobPriority'),
        suspended: mapValueOfType<bool>(json, r'suspended'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        deploymentId: mapValueOfType<String>(json, r'deploymentId'),
      );
    }
    return null;
  }

  static List<JobDefinitionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobDefinitionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobDefinitionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobDefinitionDto> mapFromJson(dynamic json) {
    final map = <String, JobDefinitionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobDefinitionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobDefinitionDto-objects as value to a dart map
  static Map<String, List<JobDefinitionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobDefinitionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobDefinitionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

