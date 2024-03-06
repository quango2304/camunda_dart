//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JobDto {
  /// Returns a new [JobDto] instance.
  JobDto({
    this.id,
    this.jobDefinitionId,
    this.dueDate,
    this.processInstanceId,
    this.executionId,
    this.processDefinitionId,
    this.processDefinitionKey,
    this.retries,
    this.exceptionMessage,
    this.failedActivityId,
    this.suspended,
    this.priority,
    this.tenantId,
    this.createTime,
  });

  /// The id of the job.
  String? id;

  /// The id of the associated job definition.
  String? jobDefinitionId;

  /// The date on which this job is supposed to be processed.
  DateTime? dueDate;

  /// The id of the process instance which execution created the job.
  String? processInstanceId;

  /// The specific execution id on which the job was created.
  String? executionId;

  /// The id of the process definition which this job belongs to.
  String? processDefinitionId;

  /// The key of the process definition which this job belongs to.
  String? processDefinitionKey;

  /// The number of retries this job has left.
  int? retries;

  /// The message of the exception that occurred, the last time the job was executed. Is null when no exception occurred.
  String? exceptionMessage;

  /// The id of the activity on which the last exception occurred, the last time the job was executed. Is null when no exception occurred.
  String? failedActivityId;

  /// A flag indicating whether the job is suspended or not.
  bool? suspended;

  /// The job's priority for execution.
  int? priority;

  /// The id of the tenant which this job belongs to.
  String? tenantId;

  /// The date on which this job has been created.
  DateTime? createTime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobDto &&
    other.id == id &&
    other.jobDefinitionId == jobDefinitionId &&
    other.dueDate == dueDate &&
    other.processInstanceId == processInstanceId &&
    other.executionId == executionId &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    other.retries == retries &&
    other.exceptionMessage == exceptionMessage &&
    other.failedActivityId == failedActivityId &&
    other.suspended == suspended &&
    other.priority == priority &&
    other.tenantId == tenantId &&
    other.createTime == createTime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (jobDefinitionId == null ? 0 : jobDefinitionId!.hashCode) +
    (dueDate == null ? 0 : dueDate!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (retries == null ? 0 : retries!.hashCode) +
    (exceptionMessage == null ? 0 : exceptionMessage!.hashCode) +
    (failedActivityId == null ? 0 : failedActivityId!.hashCode) +
    (suspended == null ? 0 : suspended!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (createTime == null ? 0 : createTime!.hashCode);

  @override
  String toString() => 'JobDto[id=$id, jobDefinitionId=$jobDefinitionId, dueDate=$dueDate, processInstanceId=$processInstanceId, executionId=$executionId, processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, retries=$retries, exceptionMessage=$exceptionMessage, failedActivityId=$failedActivityId, suspended=$suspended, priority=$priority, tenantId=$tenantId, createTime=$createTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.jobDefinitionId != null) {
      json[r'jobDefinitionId'] = this.jobDefinitionId;
    } else {
      json[r'jobDefinitionId'] = null;
    }
    if (this.dueDate != null) {
      json[r'dueDate'] = this.dueDate!.toUtc().toIso8601String();
    } else {
      json[r'dueDate'] = null;
    }
    if (this.processInstanceId != null) {
      json[r'processInstanceId'] = this.processInstanceId;
    } else {
      json[r'processInstanceId'] = null;
    }
    if (this.executionId != null) {
      json[r'executionId'] = this.executionId;
    } else {
      json[r'executionId'] = null;
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
    if (this.retries != null) {
      json[r'retries'] = this.retries;
    } else {
      json[r'retries'] = null;
    }
    if (this.exceptionMessage != null) {
      json[r'exceptionMessage'] = this.exceptionMessage;
    } else {
      json[r'exceptionMessage'] = null;
    }
    if (this.failedActivityId != null) {
      json[r'failedActivityId'] = this.failedActivityId;
    } else {
      json[r'failedActivityId'] = null;
    }
    if (this.suspended != null) {
      json[r'suspended'] = this.suspended;
    } else {
      json[r'suspended'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    if (this.createTime != null) {
      json[r'createTime'] = this.createTime!.toUtc().toIso8601String();
    } else {
      json[r'createTime'] = null;
    }
    return json;
  }

  /// Returns a new [JobDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobDto(
        id: mapValueOfType<String>(json, r'id'),
        jobDefinitionId: mapValueOfType<String>(json, r'jobDefinitionId'),
        dueDate: mapDateTime(json, r'dueDate', r''),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        executionId: mapValueOfType<String>(json, r'executionId'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        retries: mapValueOfType<int>(json, r'retries'),
        exceptionMessage: mapValueOfType<String>(json, r'exceptionMessage'),
        failedActivityId: mapValueOfType<String>(json, r'failedActivityId'),
        suspended: mapValueOfType<bool>(json, r'suspended'),
        priority: mapValueOfType<int>(json, r'priority'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        createTime: mapDateTime(json, r'createTime', r''),
      );
    }
    return null;
  }

  static List<JobDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobDto> mapFromJson(dynamic json) {
    final map = <String, JobDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobDto-objects as value to a dart map
  static Map<String, List<JobDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

