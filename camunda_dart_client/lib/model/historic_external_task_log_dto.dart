//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricExternalTaskLogDto {
  /// Returns a new [HistoricExternalTaskLogDto] instance.
  HistoricExternalTaskLogDto({
    this.id,
    this.externalTaskId,
    this.timestamp,
    this.topicName,
    this.workerId,
    this.retries,
    this.priority,
    this.errorMessage,
    this.activityId,
    this.activityInstanceId,
    this.executionId,
    this.processInstanceId,
    this.processDefinitionId,
    this.processDefinitionKey,
    this.tenantId,
    this.creationLog,
    this.failureLog,
    this.successLog,
    this.deletionLog,
    this.removalTime,
    this.rootProcessInstanceId,
  });

  /// The id of the log entry.
  String? id;

  /// The id of the external task.
  String? externalTaskId;

  /// The time when the log entry has been written.
  DateTime? timestamp;

  /// The topic name of the associated external task.
  String? topicName;

  /// The id of the worker that posessed the most recent lock.
  String? workerId;

  /// The number of retries the associated external task has left.
  int? retries;

  /// The execution priority the external task had when the log entry was created.
  int? priority;

  /// The message of the error that occurred by executing the associated external task.
  String? errorMessage;

  /// The id of the activity on which the associated external task was created.
  String? activityId;

  /// The id of the activity instance on which the associated external task was created.
  String? activityInstanceId;

  /// The execution id on which the associated external task was created.
  String? executionId;

  /// The id of the process instance on which the associated external task was created.
  String? processInstanceId;

  /// The id of the process definition which the associated external task belongs to.
  String? processDefinitionId;

  /// The key of the process definition which the associated external task belongs to.
  String? processDefinitionKey;

  /// The id of the tenant that this historic external task log entry belongs to.
  String? tenantId;

  /// A flag indicating whether this log represents the creation of the associated external task.
  bool? creationLog;

  /// A flag indicating whether this log represents the failed execution of the associated external task.
  bool? failureLog;

  /// A flag indicating whether this log represents the successful execution of the associated external task.
  bool? successLog;

  /// A flag indicating whether this log represents the deletion of the associated external task.
  bool? deletionLog;

  /// The time after which this log should be removed by the History Cleanup job. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.  For further information, please see the [documentation](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/)
  DateTime? removalTime;

  /// The process instance id of the root process instance that initiated the process containing this log.
  String? rootProcessInstanceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricExternalTaskLogDto &&
    other.id == id &&
    other.externalTaskId == externalTaskId &&
    other.timestamp == timestamp &&
    other.topicName == topicName &&
    other.workerId == workerId &&
    other.retries == retries &&
    other.priority == priority &&
    other.errorMessage == errorMessage &&
    other.activityId == activityId &&
    other.activityInstanceId == activityInstanceId &&
    other.executionId == executionId &&
    other.processInstanceId == processInstanceId &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    other.tenantId == tenantId &&
    other.creationLog == creationLog &&
    other.failureLog == failureLog &&
    other.successLog == successLog &&
    other.deletionLog == deletionLog &&
    other.removalTime == removalTime &&
    other.rootProcessInstanceId == rootProcessInstanceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (externalTaskId == null ? 0 : externalTaskId!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (topicName == null ? 0 : topicName!.hashCode) +
    (workerId == null ? 0 : workerId!.hashCode) +
    (retries == null ? 0 : retries!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (activityId == null ? 0 : activityId!.hashCode) +
    (activityInstanceId == null ? 0 : activityInstanceId!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (creationLog == null ? 0 : creationLog!.hashCode) +
    (failureLog == null ? 0 : failureLog!.hashCode) +
    (successLog == null ? 0 : successLog!.hashCode) +
    (deletionLog == null ? 0 : deletionLog!.hashCode) +
    (removalTime == null ? 0 : removalTime!.hashCode) +
    (rootProcessInstanceId == null ? 0 : rootProcessInstanceId!.hashCode);

  @override
  String toString() => 'HistoricExternalTaskLogDto[id=$id, externalTaskId=$externalTaskId, timestamp=$timestamp, topicName=$topicName, workerId=$workerId, retries=$retries, priority=$priority, errorMessage=$errorMessage, activityId=$activityId, activityInstanceId=$activityInstanceId, executionId=$executionId, processInstanceId=$processInstanceId, processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, tenantId=$tenantId, creationLog=$creationLog, failureLog=$failureLog, successLog=$successLog, deletionLog=$deletionLog, removalTime=$removalTime, rootProcessInstanceId=$rootProcessInstanceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.externalTaskId != null) {
      json[r'externalTaskId'] = this.externalTaskId;
    } else {
      json[r'externalTaskId'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
    }
    if (this.topicName != null) {
      json[r'topicName'] = this.topicName;
    } else {
      json[r'topicName'] = null;
    }
    if (this.workerId != null) {
      json[r'workerId'] = this.workerId;
    } else {
      json[r'workerId'] = null;
    }
    if (this.retries != null) {
      json[r'retries'] = this.retries;
    } else {
      json[r'retries'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    if (this.activityId != null) {
      json[r'activityId'] = this.activityId;
    } else {
      json[r'activityId'] = null;
    }
    if (this.activityInstanceId != null) {
      json[r'activityInstanceId'] = this.activityInstanceId;
    } else {
      json[r'activityInstanceId'] = null;
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
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
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
    if (this.removalTime != null) {
      json[r'removalTime'] = this.removalTime!.toUtc().toIso8601String();
    } else {
      json[r'removalTime'] = null;
    }
    if (this.rootProcessInstanceId != null) {
      json[r'rootProcessInstanceId'] = this.rootProcessInstanceId;
    } else {
      json[r'rootProcessInstanceId'] = null;
    }
    return json;
  }

  /// Returns a new [HistoricExternalTaskLogDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricExternalTaskLogDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricExternalTaskLogDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricExternalTaskLogDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricExternalTaskLogDto(
        id: mapValueOfType<String>(json, r'id'),
        externalTaskId: mapValueOfType<String>(json, r'externalTaskId'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        topicName: mapValueOfType<String>(json, r'topicName'),
        workerId: mapValueOfType<String>(json, r'workerId'),
        retries: mapValueOfType<int>(json, r'retries'),
        priority: mapValueOfType<int>(json, r'priority'),
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
        activityId: mapValueOfType<String>(json, r'activityId'),
        activityInstanceId: mapValueOfType<String>(json, r'activityInstanceId'),
        executionId: mapValueOfType<String>(json, r'executionId'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        creationLog: mapValueOfType<bool>(json, r'creationLog'),
        failureLog: mapValueOfType<bool>(json, r'failureLog'),
        successLog: mapValueOfType<bool>(json, r'successLog'),
        deletionLog: mapValueOfType<bool>(json, r'deletionLog'),
        removalTime: mapDateTime(json, r'removalTime', r''),
        rootProcessInstanceId: mapValueOfType<String>(json, r'rootProcessInstanceId'),
      );
    }
    return null;
  }

  static List<HistoricExternalTaskLogDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricExternalTaskLogDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricExternalTaskLogDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricExternalTaskLogDto> mapFromJson(dynamic json) {
    final map = <String, HistoricExternalTaskLogDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricExternalTaskLogDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricExternalTaskLogDto-objects as value to a dart map
  static Map<String, List<HistoricExternalTaskLogDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricExternalTaskLogDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricExternalTaskLogDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

