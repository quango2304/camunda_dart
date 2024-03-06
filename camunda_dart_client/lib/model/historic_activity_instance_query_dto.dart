//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricActivityInstanceQueryDto {
  /// Returns a new [HistoricActivityInstanceQueryDto] instance.
  HistoricActivityInstanceQueryDto({
    this.activityInstanceId,
    this.processInstanceId,
    this.processDefinitionId,
    this.executionId,
    this.activityId,
    this.activityName,
    this.activityType,
    this.taskAssignee,
    this.finished,
    this.unfinished,
    this.canceled,
    this.completeScope,
    this.startedBefore,
    this.startedAfter,
    this.finishedBefore,
    this.finishedAfter,
    this.tenantIdIn = const [],
    this.withoutTenantId,
    this.sorting = const [],
  });

  /// Filter by activity instance id.
  String? activityInstanceId;

  /// Filter by process instance id.
  String? processInstanceId;

  /// Filter by process definition id.
  String? processDefinitionId;

  /// Filter by the id of the execution that executed the activity instance.
  String? executionId;

  /// Filter by the activity id (according to BPMN 2.0 XML).
  String? activityId;

  /// Filter by the activity name (according to BPMN 2.0 XML).
  String? activityName;

  /// Filter by activity type.
  String? activityType;

  /// Only include activity instances that are user tasks and assigned to a given user.
  String? taskAssignee;

  /// Only include finished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
  bool? finished;

  /// Only include unfinished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
  bool? unfinished;

  /// Only include canceled activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
  bool? canceled;

  /// Only include activity instances which completed a scope. Value may only be `true`, as `false` behaves the same as when the property is not set.
  bool? completeScope;

  /// Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? startedBefore;

  /// Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? startedAfter;

  /// Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? finishedBefore;

  /// Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? finishedAfter;

  /// Must be a JSON array of Strings. An activity instance must have one of the given tenant ids.
  List<String>? tenantIdIn;

  /// Only include historic activity instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  bool? withoutTenantId;

  /// Apply sorting of the result
  List<HistoricActivityInstanceQueryDtoSortingInner>? sorting;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricActivityInstanceQueryDto &&
    other.activityInstanceId == activityInstanceId &&
    other.processInstanceId == processInstanceId &&
    other.processDefinitionId == processDefinitionId &&
    other.executionId == executionId &&
    other.activityId == activityId &&
    other.activityName == activityName &&
    other.activityType == activityType &&
    other.taskAssignee == taskAssignee &&
    other.finished == finished &&
    other.unfinished == unfinished &&
    other.canceled == canceled &&
    other.completeScope == completeScope &&
    other.startedBefore == startedBefore &&
    other.startedAfter == startedAfter &&
    other.finishedBefore == finishedBefore &&
    other.finishedAfter == finishedAfter &&
    _deepEquality.equals(other.tenantIdIn, tenantIdIn) &&
    other.withoutTenantId == withoutTenantId &&
    _deepEquality.equals(other.sorting, sorting);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activityInstanceId == null ? 0 : activityInstanceId!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (activityId == null ? 0 : activityId!.hashCode) +
    (activityName == null ? 0 : activityName!.hashCode) +
    (activityType == null ? 0 : activityType!.hashCode) +
    (taskAssignee == null ? 0 : taskAssignee!.hashCode) +
    (finished == null ? 0 : finished!.hashCode) +
    (unfinished == null ? 0 : unfinished!.hashCode) +
    (canceled == null ? 0 : canceled!.hashCode) +
    (completeScope == null ? 0 : completeScope!.hashCode) +
    (startedBefore == null ? 0 : startedBefore!.hashCode) +
    (startedAfter == null ? 0 : startedAfter!.hashCode) +
    (finishedBefore == null ? 0 : finishedBefore!.hashCode) +
    (finishedAfter == null ? 0 : finishedAfter!.hashCode) +
    (tenantIdIn == null ? 0 : tenantIdIn!.hashCode) +
    (withoutTenantId == null ? 0 : withoutTenantId!.hashCode) +
    (sorting == null ? 0 : sorting!.hashCode);

  @override
  String toString() => 'HistoricActivityInstanceQueryDto[activityInstanceId=$activityInstanceId, processInstanceId=$processInstanceId, processDefinitionId=$processDefinitionId, executionId=$executionId, activityId=$activityId, activityName=$activityName, activityType=$activityType, taskAssignee=$taskAssignee, finished=$finished, unfinished=$unfinished, canceled=$canceled, completeScope=$completeScope, startedBefore=$startedBefore, startedAfter=$startedAfter, finishedBefore=$finishedBefore, finishedAfter=$finishedAfter, tenantIdIn=$tenantIdIn, withoutTenantId=$withoutTenantId, sorting=$sorting]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.activityInstanceId != null) {
      json[r'activityInstanceId'] = this.activityInstanceId;
    } else {
      json[r'activityInstanceId'] = null;
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
    if (this.executionId != null) {
      json[r'executionId'] = this.executionId;
    } else {
      json[r'executionId'] = null;
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
    if (this.taskAssignee != null) {
      json[r'taskAssignee'] = this.taskAssignee;
    } else {
      json[r'taskAssignee'] = null;
    }
    if (this.finished != null) {
      json[r'finished'] = this.finished;
    } else {
      json[r'finished'] = null;
    }
    if (this.unfinished != null) {
      json[r'unfinished'] = this.unfinished;
    } else {
      json[r'unfinished'] = null;
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
    if (this.startedBefore != null) {
      json[r'startedBefore'] = this.startedBefore!.toUtc().toIso8601String();
    } else {
      json[r'startedBefore'] = null;
    }
    if (this.startedAfter != null) {
      json[r'startedAfter'] = this.startedAfter!.toUtc().toIso8601String();
    } else {
      json[r'startedAfter'] = null;
    }
    if (this.finishedBefore != null) {
      json[r'finishedBefore'] = this.finishedBefore!.toUtc().toIso8601String();
    } else {
      json[r'finishedBefore'] = null;
    }
    if (this.finishedAfter != null) {
      json[r'finishedAfter'] = this.finishedAfter!.toUtc().toIso8601String();
    } else {
      json[r'finishedAfter'] = null;
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
    if (this.sorting != null) {
      json[r'sorting'] = this.sorting;
    } else {
      json[r'sorting'] = null;
    }
    return json;
  }

  /// Returns a new [HistoricActivityInstanceQueryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricActivityInstanceQueryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricActivityInstanceQueryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricActivityInstanceQueryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricActivityInstanceQueryDto(
        activityInstanceId: mapValueOfType<String>(json, r'activityInstanceId'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        executionId: mapValueOfType<String>(json, r'executionId'),
        activityId: mapValueOfType<String>(json, r'activityId'),
        activityName: mapValueOfType<String>(json, r'activityName'),
        activityType: mapValueOfType<String>(json, r'activityType'),
        taskAssignee: mapValueOfType<String>(json, r'taskAssignee'),
        finished: mapValueOfType<bool>(json, r'finished'),
        unfinished: mapValueOfType<bool>(json, r'unfinished'),
        canceled: mapValueOfType<bool>(json, r'canceled'),
        completeScope: mapValueOfType<bool>(json, r'completeScope'),
        startedBefore: mapDateTime(json, r'startedBefore', r''),
        startedAfter: mapDateTime(json, r'startedAfter', r''),
        finishedBefore: mapDateTime(json, r'finishedBefore', r''),
        finishedAfter: mapDateTime(json, r'finishedAfter', r''),
        tenantIdIn: json[r'tenantIdIn'] is Iterable
            ? (json[r'tenantIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        withoutTenantId: mapValueOfType<bool>(json, r'withoutTenantId'),
        sorting: HistoricActivityInstanceQueryDtoSortingInner.listFromJson(json[r'sorting']),
      );
    }
    return null;
  }

  static List<HistoricActivityInstanceQueryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricActivityInstanceQueryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricActivityInstanceQueryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricActivityInstanceQueryDto> mapFromJson(dynamic json) {
    final map = <String, HistoricActivityInstanceQueryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricActivityInstanceQueryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricActivityInstanceQueryDto-objects as value to a dart map
  static Map<String, List<HistoricActivityInstanceQueryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricActivityInstanceQueryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricActivityInstanceQueryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

