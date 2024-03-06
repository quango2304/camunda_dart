//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EventSubscriptionDto {
  /// Returns a new [EventSubscriptionDto] instance.
  EventSubscriptionDto({
    this.id,
    this.eventType,
    this.eventName,
    this.executionId,
    this.processInstanceId,
    this.activityId,
    this.createdDate,
    this.tenantId,
  });

  /// The id of the event subscription.
  String? id;

  /// The type of the event subscription.
  String? eventType;

  /// The name of the event this subscription belongs to as defined in the process model.
  String? eventName;

  /// The execution that is subscribed on the referenced event.
  String? executionId;

  /// The process instance this subscription belongs to.
  String? processInstanceId;

  /// The identifier of the activity that this event subscription belongs to. This could for example be the id of a receive task.
  String? activityId;

  /// The time this event subscription was created.
  DateTime? createdDate;

  /// The id of the tenant this event subscription belongs to. Can be `null` if the subscription belongs to no single tenant.
  String? tenantId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EventSubscriptionDto &&
    other.id == id &&
    other.eventType == eventType &&
    other.eventName == eventName &&
    other.executionId == executionId &&
    other.processInstanceId == processInstanceId &&
    other.activityId == activityId &&
    other.createdDate == createdDate &&
    other.tenantId == tenantId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (eventType == null ? 0 : eventType!.hashCode) +
    (eventName == null ? 0 : eventName!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (activityId == null ? 0 : activityId!.hashCode) +
    (createdDate == null ? 0 : createdDate!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode);

  @override
  String toString() => 'EventSubscriptionDto[id=$id, eventType=$eventType, eventName=$eventName, executionId=$executionId, processInstanceId=$processInstanceId, activityId=$activityId, createdDate=$createdDate, tenantId=$tenantId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.eventType != null) {
      json[r'eventType'] = this.eventType;
    } else {
      json[r'eventType'] = null;
    }
    if (this.eventName != null) {
      json[r'eventName'] = this.eventName;
    } else {
      json[r'eventName'] = null;
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
    if (this.activityId != null) {
      json[r'activityId'] = this.activityId;
    } else {
      json[r'activityId'] = null;
    }
    if (this.createdDate != null) {
      json[r'createdDate'] = this.createdDate!.toUtc().toIso8601String();
    } else {
      json[r'createdDate'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    return json;
  }

  /// Returns a new [EventSubscriptionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EventSubscriptionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EventSubscriptionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EventSubscriptionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EventSubscriptionDto(
        id: mapValueOfType<String>(json, r'id'),
        eventType: mapValueOfType<String>(json, r'eventType'),
        eventName: mapValueOfType<String>(json, r'eventName'),
        executionId: mapValueOfType<String>(json, r'executionId'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        activityId: mapValueOfType<String>(json, r'activityId'),
        createdDate: mapDateTime(json, r'createdDate', r''),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
      );
    }
    return null;
  }

  static List<EventSubscriptionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EventSubscriptionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EventSubscriptionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EventSubscriptionDto> mapFromJson(dynamic json) {
    final map = <String, EventSubscriptionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EventSubscriptionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EventSubscriptionDto-objects as value to a dart map
  static Map<String, List<EventSubscriptionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EventSubscriptionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EventSubscriptionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

