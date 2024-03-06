//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricJobLogDto {
  /// Returns a new [HistoricJobLogDto] instance.
  HistoricJobLogDto({
    this.id,
    this.timestamp,
    this.removalTime,
    this.jobId,
    this.jobDueDate,
    this.jobRetries,
    this.jobPriority,
    this.jobExceptionMessage,
    this.failedActivityId,
    this.jobDefinitionId,
    this.jobDefinitionType,
    this.jobDefinitionConfiguration,
    this.activityId,
    this.executionId,
    this.processInstanceId,
    this.processDefinitionId,
    this.processDefinitionKey,
    this.deploymentId,
    this.rootProcessInstanceId,
    this.tenantId,
    this.hostname,
    this.creationLog,
    this.failureLog,
    this.successLog,
    this.deletionLog,
  });

  /// The id of the log entry.
  String? id;

  /// The time when the log entry has been written.
  DateTime? timestamp;

  /// The time after which the log entry should be removed by the History Cleanup job. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. For further info see the [docs](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/)
  DateTime? removalTime;

  /// The id of the associated job.
  String? jobId;

  /// The date on which the associated job is supposed to be processed.
  DateTime? jobDueDate;

  /// The number of retries the associated job has left.
  int? jobRetries;

  /// The execution priority the job had when the log entry was created.
  int? jobPriority;

  /// The message of the exception that occurred by executing the associated job.
  String? jobExceptionMessage;

  /// The id of the activity on which the last exception occurred by executing the associated job.
  String? failedActivityId;

  /// The id of the job definition on which the associated job was created.
  String? jobDefinitionId;

  /// The job definition type of the associated job. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job definition types.
  String? jobDefinitionType;

  /// The job definition configuration type of the associated job.
  String? jobDefinitionConfiguration;

  /// The id of the activity on which the associated job was created.
  String? activityId;

  /// The execution id on which the associated job was created.
  String? executionId;

  /// The id of the process instance on which the associated job was created.
  String? processInstanceId;

  /// The id of the process definition which the associated job belongs to.
  String? processDefinitionId;

  /// The key of the process definition which the associated job belongs to.
  String? processDefinitionKey;

  /// The id of the deployment which the associated job belongs to.
  String? deploymentId;

  /// The process instance id of the root process instance that initiated the process which the associated job belongs to.
  String? rootProcessInstanceId;

  /// The id of the tenant that this historic job log entry belongs to.
  String? tenantId;

  ///  The name of the host of the Process Engine where the job of this historic job log entry was executed.
  String? hostname;

  /// A flag indicating whether this log represents the creation of the associated job.
  bool? creationLog;

  /// A flag indicating whether this log represents the failed execution of the associated job.
  bool? failureLog;

  /// A flag indicating whether this log represents the successful execution of the associated job.
  bool? successLog;

  /// A flag indicating whether this log represents the deletion of the associated job.
  bool? deletionLog;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricJobLogDto &&
    other.id == id &&
    other.timestamp == timestamp &&
    other.removalTime == removalTime &&
    other.jobId == jobId &&
    other.jobDueDate == jobDueDate &&
    other.jobRetries == jobRetries &&
    other.jobPriority == jobPriority &&
    other.jobExceptionMessage == jobExceptionMessage &&
    other.failedActivityId == failedActivityId &&
    other.jobDefinitionId == jobDefinitionId &&
    other.jobDefinitionType == jobDefinitionType &&
    other.jobDefinitionConfiguration == jobDefinitionConfiguration &&
    other.activityId == activityId &&
    other.executionId == executionId &&
    other.processInstanceId == processInstanceId &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    other.deploymentId == deploymentId &&
    other.rootProcessInstanceId == rootProcessInstanceId &&
    other.tenantId == tenantId &&
    other.hostname == hostname &&
    other.creationLog == creationLog &&
    other.failureLog == failureLog &&
    other.successLog == successLog &&
    other.deletionLog == deletionLog;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (removalTime == null ? 0 : removalTime!.hashCode) +
    (jobId == null ? 0 : jobId!.hashCode) +
    (jobDueDate == null ? 0 : jobDueDate!.hashCode) +
    (jobRetries == null ? 0 : jobRetries!.hashCode) +
    (jobPriority == null ? 0 : jobPriority!.hashCode) +
    (jobExceptionMessage == null ? 0 : jobExceptionMessage!.hashCode) +
    (failedActivityId == null ? 0 : failedActivityId!.hashCode) +
    (jobDefinitionId == null ? 0 : jobDefinitionId!.hashCode) +
    (jobDefinitionType == null ? 0 : jobDefinitionType!.hashCode) +
    (jobDefinitionConfiguration == null ? 0 : jobDefinitionConfiguration!.hashCode) +
    (activityId == null ? 0 : activityId!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (deploymentId == null ? 0 : deploymentId!.hashCode) +
    (rootProcessInstanceId == null ? 0 : rootProcessInstanceId!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (hostname == null ? 0 : hostname!.hashCode) +
    (creationLog == null ? 0 : creationLog!.hashCode) +
    (failureLog == null ? 0 : failureLog!.hashCode) +
    (successLog == null ? 0 : successLog!.hashCode) +
    (deletionLog == null ? 0 : deletionLog!.hashCode);

  @override
  String toString() => 'HistoricJobLogDto[id=$id, timestamp=$timestamp, removalTime=$removalTime, jobId=$jobId, jobDueDate=$jobDueDate, jobRetries=$jobRetries, jobPriority=$jobPriority, jobExceptionMessage=$jobExceptionMessage, failedActivityId=$failedActivityId, jobDefinitionId=$jobDefinitionId, jobDefinitionType=$jobDefinitionType, jobDefinitionConfiguration=$jobDefinitionConfiguration, activityId=$activityId, executionId=$executionId, processInstanceId=$processInstanceId, processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, deploymentId=$deploymentId, rootProcessInstanceId=$rootProcessInstanceId, tenantId=$tenantId, hostname=$hostname, creationLog=$creationLog, failureLog=$failureLog, successLog=$successLog, deletionLog=$deletionLog]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
    }
    if (this.removalTime != null) {
      json[r'removalTime'] = this.removalTime!.toUtc().toIso8601String();
    } else {
      json[r'removalTime'] = null;
    }
    if (this.jobId != null) {
      json[r'jobId'] = this.jobId;
    } else {
      json[r'jobId'] = null;
    }
    if (this.jobDueDate != null) {
      json[r'jobDueDate'] = this.jobDueDate!.toUtc().toIso8601String();
    } else {
      json[r'jobDueDate'] = null;
    }
    if (this.jobRetries != null) {
      json[r'jobRetries'] = this.jobRetries;
    } else {
      json[r'jobRetries'] = null;
    }
    if (this.jobPriority != null) {
      json[r'jobPriority'] = this.jobPriority;
    } else {
      json[r'jobPriority'] = null;
    }
    if (this.jobExceptionMessage != null) {
      json[r'jobExceptionMessage'] = this.jobExceptionMessage;
    } else {
      json[r'jobExceptionMessage'] = null;
    }
    if (this.failedActivityId != null) {
      json[r'failedActivityId'] = this.failedActivityId;
    } else {
      json[r'failedActivityId'] = null;
    }
    if (this.jobDefinitionId != null) {
      json[r'jobDefinitionId'] = this.jobDefinitionId;
    } else {
      json[r'jobDefinitionId'] = null;
    }
    if (this.jobDefinitionType != null) {
      json[r'jobDefinitionType'] = this.jobDefinitionType;
    } else {
      json[r'jobDefinitionType'] = null;
    }
    if (this.jobDefinitionConfiguration != null) {
      json[r'jobDefinitionConfiguration'] = this.jobDefinitionConfiguration;
    } else {
      json[r'jobDefinitionConfiguration'] = null;
    }
    if (this.activityId != null) {
      json[r'activityId'] = this.activityId;
    } else {
      json[r'activityId'] = null;
    }
    if (this.executionId != null) {
      json[r'executionId'] = this.executionId;
    } else {
      json[r'executionId'] = null;
    }
    if (this.processInstanceId != null) {
      json[r'processInstanceId'] = this.processInstanceId;
    } else {
      json[r'processInstanceId'] = null;
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
    if (this.deploymentId != null) {
      json[r'deploymentId'] = this.deploymentId;
    } else {
      json[r'deploymentId'] = null;
    }
    if (this.rootProcessInstanceId != null) {
      json[r'rootProcessInstanceId'] = this.rootProcessInstanceId;
    } else {
      json[r'rootProcessInstanceId'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    if (this.hostname != null) {
      json[r'hostname'] = this.hostname;
    } else {
      json[r'hostname'] = null;
    }
    if (this.creationLog != null) {
      json[r'creationLog'] = this.creationLog;
    } else {
      json[r'creationLog'] = null;
    }
    if (this.failureLog != null) {
      json[r'failureLog'] = this.failureLog;
    } else {
      json[r'failureLog'] = null;
    }
    if (this.successLog != null) {
      json[r'successLog'] = this.successLog;
    } else {
      json[r'successLog'] = null;
    }
    if (this.deletionLog != null) {
      json[r'deletionLog'] = this.deletionLog;
    } else {
      json[r'deletionLog'] = null;
    }
    return json;
  }

  /// Returns a new [HistoricJobLogDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricJobLogDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricJobLogDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricJobLogDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricJobLogDto(
        id: mapValueOfType<String>(json, r'id'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        removalTime: mapDateTime(json, r'removalTime', r''),
        jobId: mapValueOfType<String>(json, r'jobId'),
        jobDueDate: mapDateTime(json, r'jobDueDate', r''),
        jobRetries: mapValueOfType<int>(json, r'jobRetries'),
        jobPriority: mapValueOfType<int>(json, r'jobPriority'),
        jobExceptionMessage: mapValueOfType<String>(json, r'jobExceptionMessage'),
        failedActivityId: mapValueOfType<String>(json, r'failedActivityId'),
        jobDefinitionId: mapValueOfType<String>(json, r'jobDefinitionId'),
        jobDefinitionType: mapValueOfType<String>(json, r'jobDefinitionType'),
        jobDefinitionConfiguration: mapValueOfType<String>(json, r'jobDefinitionConfiguration'),
        activityId: mapValueOfType<String>(json, r'activityId'),
        executionId: mapValueOfType<String>(json, r'executionId'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        deploymentId: mapValueOfType<String>(json, r'deploymentId'),
        rootProcessInstanceId: mapValueOfType<String>(json, r'rootProcessInstanceId'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        hostname: mapValueOfType<String>(json, r'hostname'),
        creationLog: mapValueOfType<bool>(json, r'creationLog'),
        failureLog: mapValueOfType<bool>(json, r'failureLog'),
        successLog: mapValueOfType<bool>(json, r'successLog'),
        deletionLog: mapValueOfType<bool>(json, r'deletionLog'),
      );
    }
    return null;
  }

  static List<HistoricJobLogDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricJobLogDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricJobLogDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricJobLogDto> mapFromJson(dynamic json) {
    final map = <String, HistoricJobLogDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricJobLogDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricJobLogDto-objects as value to a dart map
  static Map<String, List<HistoricJobLogDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricJobLogDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricJobLogDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

