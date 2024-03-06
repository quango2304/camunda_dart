//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricIdentityLinkLogDto {
  /// Returns a new [HistoricIdentityLinkLogDto] instance.
  HistoricIdentityLinkLogDto({
    this.id,
    this.time,
    this.type,
    this.userId,
    this.groupId,
    this.taskId,
    this.processDefinitionId,
    this.processDefinitionKey,
    this.operationType,
    this.assignerId,
    this.tenantId,
    this.removalTime,
    this.rootProcessInstanceId,
  });

  /// Id of the Historic identity link entry.
  String? id;

  /// The time when the identity link is logged.  [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? time;

  /// The type of identity link (candidate/assignee/owner).
  String? type;

  /// The id of the user/assignee.
  String? userId;

  /// The id of the group.
  String? groupId;

  /// The id of the task.
  String? taskId;

  /// The id of the process definition.
  String? processDefinitionId;

  /// The key of the process definition.
  String? processDefinitionKey;

  /// Type of operation (add/delete).
  String? operationType;

  /// The id of the assigner.
  String? assignerId;

  /// The id of the tenant.
  String? tenantId;

  /// The time after which the identity link should be removed by the History Cleanup job.  [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? removalTime;

  /// The process instance id of the root process instance that initiated the process containing this identity link.
  String? rootProcessInstanceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricIdentityLinkLogDto &&
    other.id == id &&
    other.time == time &&
    other.type == type &&
    other.userId == userId &&
    other.groupId == groupId &&
    other.taskId == taskId &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    other.operationType == operationType &&
    other.assignerId == assignerId &&
    other.tenantId == tenantId &&
    other.removalTime == removalTime &&
    other.rootProcessInstanceId == rootProcessInstanceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (time == null ? 0 : time!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (groupId == null ? 0 : groupId!.hashCode) +
    (taskId == null ? 0 : taskId!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (operationType == null ? 0 : operationType!.hashCode) +
    (assignerId == null ? 0 : assignerId!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (removalTime == null ? 0 : removalTime!.hashCode) +
    (rootProcessInstanceId == null ? 0 : rootProcessInstanceId!.hashCode);

  @override
  String toString() => 'HistoricIdentityLinkLogDto[id=$id, time=$time, type=$type, userId=$userId, groupId=$groupId, taskId=$taskId, processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, operationType=$operationType, assignerId=$assignerId, tenantId=$tenantId, removalTime=$removalTime, rootProcessInstanceId=$rootProcessInstanceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.time != null) {
      json[r'time'] = this.time!.toUtc().toIso8601String();
    } else {
      json[r'time'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.groupId != null) {
      json[r'groupId'] = this.groupId;
    } else {
      json[r'groupId'] = null;
    }
    if (this.taskId != null) {
      json[r'taskId'] = this.taskId;
    } else {
      json[r'taskId'] = null;
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
    if (this.operationType != null) {
      json[r'operationType'] = this.operationType;
    } else {
      json[r'operationType'] = null;
    }
    if (this.assignerId != null) {
      json[r'assignerId'] = this.assignerId;
    } else {
      json[r'assignerId'] = null;
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

  /// Returns a new [HistoricIdentityLinkLogDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricIdentityLinkLogDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricIdentityLinkLogDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricIdentityLinkLogDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricIdentityLinkLogDto(
        id: mapValueOfType<String>(json, r'id'),
        time: mapDateTime(json, r'time', r''),
        type: mapValueOfType<String>(json, r'type'),
        userId: mapValueOfType<String>(json, r'userId'),
        groupId: mapValueOfType<String>(json, r'groupId'),
        taskId: mapValueOfType<String>(json, r'taskId'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        operationType: mapValueOfType<String>(json, r'operationType'),
        assignerId: mapValueOfType<String>(json, r'assignerId'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        removalTime: mapDateTime(json, r'removalTime', r''),
        rootProcessInstanceId: mapValueOfType<String>(json, r'rootProcessInstanceId'),
      );
    }
    return null;
  }

  static List<HistoricIdentityLinkLogDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricIdentityLinkLogDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricIdentityLinkLogDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricIdentityLinkLogDto> mapFromJson(dynamic json) {
    final map = <String, HistoricIdentityLinkLogDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricIdentityLinkLogDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricIdentityLinkLogDto-objects as value to a dart map
  static Map<String, List<HistoricIdentityLinkLogDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricIdentityLinkLogDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricIdentityLinkLogDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

