//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricActivityInstanceDto {
  /// Returns a new [HistoricActivityInstanceDto] instance.
  HistoricActivityInstanceDto({
    this.id,
    this.parentActivityInstanceId,
    this.activityId,
    this.activityName,
    this.activityType,
    this.processDefinitionKey,
    this.processDefinitionId,
    this.processInstanceId,
    this.executionId,
    this.taskId,
    this.assignee,
    this.calledProcessInstanceId,
    this.calledCaseInstanceId,
    this.startTime,
    this.endTime,
    this.durationInMillis,
    this.canceled,
    this.completeScope,
    this.tenantId,
    this.removalTime,
    this.rootProcessInstanceId,
  });

  /// The id of the activity instance.
  String? id;

  /// The id of the parent activity instance, for example a sub process instance.
  String? parentActivityInstanceId;

  /// The id of the activity that this object is an instance of.
  String? activityId;

  /// The name of the activity that this object is an instance of.
  String? activityName;

  /// The type of the activity that this object is an instance of.
  String? activityType;

  /// The key of the process definition that this activity instance belongs to.
  String? processDefinitionKey;

  /// The id of the process definition that this activity instance belongs to.
  String? processDefinitionId;

  /// The id of the process instance that this activity instance belongs to.
  String? processInstanceId;

  /// The id of the execution that executed this activity instance.
  String? executionId;

  /// The id of the task that is associated to this activity instance. Is only set if the activity is a user task.
  String? taskId;

  /// The assignee of the task that is associated to this activity instance. Is only set if the activity is a user task.
  String? assignee;

  /// The id of the called process instance. Is only set if the activity is a call activity and the called instance a process instance.
  String? calledProcessInstanceId;

  /// The id of the called case instance. Is only set if the activity is a call activity and the called instance a case instance.
  String? calledCaseInstanceId;

  /// The time the instance was started. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? startTime;

  /// The time the instance ended. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? endTime;

  /// The time the instance took to finish (in milliseconds).
  int? durationInMillis;

  /// If `true`, this activity instance is canceled.
  bool? canceled;

  /// If `true`, this activity instance did complete a BPMN 2.0 scope.
  bool? completeScope;

  /// The tenant id of the activity instance.
  String? tenantId;

  /// The time after which the activity instance should be removed by the History Cleanup job. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? removalTime;

  /// The process instance id of the root process instance that initiated the process containing this activity instance.
  String? rootProcessInstanceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricActivityInstanceDto &&
    other.id == id &&
    other.parentActivityInstanceId == parentActivityInstanceId &&
    other.activityId == activityId &&
    other.activityName == activityName &&
    other.activityType == activityType &&
    other.processDefinitionKey == processDefinitionKey &&
    other.processDefinitionId == processDefinitionId &&
    other.processInstanceId == processInstanceId &&
    other.executionId == executionId &&
    other.taskId == taskId &&
    other.assignee == assignee &&
    other.calledProcessInstanceId == calledProcessInstanceId &&
    other.calledCaseInstanceId == calledCaseInstanceId &&
    other.startTime == startTime &&
    other.endTime == endTime &&
    other.durationInMillis == durationInMillis &&
    other.canceled == canceled &&
    other.completeScope == completeScope &&
    other.tenantId == tenantId &&
    other.removalTime == removalTime &&
    other.rootProcessInstanceId == rootProcessInstanceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (parentActivityInstanceId == null ? 0 : parentActivityInstanceId!.hashCode) +
    (activityId == null ? 0 : activityId!.hashCode) +
    (activityName == null ? 0 : activityName!.hashCode) +
    (activityType == null ? 0 : activityType!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (taskId == null ? 0 : taskId!.hashCode) +
    (assignee == null ? 0 : assignee!.hashCode) +
    (calledProcessInstanceId == null ? 0 : calledProcessInstanceId!.hashCode) +
    (calledCaseInstanceId == null ? 0 : calledCaseInstanceId!.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode) +
    (endTime == null ? 0 : endTime!.hashCode) +
    (durationInMillis == null ? 0 : durationInMillis!.hashCode) +
    (canceled == null ? 0 : canceled!.hashCode) +
    (completeScope == null ? 0 : completeScope!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (removalTime == null ? 0 : removalTime!.hashCode) +
    (rootProcessInstanceId == null ? 0 : rootProcessInstanceId!.hashCode);

  @override
  String toString() => 'HistoricActivityInstanceDto[id=$id, parentActivityInstanceId=$parentActivityInstanceId, activityId=$activityId, activityName=$activityName, activityType=$activityType, processDefinitionKey=$processDefinitionKey, processDefinitionId=$processDefinitionId, processInstanceId=$processInstanceId, executionId=$executionId, taskId=$taskId, assignee=$assignee, calledProcessInstanceId=$calledProcessInstanceId, calledCaseInstanceId=$calledCaseInstanceId, startTime=$startTime, endTime=$endTime, durationInMillis=$durationInMillis, canceled=$canceled, completeScope=$completeScope, tenantId=$tenantId, removalTime=$removalTime, rootProcessInstanceId=$rootProcessInstanceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.parentActivityInstanceId != null) {
      json[r'parentActivityInstanceId'] = this.parentActivityInstanceId;
    } else {
      json[r'parentActivityInstanceId'] = null;
    }
    if (this.activityId != null) {
      json[r'activityId'] = this.activityId;
    } else {
      json[r'activityId'] = null;
    }
    if (this.activityName != null) {
      json[r'activityName'] = this.activityName;
    } else {
      json[r'activityName'] = null;
    }
    if (this.activityType != null) {
      json[r'activityType'] = this.activityType;
    } else {
      json[r'activityType'] = null;
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
    if (this.taskId != null) {
      json[r'taskId'] = this.taskId;
    } else {
      json[r'taskId'] = null;
    }
    if (this.assignee != null) {
      json[r'assignee'] = this.assignee;
    } else {
      json[r'assignee'] = null;
    }
    if (this.calledProcessInstanceId != null) {
      json[r'calledProcessInstanceId'] = this.calledProcessInstanceId;
    } else {
      json[r'calledProcessInstanceId'] = null;
    }
    if (this.calledCaseInstanceId != null) {
      json[r'calledCaseInstanceId'] = this.calledCaseInstanceId;
    } else {
      json[r'calledCaseInstanceId'] = null;
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
    if (this.durationInMillis != null) {
      json[r'durationInMillis'] = this.durationInMillis;
    } else {
      json[r'durationInMillis'] = null;
    }
    if (this.canceled != null) {
      json[r'canceled'] = this.canceled;
    } else {
      json[r'canceled'] = null;
    }
    if (this.completeScope != null) {
      json[r'completeScope'] = this.completeScope;
    } else {
      json[r'completeScope'] = null;
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

  /// Returns a new [HistoricActivityInstanceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricActivityInstanceDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricActivityInstanceDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricActivityInstanceDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricActivityInstanceDto(
        id: mapValueOfType<String>(json, r'id'),
        parentActivityInstanceId: mapValueOfType<String>(json, r'parentActivityInstanceId'),
        activityId: mapValueOfType<String>(json, r'activityId'),
        activityName: mapValueOfType<String>(json, r'activityName'),
        activityType: mapValueOfType<String>(json, r'activityType'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        executionId: mapValueOfType<String>(json, r'executionId'),
        taskId: mapValueOfType<String>(json, r'taskId'),
        assignee: mapValueOfType<String>(json, r'assignee'),
        calledProcessInstanceId: mapValueOfType<String>(json, r'calledProcessInstanceId'),
        calledCaseInstanceId: mapValueOfType<String>(json, r'calledCaseInstanceId'),
        startTime: mapDateTime(json, r'startTime', r''),
        endTime: mapDateTime(json, r'endTime', r''),
        durationInMillis: mapValueOfType<int>(json, r'durationInMillis'),
        canceled: mapValueOfType<bool>(json, r'canceled'),
        completeScope: mapValueOfType<bool>(json, r'completeScope'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        removalTime: mapDateTime(json, r'removalTime', r''),
        rootProcessInstanceId: mapValueOfType<String>(json, r'rootProcessInstanceId'),
      );
    }
    return null;
  }

  static List<HistoricActivityInstanceDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricActivityInstanceDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricActivityInstanceDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricActivityInstanceDto> mapFromJson(dynamic json) {
    final map = <String, HistoricActivityInstanceDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricActivityInstanceDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricActivityInstanceDto-objects as value to a dart map
  static Map<String, List<HistoricActivityInstanceDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricActivityInstanceDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricActivityInstanceDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

