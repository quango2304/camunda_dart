//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricIncidentDto {
  /// Returns a new [HistoricIncidentDto] instance.
  HistoricIncidentDto({
    this.id,
    this.processDefinitionKey,
    this.processDefinitionId,
    this.processInstanceId,
    this.executionId,
    this.rootProcessInstanceId,
    this.createTime,
    this.endTime,
    this.removalTime,
    this.incidentType,
    this.activityId,
    this.failedActivityId,
    this.causeIncidentId,
    this.rootCauseIncidentId,
    this.configuration,
    this.historyConfiguration,
    this.incidentMessage,
    this.tenantId,
    this.jobDefinitionId,
    this.open,
    this.deleted,
    this.resolved,
    this.annotation,
  });

  /// The id of the incident.
  String? id;

  /// The key of the process definition this incident is associated with.
  String? processDefinitionKey;

  /// The id of the process definition this incident is associated with.
  String? processDefinitionId;

  /// The key of the process definition this incident is associated with.
  String? processInstanceId;

  /// The id of the execution this incident is associated with.
  String? executionId;

  /// The process instance id of the root process instance that initiated the process containing this incident.
  String? rootProcessInstanceId;

  /// The time this incident happened.  [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? createTime;

  /// The time this incident has been deleted or resolved.  [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? endTime;

  /// The time after which the incident should be removed by the History Cleanup job. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? removalTime;

  /// The type of incident, for example: `failedJobs` will be returned in case of an incident which identified a failed job during the execution of a process instance. See the [User Guide](/manual/develop/user- guide/process-engine/incidents/#incident-types) for a list of incident types.
  String? incidentType;

  /// The id of the activity this incident is associated with.
  String? activityId;

  /// The id of the activity on which the last exception occurred.
  String? failedActivityId;

  /// The id of the associated cause incident which has been triggered.
  String? causeIncidentId;

  /// The id of the associated root cause incident which has been triggered.
  String? rootCauseIncidentId;

  /// The payload of this incident.
  String? configuration;

  /// The payload of this incident at the time when it occurred.
  String? historyConfiguration;

  /// The message of this incident.
  String? incidentMessage;

  /// The id of the tenant this incident is associated with.
  String? tenantId;

  /// The job definition id the incident is associated with.
  String? jobDefinitionId;

  /// If true, this incident is open.
  bool? open;

  /// If true, this incident has been deleted.
  bool? deleted;

  /// If true, this incident has been resolved.
  bool? resolved;

  /// The annotation set to the incident.
  String? annotation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricIncidentDto &&
    other.id == id &&
    other.processDefinitionKey == processDefinitionKey &&
    other.processDefinitionId == processDefinitionId &&
    other.processInstanceId == processInstanceId &&
    other.executionId == executionId &&
    other.rootProcessInstanceId == rootProcessInstanceId &&
    other.createTime == createTime &&
    other.endTime == endTime &&
    other.removalTime == removalTime &&
    other.incidentType == incidentType &&
    other.activityId == activityId &&
    other.failedActivityId == failedActivityId &&
    other.causeIncidentId == causeIncidentId &&
    other.rootCauseIncidentId == rootCauseIncidentId &&
    other.configuration == configuration &&
    other.historyConfiguration == historyConfiguration &&
    other.incidentMessage == incidentMessage &&
    other.tenantId == tenantId &&
    other.jobDefinitionId == jobDefinitionId &&
    other.open == open &&
    other.deleted == deleted &&
    other.resolved == resolved &&
    other.annotation == annotation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (rootProcessInstanceId == null ? 0 : rootProcessInstanceId!.hashCode) +
    (createTime == null ? 0 : createTime!.hashCode) +
    (endTime == null ? 0 : endTime!.hashCode) +
    (removalTime == null ? 0 : removalTime!.hashCode) +
    (incidentType == null ? 0 : incidentType!.hashCode) +
    (activityId == null ? 0 : activityId!.hashCode) +
    (failedActivityId == null ? 0 : failedActivityId!.hashCode) +
    (causeIncidentId == null ? 0 : causeIncidentId!.hashCode) +
    (rootCauseIncidentId == null ? 0 : rootCauseIncidentId!.hashCode) +
    (configuration == null ? 0 : configuration!.hashCode) +
    (historyConfiguration == null ? 0 : historyConfiguration!.hashCode) +
    (incidentMessage == null ? 0 : incidentMessage!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (jobDefinitionId == null ? 0 : jobDefinitionId!.hashCode) +
    (open == null ? 0 : open!.hashCode) +
    (deleted == null ? 0 : deleted!.hashCode) +
    (resolved == null ? 0 : resolved!.hashCode) +
    (annotation == null ? 0 : annotation!.hashCode);

  @override
  String toString() => 'HistoricIncidentDto[id=$id, processDefinitionKey=$processDefinitionKey, processDefinitionId=$processDefinitionId, processInstanceId=$processInstanceId, executionId=$executionId, rootProcessInstanceId=$rootProcessInstanceId, createTime=$createTime, endTime=$endTime, removalTime=$removalTime, incidentType=$incidentType, activityId=$activityId, failedActivityId=$failedActivityId, causeIncidentId=$causeIncidentId, rootCauseIncidentId=$rootCauseIncidentId, configuration=$configuration, historyConfiguration=$historyConfiguration, incidentMessage=$incidentMessage, tenantId=$tenantId, jobDefinitionId=$jobDefinitionId, open=$open, deleted=$deleted, resolved=$resolved, annotation=$annotation]';

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
    if (this.rootProcessInstanceId != null) {
      json[r'rootProcessInstanceId'] = this.rootProcessInstanceId;
    } else {
      json[r'rootProcessInstanceId'] = null;
    }
    if (this.createTime != null) {
      json[r'createTime'] = this.createTime!.toUtc().toIso8601String();
    } else {
      json[r'createTime'] = null;
    }
    if (this.endTime != null) {
      json[r'endTime'] = this.endTime!.toUtc().toIso8601String();
    } else {
      json[r'endTime'] = null;
    }
    if (this.removalTime != null) {
      json[r'removalTime'] = this.removalTime!.toUtc().toIso8601String();
    } else {
      json[r'removalTime'] = null;
    }
    if (this.incidentType != null) {
      json[r'incidentType'] = this.incidentType;
    } else {
      json[r'incidentType'] = null;
    }
    if (this.activityId != null) {
      json[r'activityId'] = this.activityId;
    } else {
      json[r'activityId'] = null;
    }
    if (this.failedActivityId != null) {
      json[r'failedActivityId'] = this.failedActivityId;
    } else {
      json[r'failedActivityId'] = null;
    }
    if (this.causeIncidentId != null) {
      json[r'causeIncidentId'] = this.causeIncidentId;
    } else {
      json[r'causeIncidentId'] = null;
    }
    if (this.rootCauseIncidentId != null) {
      json[r'rootCauseIncidentId'] = this.rootCauseIncidentId;
    } else {
      json[r'rootCauseIncidentId'] = null;
    }
    if (this.configuration != null) {
      json[r'configuration'] = this.configuration;
    } else {
      json[r'configuration'] = null;
    }
    if (this.historyConfiguration != null) {
      json[r'historyConfiguration'] = this.historyConfiguration;
    } else {
      json[r'historyConfiguration'] = null;
    }
    if (this.incidentMessage != null) {
      json[r'incidentMessage'] = this.incidentMessage;
    } else {
      json[r'incidentMessage'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    if (this.jobDefinitionId != null) {
      json[r'jobDefinitionId'] = this.jobDefinitionId;
    } else {
      json[r'jobDefinitionId'] = null;
    }
    if (this.open != null) {
      json[r'open'] = this.open;
    } else {
      json[r'open'] = null;
    }
    if (this.deleted != null) {
      json[r'deleted'] = this.deleted;
    } else {
      json[r'deleted'] = null;
    }
    if (this.resolved != null) {
      json[r'resolved'] = this.resolved;
    } else {
      json[r'resolved'] = null;
    }
    if (this.annotation != null) {
      json[r'annotation'] = this.annotation;
    } else {
      json[r'annotation'] = null;
    }
    return json;
  }

  /// Returns a new [HistoricIncidentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricIncidentDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricIncidentDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricIncidentDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricIncidentDto(
        id: mapValueOfType<String>(json, r'id'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        executionId: mapValueOfType<String>(json, r'executionId'),
        rootProcessInstanceId: mapValueOfType<String>(json, r'rootProcessInstanceId'),
        createTime: mapDateTime(json, r'createTime', r''),
        endTime: mapDateTime(json, r'endTime', r''),
        removalTime: mapDateTime(json, r'removalTime', r''),
        incidentType: mapValueOfType<String>(json, r'incidentType'),
        activityId: mapValueOfType<String>(json, r'activityId'),
        failedActivityId: mapValueOfType<String>(json, r'failedActivityId'),
        causeIncidentId: mapValueOfType<String>(json, r'causeIncidentId'),
        rootCauseIncidentId: mapValueOfType<String>(json, r'rootCauseIncidentId'),
        configuration: mapValueOfType<String>(json, r'configuration'),
        historyConfiguration: mapValueOfType<String>(json, r'historyConfiguration'),
        incidentMessage: mapValueOfType<String>(json, r'incidentMessage'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        jobDefinitionId: mapValueOfType<String>(json, r'jobDefinitionId'),
        open: mapValueOfType<bool>(json, r'open'),
        deleted: mapValueOfType<bool>(json, r'deleted'),
        resolved: mapValueOfType<bool>(json, r'resolved'),
        annotation: mapValueOfType<String>(json, r'annotation'),
      );
    }
    return null;
  }

  static List<HistoricIncidentDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricIncidentDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricIncidentDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricIncidentDto> mapFromJson(dynamic json) {
    final map = <String, HistoricIncidentDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricIncidentDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricIncidentDto-objects as value to a dart map
  static Map<String, List<HistoricIncidentDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricIncidentDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricIncidentDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

