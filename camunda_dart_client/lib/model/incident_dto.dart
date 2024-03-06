//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IncidentDto {
  /// Returns a new [IncidentDto] instance.
  IncidentDto({
    this.id,
    this.processDefinitionId,
    this.processInstanceId,
    this.executionId,
    this.incidentTimestamp,
    this.incidentType,
    this.activityId,
    this.failedActivityId,
    this.causeIncidentId,
    this.rootCauseIncidentId,
    this.configuration,
    this.tenantId,
    this.incidentMessage,
    this.jobDefinitionId,
    this.annotation,
  });

  /// The id of the incident.
  String? id;

  /// The id of the process definition this incident is associated with.
  String? processDefinitionId;

  /// The id of the process instance this incident is associated with.
  String? processInstanceId;

  /// The id of the execution this incident is associated with.
  String? executionId;

  /// The time this incident happened. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? incidentTimestamp;

  /// The type of incident, for example: `failedJobs` will be returned in case of an incident which identified a failed job during the execution of a process instance. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
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

  /// The id of the tenant this incident is associated with.
  String? tenantId;

  /// The message of this incident.
  String? incidentMessage;

  /// The job definition id the incident is associated with.
  String? jobDefinitionId;

  /// The annotation set to the incident.
  String? annotation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IncidentDto &&
    other.id == id &&
    other.processDefinitionId == processDefinitionId &&
    other.processInstanceId == processInstanceId &&
    other.executionId == executionId &&
    other.incidentTimestamp == incidentTimestamp &&
    other.incidentType == incidentType &&
    other.activityId == activityId &&
    other.failedActivityId == failedActivityId &&
    other.causeIncidentId == causeIncidentId &&
    other.rootCauseIncidentId == rootCauseIncidentId &&
    other.configuration == configuration &&
    other.tenantId == tenantId &&
    other.incidentMessage == incidentMessage &&
    other.jobDefinitionId == jobDefinitionId &&
    other.annotation == annotation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (incidentTimestamp == null ? 0 : incidentTimestamp!.hashCode) +
    (incidentType == null ? 0 : incidentType!.hashCode) +
    (activityId == null ? 0 : activityId!.hashCode) +
    (failedActivityId == null ? 0 : failedActivityId!.hashCode) +
    (causeIncidentId == null ? 0 : causeIncidentId!.hashCode) +
    (rootCauseIncidentId == null ? 0 : rootCauseIncidentId!.hashCode) +
    (configuration == null ? 0 : configuration!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (incidentMessage == null ? 0 : incidentMessage!.hashCode) +
    (jobDefinitionId == null ? 0 : jobDefinitionId!.hashCode) +
    (annotation == null ? 0 : annotation!.hashCode);

  @override
  String toString() => 'IncidentDto[id=$id, processDefinitionId=$processDefinitionId, processInstanceId=$processInstanceId, executionId=$executionId, incidentTimestamp=$incidentTimestamp, incidentType=$incidentType, activityId=$activityId, failedActivityId=$failedActivityId, causeIncidentId=$causeIncidentId, rootCauseIncidentId=$rootCauseIncidentId, configuration=$configuration, tenantId=$tenantId, incidentMessage=$incidentMessage, jobDefinitionId=$jobDefinitionId, annotation=$annotation]';

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
    if (this.incidentTimestamp != null) {
      json[r'incidentTimestamp'] = this.incidentTimestamp!.toUtc().toIso8601String();
    } else {
      json[r'incidentTimestamp'] = null;
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
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    if (this.incidentMessage != null) {
      json[r'incidentMessage'] = this.incidentMessage;
    } else {
      json[r'incidentMessage'] = null;
    }
    if (this.jobDefinitionId != null) {
      json[r'jobDefinitionId'] = this.jobDefinitionId;
    } else {
      json[r'jobDefinitionId'] = null;
    }
    if (this.annotation != null) {
      json[r'annotation'] = this.annotation;
    } else {
      json[r'annotation'] = null;
    }
    return json;
  }

  /// Returns a new [IncidentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IncidentDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IncidentDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IncidentDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IncidentDto(
        id: mapValueOfType<String>(json, r'id'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        executionId: mapValueOfType<String>(json, r'executionId'),
        incidentTimestamp: mapDateTime(json, r'incidentTimestamp', r''),
        incidentType: mapValueOfType<String>(json, r'incidentType'),
        activityId: mapValueOfType<String>(json, r'activityId'),
        failedActivityId: mapValueOfType<String>(json, r'failedActivityId'),
        causeIncidentId: mapValueOfType<String>(json, r'causeIncidentId'),
        rootCauseIncidentId: mapValueOfType<String>(json, r'rootCauseIncidentId'),
        configuration: mapValueOfType<String>(json, r'configuration'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        incidentMessage: mapValueOfType<String>(json, r'incidentMessage'),
        jobDefinitionId: mapValueOfType<String>(json, r'jobDefinitionId'),
        annotation: mapValueOfType<String>(json, r'annotation'),
      );
    }
    return null;
  }

  static List<IncidentDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IncidentDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IncidentDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IncidentDto> mapFromJson(dynamic json) {
    final map = <String, IncidentDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IncidentDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IncidentDto-objects as value to a dart map
  static Map<String, List<IncidentDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IncidentDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IncidentDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

