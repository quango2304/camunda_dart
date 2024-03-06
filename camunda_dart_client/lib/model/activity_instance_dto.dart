//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ActivityInstanceDto {
  /// Returns a new [ActivityInstanceDto] instance.
  ActivityInstanceDto({
    this.id,
    this.parentActivityInstanceId,
    this.activityId,
    this.activityName,
    this.name,
    this.activityType,
    this.processInstanceId,
    this.processDefinitionId,
    this.childActivityInstances = const [],
    this.childTransitionInstances = const [],
    this.executionIds = const [],
    this.incidentIds = const [],
    this.incidents = const [],
  });

  /// The id of the activity instance.
  String? id;

  /// The id of the parent activity instance, for example a sub process instance.
  String? parentActivityInstanceId;

  /// The id of the activity.
  String? activityId;

  /// The name of the activity
  String? activityName;

  /// The name of the activity. This property is deprecated. Please use 'activityName'.
  String? name;

  /// The type of activity (corresponds to the XML element name in the BPMN 2.0, e.g., 'userTask')
  String? activityType;

  /// The id of the process instance this activity instance is part of.
  String? processInstanceId;

  /// The id of the process definition.
  String? processDefinitionId;

  /// A list of child activity instances.
  List<ActivityInstanceDto>? childActivityInstances;

  /// A list of child transition instances. A transition instance represents an execution waiting in an asynchronous continuation.
  List<TransitionInstanceDto>? childTransitionInstances;

  /// A list of execution ids.
  List<String>? executionIds;

  /// A list of incident ids.
  List<String>? incidentIds;

  /// A list of JSON objects containing incident specific properties: * `id`: the id of the incident * `activityId`: the activity id in which the incident occurred
  List<ActivityInstanceIncidentDto>? incidents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ActivityInstanceDto &&
    other.id == id &&
    other.parentActivityInstanceId == parentActivityInstanceId &&
    other.activityId == activityId &&
    other.activityName == activityName &&
    other.name == name &&
    other.activityType == activityType &&
    other.processInstanceId == processInstanceId &&
    other.processDefinitionId == processDefinitionId &&
    _deepEquality.equals(other.childActivityInstances, childActivityInstances) &&
    _deepEquality.equals(other.childTransitionInstances, childTransitionInstances) &&
    _deepEquality.equals(other.executionIds, executionIds) &&
    _deepEquality.equals(other.incidentIds, incidentIds) &&
    _deepEquality.equals(other.incidents, incidents);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (parentActivityInstanceId == null ? 0 : parentActivityInstanceId!.hashCode) +
    (activityId == null ? 0 : activityId!.hashCode) +
    (activityName == null ? 0 : activityName!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (activityType == null ? 0 : activityType!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (childActivityInstances == null ? 0 : childActivityInstances!.hashCode) +
    (childTransitionInstances == null ? 0 : childTransitionInstances!.hashCode) +
    (executionIds == null ? 0 : executionIds!.hashCode) +
    (incidentIds == null ? 0 : incidentIds!.hashCode) +
    (incidents == null ? 0 : incidents!.hashCode);

  @override
  String toString() => 'ActivityInstanceDto[id=$id, parentActivityInstanceId=$parentActivityInstanceId, activityId=$activityId, activityName=$activityName, name=$name, activityType=$activityType, processInstanceId=$processInstanceId, processDefinitionId=$processDefinitionId, childActivityInstances=$childActivityInstances, childTransitionInstances=$childTransitionInstances, executionIds=$executionIds, incidentIds=$incidentIds, incidents=$incidents]';

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
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.activityType != null) {
      json[r'activityType'] = this.activityType;
    } else {
      json[r'activityType'] = null;
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
    if (this.childActivityInstances != null) {
      json[r'childActivityInstances'] = this.childActivityInstances;
    } else {
      json[r'childActivityInstances'] = null;
    }
    if (this.childTransitionInstances != null) {
      json[r'childTransitionInstances'] = this.childTransitionInstances;
    } else {
      json[r'childTransitionInstances'] = null;
    }
    if (this.executionIds != null) {
      json[r'executionIds'] = this.executionIds;
    } else {
      json[r'executionIds'] = null;
    }
    if (this.incidentIds != null) {
      json[r'incidentIds'] = this.incidentIds;
    } else {
      json[r'incidentIds'] = null;
    }
    if (this.incidents != null) {
      json[r'incidents'] = this.incidents;
    } else {
      json[r'incidents'] = null;
    }
    return json;
  }

  /// Returns a new [ActivityInstanceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActivityInstanceDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ActivityInstanceDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ActivityInstanceDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ActivityInstanceDto(
        id: mapValueOfType<String>(json, r'id'),
        parentActivityInstanceId: mapValueOfType<String>(json, r'parentActivityInstanceId'),
        activityId: mapValueOfType<String>(json, r'activityId'),
        activityName: mapValueOfType<String>(json, r'activityName'),
        name: mapValueOfType<String>(json, r'name'),
        activityType: mapValueOfType<String>(json, r'activityType'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        childActivityInstances: ActivityInstanceDto.listFromJson(json[r'childActivityInstances']),
        childTransitionInstances: TransitionInstanceDto.listFromJson(json[r'childTransitionInstances']),
        executionIds: json[r'executionIds'] is Iterable
            ? (json[r'executionIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        incidentIds: json[r'incidentIds'] is Iterable
            ? (json[r'incidentIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        incidents: ActivityInstanceIncidentDto.listFromJson(json[r'incidents']),
      );
    }
    return null;
  }

  static List<ActivityInstanceDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ActivityInstanceDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActivityInstanceDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ActivityInstanceDto> mapFromJson(dynamic json) {
    final map = <String, ActivityInstanceDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ActivityInstanceDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ActivityInstanceDto-objects as value to a dart map
  static Map<String, List<ActivityInstanceDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ActivityInstanceDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ActivityInstanceDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

