//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserOperationLogEntryDto {
  /// Returns a new [UserOperationLogEntryDto] instance.
  UserOperationLogEntryDto({
    this.id,
    this.userId,
    this.timestamp,
    this.operationId,
    this.operationType,
    this.entityType,
    this.category,
    this.annotation,
    this.property,
    this.orgValue,
    this.newValue,
    this.deploymentId,
    this.processDefinitionId,
    this.processDefinitionKey,
    this.processInstanceId,
    this.executionId,
    this.caseDefinitionId,
    this.caseInstanceId,
    this.caseExecutionId,
    this.taskId,
    this.externalTaskId,
    this.batchId,
    this.jobId,
    this.jobDefinitionId,
    this.removalTime,
    this.rootProcessInstanceId,
  });

  /// The unique identifier of this log entry.
  String? id;

  /// The user who performed this operation.
  String? userId;

  /// Timestamp of this operation.
  DateTime? timestamp;

  /// The unique identifier of this operation. A composite operation that changes multiple properties has a common `operationId`.
  String? operationId;

  /// The type of this operation, e.g., `Assign`, `Claim` and so on.
  String? operationType;

  /// The type of the entity on which this operation was executed, e.g., `Task` or `Attachment`.
  String? entityType;

  /// The name of the category this operation was associated with, e.g., `TaskWorker` or `Admin`.
  String? category;

  /// An arbitrary annotation set by a user for auditing reasons.
  String? annotation;

  /// The property changed by this operation.
  String? property;

  /// The original value of the changed property.
  String? orgValue;

  /// The new value of the changed property.
  String? newValue;

  /// If not `null`, the operation is restricted to entities in relation to this deployment.
  String? deploymentId;

  /// If not `null`, the operation is restricted to entities in relation to this process definition.
  String? processDefinitionId;

  /// If not `null`, the operation is restricted to entities in relation to process definitions with this key.
  String? processDefinitionKey;

  /// If not `null`, the operation is restricted to entities in relation to this process instance.
  String? processInstanceId;

  /// If not `null`, the operation is restricted to entities in relation to this execution.
  String? executionId;

  /// If not `null`, the operation is restricted to entities in relation to this case definition.
  String? caseDefinitionId;

  /// If not `null`, the operation is restricted to entities in relation to this case instance.
  String? caseInstanceId;

  /// If not `null`, the operation is restricted to entities in relation to this case execution.
  String? caseExecutionId;

  /// If not `null`, the operation is restricted to entities in relation to this task.
  String? taskId;

  /// If not `null`, the operation is restricted to entities in relation to this external task.
  String? externalTaskId;

  /// If not `null`, the operation is restricted to entities in relation to this batch.
  String? batchId;

  /// If not `null`, the operation is restricted to entities in relation to this job.
  String? jobId;

  /// If not `null`, the operation is restricted to entities in relation to this job definition.
  String? jobDefinitionId;

  /// The time after which the entry should be removed by the History Cleanup job. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? removalTime;

  /// The process instance id of the root process instance that initiated the process containing this entry.
  String? rootProcessInstanceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserOperationLogEntryDto &&
    other.id == id &&
    other.userId == userId &&
    other.timestamp == timestamp &&
    other.operationId == operationId &&
    other.operationType == operationType &&
    other.entityType == entityType &&
    other.category == category &&
    other.annotation == annotation &&
    other.property == property &&
    other.orgValue == orgValue &&
    other.newValue == newValue &&
    other.deploymentId == deploymentId &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    other.processInstanceId == processInstanceId &&
    other.executionId == executionId &&
    other.caseDefinitionId == caseDefinitionId &&
    other.caseInstanceId == caseInstanceId &&
    other.caseExecutionId == caseExecutionId &&
    other.taskId == taskId &&
    other.externalTaskId == externalTaskId &&
    other.batchId == batchId &&
    other.jobId == jobId &&
    other.jobDefinitionId == jobDefinitionId &&
    other.removalTime == removalTime &&
    other.rootProcessInstanceId == rootProcessInstanceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (operationId == null ? 0 : operationId!.hashCode) +
    (operationType == null ? 0 : operationType!.hashCode) +
    (entityType == null ? 0 : entityType!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (annotation == null ? 0 : annotation!.hashCode) +
    (property == null ? 0 : property!.hashCode) +
    (orgValue == null ? 0 : orgValue!.hashCode) +
    (newValue == null ? 0 : newValue!.hashCode) +
    (deploymentId == null ? 0 : deploymentId!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (caseDefinitionId == null ? 0 : caseDefinitionId!.hashCode) +
    (caseInstanceId == null ? 0 : caseInstanceId!.hashCode) +
    (caseExecutionId == null ? 0 : caseExecutionId!.hashCode) +
    (taskId == null ? 0 : taskId!.hashCode) +
    (externalTaskId == null ? 0 : externalTaskId!.hashCode) +
    (batchId == null ? 0 : batchId!.hashCode) +
    (jobId == null ? 0 : jobId!.hashCode) +
    (jobDefinitionId == null ? 0 : jobDefinitionId!.hashCode) +
    (removalTime == null ? 0 : removalTime!.hashCode) +
    (rootProcessInstanceId == null ? 0 : rootProcessInstanceId!.hashCode);

  @override
  String toString() => 'UserOperationLogEntryDto[id=$id, userId=$userId, timestamp=$timestamp, operationId=$operationId, operationType=$operationType, entityType=$entityType, category=$category, annotation=$annotation, property=$property, orgValue=$orgValue, newValue=$newValue, deploymentId=$deploymentId, processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, processInstanceId=$processInstanceId, executionId=$executionId, caseDefinitionId=$caseDefinitionId, caseInstanceId=$caseInstanceId, caseExecutionId=$caseExecutionId, taskId=$taskId, externalTaskId=$externalTaskId, batchId=$batchId, jobId=$jobId, jobDefinitionId=$jobDefinitionId, removalTime=$removalTime, rootProcessInstanceId=$rootProcessInstanceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
    }
    if (this.operationId != null) {
      json[r'operationId'] = this.operationId;
    } else {
      json[r'operationId'] = null;
    }
    if (this.operationType != null) {
      json[r'operationType'] = this.operationType;
    } else {
      json[r'operationType'] = null;
    }
    if (this.entityType != null) {
      json[r'entityType'] = this.entityType;
    } else {
      json[r'entityType'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.annotation != null) {
      json[r'annotation'] = this.annotation;
    } else {
      json[r'annotation'] = null;
    }
    if (this.property != null) {
      json[r'property'] = this.property;
    } else {
      json[r'property'] = null;
    }
    if (this.orgValue != null) {
      json[r'orgValue'] = this.orgValue;
    } else {
      json[r'orgValue'] = null;
    }
    if (this.newValue != null) {
      json[r'newValue'] = this.newValue;
    } else {
      json[r'newValue'] = null;
    }
    if (this.deploymentId != null) {
      json[r'deploymentId'] = this.deploymentId;
    } else {
      json[r'deploymentId'] = null;
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
    if (this.caseDefinitionId != null) {
      json[r'caseDefinitionId'] = this.caseDefinitionId;
    } else {
      json[r'caseDefinitionId'] = null;
    }
    if (this.caseInstanceId != null) {
      json[r'caseInstanceId'] = this.caseInstanceId;
    } else {
      json[r'caseInstanceId'] = null;
    }
    if (this.caseExecutionId != null) {
      json[r'caseExecutionId'] = this.caseExecutionId;
    } else {
      json[r'caseExecutionId'] = null;
    }
    if (this.taskId != null) {
      json[r'taskId'] = this.taskId;
    } else {
      json[r'taskId'] = null;
    }
    if (this.externalTaskId != null) {
      json[r'externalTaskId'] = this.externalTaskId;
    } else {
      json[r'externalTaskId'] = null;
    }
    if (this.batchId != null) {
      json[r'batchId'] = this.batchId;
    } else {
      json[r'batchId'] = null;
    }
    if (this.jobId != null) {
      json[r'jobId'] = this.jobId;
    } else {
      json[r'jobId'] = null;
    }
    if (this.jobDefinitionId != null) {
      json[r'jobDefinitionId'] = this.jobDefinitionId;
    } else {
      json[r'jobDefinitionId'] = null;
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

  /// Returns a new [UserOperationLogEntryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserOperationLogEntryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserOperationLogEntryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserOperationLogEntryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserOperationLogEntryDto(
        id: mapValueOfType<String>(json, r'id'),
        userId: mapValueOfType<String>(json, r'userId'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        operationId: mapValueOfType<String>(json, r'operationId'),
        operationType: mapValueOfType<String>(json, r'operationType'),
        entityType: mapValueOfType<String>(json, r'entityType'),
        category: mapValueOfType<String>(json, r'category'),
        annotation: mapValueOfType<String>(json, r'annotation'),
        property: mapValueOfType<String>(json, r'property'),
        orgValue: mapValueOfType<String>(json, r'orgValue'),
        newValue: mapValueOfType<String>(json, r'newValue'),
        deploymentId: mapValueOfType<String>(json, r'deploymentId'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        executionId: mapValueOfType<String>(json, r'executionId'),
        caseDefinitionId: mapValueOfType<String>(json, r'caseDefinitionId'),
        caseInstanceId: mapValueOfType<String>(json, r'caseInstanceId'),
        caseExecutionId: mapValueOfType<String>(json, r'caseExecutionId'),
        taskId: mapValueOfType<String>(json, r'taskId'),
        externalTaskId: mapValueOfType<String>(json, r'externalTaskId'),
        batchId: mapValueOfType<String>(json, r'batchId'),
        jobId: mapValueOfType<String>(json, r'jobId'),
        jobDefinitionId: mapValueOfType<String>(json, r'jobDefinitionId'),
        removalTime: mapDateTime(json, r'removalTime', r''),
        rootProcessInstanceId: mapValueOfType<String>(json, r'rootProcessInstanceId'),
      );
    }
    return null;
  }

  static List<UserOperationLogEntryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserOperationLogEntryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserOperationLogEntryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserOperationLogEntryDto> mapFromJson(dynamic json) {
    final map = <String, UserOperationLogEntryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserOperationLogEntryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserOperationLogEntryDto-objects as value to a dart map
  static Map<String, List<UserOperationLogEntryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserOperationLogEntryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserOperationLogEntryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

