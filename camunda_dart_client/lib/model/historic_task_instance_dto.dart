//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricTaskInstanceDto {
  /// Returns a new [HistoricTaskInstanceDto] instance.
  HistoricTaskInstanceDto({
    this.id,
    this.processDefinitionKey,
    this.processDefinitionId,
    this.processInstanceId,
    this.executionId,
    this.caseDefinitionKey,
    this.caseDefinitionId,
    this.caseInstanceId,
    this.caseExecutionId,
    this.activityInstanceId,
    this.name,
    this.description,
    this.deleteReason,
    this.owner,
    this.assignee,
    this.startTime,
    this.endTime,
    this.duration,
    this.taskDefinitionKey,
    this.priority,
    this.due,
    this.parentTaskId,
    this.followUp,
    this.tenantId,
    this.removalTime,
    this.rootProcessInstanceId,
  });

  /// The task id.
  String? id;

  /// The key of the process definition the task belongs to.
  String? processDefinitionKey;

  /// The id of the process definition the task belongs to.
  String? processDefinitionId;

  /// The id of the process instance the task belongs to.
  String? processInstanceId;

  /// The id of the execution the task belongs to.
  String? executionId;

  /// The key of the case definition the task belongs to.
  String? caseDefinitionKey;

  /// The id of the case definition the task belongs to.
  String? caseDefinitionId;

  /// The id of the case instance the task belongs to.
  String? caseInstanceId;

  /// The id of the case execution the task belongs to.
  String? caseExecutionId;

  /// The id of the activity that this object is an instance of.
  String? activityInstanceId;

  /// The task name.
  String? name;

  /// The task's description.
  String? description;

  /// The task's delete reason.
  String? deleteReason;

  /// The owner's id.
  String? owner;

  /// The assignee's id.
  String? assignee;

  /// The time the task was started. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? startTime;

  /// The time the task ended. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? endTime;

  /// The time the task took to finish (in milliseconds).
  int? duration;

  /// The task's key.
  String? taskDefinitionKey;

  /// The task's priority.
  int? priority;

  /// The task's due date. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? due;

  /// The id of the parent task, if this task is a subtask.
  String? parentTaskId;

  /// The follow-up date for the task. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? followUp;

  /// The tenant id of the task instance.
  String? tenantId;

  /// The time after which the task should be removed by the History Cleanup job. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? removalTime;

  /// The process instance id of the root process instance that initiated the process containing this task.
  String? rootProcessInstanceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricTaskInstanceDto &&
    other.id == id &&
    other.processDefinitionKey == processDefinitionKey &&
    other.processDefinitionId == processDefinitionId &&
    other.processInstanceId == processInstanceId &&
    other.executionId == executionId &&
    other.caseDefinitionKey == caseDefinitionKey &&
    other.caseDefinitionId == caseDefinitionId &&
    other.caseInstanceId == caseInstanceId &&
    other.caseExecutionId == caseExecutionId &&
    other.activityInstanceId == activityInstanceId &&
    other.name == name &&
    other.description == description &&
    other.deleteReason == deleteReason &&
    other.owner == owner &&
    other.assignee == assignee &&
    other.startTime == startTime &&
    other.endTime == endTime &&
    other.duration == duration &&
    other.taskDefinitionKey == taskDefinitionKey &&
    other.priority == priority &&
    other.due == due &&
    other.parentTaskId == parentTaskId &&
    other.followUp == followUp &&
    other.tenantId == tenantId &&
    other.removalTime == removalTime &&
    other.rootProcessInstanceId == rootProcessInstanceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (caseDefinitionKey == null ? 0 : caseDefinitionKey!.hashCode) +
    (caseDefinitionId == null ? 0 : caseDefinitionId!.hashCode) +
    (caseInstanceId == null ? 0 : caseInstanceId!.hashCode) +
    (caseExecutionId == null ? 0 : caseExecutionId!.hashCode) +
    (activityInstanceId == null ? 0 : activityInstanceId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (deleteReason == null ? 0 : deleteReason!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (assignee == null ? 0 : assignee!.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode) +
    (endTime == null ? 0 : endTime!.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (taskDefinitionKey == null ? 0 : taskDefinitionKey!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (due == null ? 0 : due!.hashCode) +
    (parentTaskId == null ? 0 : parentTaskId!.hashCode) +
    (followUp == null ? 0 : followUp!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (removalTime == null ? 0 : removalTime!.hashCode) +
    (rootProcessInstanceId == null ? 0 : rootProcessInstanceId!.hashCode);

  @override
  String toString() => 'HistoricTaskInstanceDto[id=$id, processDefinitionKey=$processDefinitionKey, processDefinitionId=$processDefinitionId, processInstanceId=$processInstanceId, executionId=$executionId, caseDefinitionKey=$caseDefinitionKey, caseDefinitionId=$caseDefinitionId, caseInstanceId=$caseInstanceId, caseExecutionId=$caseExecutionId, activityInstanceId=$activityInstanceId, name=$name, description=$description, deleteReason=$deleteReason, owner=$owner, assignee=$assignee, startTime=$startTime, endTime=$endTime, duration=$duration, taskDefinitionKey=$taskDefinitionKey, priority=$priority, due=$due, parentTaskId=$parentTaskId, followUp=$followUp, tenantId=$tenantId, removalTime=$removalTime, rootProcessInstanceId=$rootProcessInstanceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.processDefinitionKey != null) {
      json[r'processDefinitionKey'] = this.processDefinitionKey;
    } else {
      json[r'processDefinitionKey'] = null;
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
    if (this.executionId != null) {
      json[r'executionId'] = this.executionId;
    } else {
      json[r'executionId'] = null;
    }
    if (this.caseDefinitionKey != null) {
      json[r'caseDefinitionKey'] = this.caseDefinitionKey;
    } else {
      json[r'caseDefinitionKey'] = null;
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
    if (this.activityInstanceId != null) {
      json[r'activityInstanceId'] = this.activityInstanceId;
    } else {
      json[r'activityInstanceId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.deleteReason != null) {
      json[r'deleteReason'] = this.deleteReason;
    } else {
      json[r'deleteReason'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.assignee != null) {
      json[r'assignee'] = this.assignee;
    } else {
      json[r'assignee'] = null;
    }
    if (this.startTime != null) {
      json[r'startTime'] = this.startTime!.toUtc().toIso8601String();
    } else {
      json[r'startTime'] = null;
    }
    if (this.endTime != null) {
      json[r'endTime'] = this.endTime!.toUtc().toIso8601String();
    } else {
      json[r'endTime'] = null;
    }
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    if (this.taskDefinitionKey != null) {
      json[r'taskDefinitionKey'] = this.taskDefinitionKey;
    } else {
      json[r'taskDefinitionKey'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.due != null) {
      json[r'due'] = this.due!.toUtc().toIso8601String();
    } else {
      json[r'due'] = null;
    }
    if (this.parentTaskId != null) {
      json[r'parentTaskId'] = this.parentTaskId;
    } else {
      json[r'parentTaskId'] = null;
    }
    if (this.followUp != null) {
      json[r'followUp'] = this.followUp!.toUtc().toIso8601String();
    } else {
      json[r'followUp'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
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

  /// Returns a new [HistoricTaskInstanceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricTaskInstanceDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricTaskInstanceDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricTaskInstanceDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricTaskInstanceDto(
        id: mapValueOfType<String>(json, r'id'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        executionId: mapValueOfType<String>(json, r'executionId'),
        caseDefinitionKey: mapValueOfType<String>(json, r'caseDefinitionKey'),
        caseDefinitionId: mapValueOfType<String>(json, r'caseDefinitionId'),
        caseInstanceId: mapValueOfType<String>(json, r'caseInstanceId'),
        caseExecutionId: mapValueOfType<String>(json, r'caseExecutionId'),
        activityInstanceId: mapValueOfType<String>(json, r'activityInstanceId'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        deleteReason: mapValueOfType<String>(json, r'deleteReason'),
        owner: mapValueOfType<String>(json, r'owner'),
        assignee: mapValueOfType<String>(json, r'assignee'),
        startTime: mapDateTime(json, r'startTime', r''),
        endTime: mapDateTime(json, r'endTime', r''),
        duration: mapValueOfType<int>(json, r'duration'),
        taskDefinitionKey: mapValueOfType<String>(json, r'taskDefinitionKey'),
        priority: mapValueOfType<int>(json, r'priority'),
        due: mapDateTime(json, r'due', r''),
        parentTaskId: mapValueOfType<String>(json, r'parentTaskId'),
        followUp: mapDateTime(json, r'followUp', r''),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        removalTime: mapDateTime(json, r'removalTime', r''),
        rootProcessInstanceId: mapValueOfType<String>(json, r'rootProcessInstanceId'),
      );
    }
    return null;
  }

  static List<HistoricTaskInstanceDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricTaskInstanceDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricTaskInstanceDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricTaskInstanceDto> mapFromJson(dynamic json) {
    final map = <String, HistoricTaskInstanceDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricTaskInstanceDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricTaskInstanceDto-objects as value to a dart map
  static Map<String, List<HistoricTaskInstanceDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricTaskInstanceDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricTaskInstanceDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

