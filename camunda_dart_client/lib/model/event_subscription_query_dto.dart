//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EventSubscriptionQueryDto {
  /// Returns a new [EventSubscriptionQueryDto] instance.
  EventSubscriptionQueryDto({
    this.eventSubscriptionId,
    this.eventName,
    this.eventType,
    this.executionId,
    this.processInstanceId,
    this.activityId,
    this.tenantIdIn = const [],
    this.withoutTenantId,
    this.includeEventSubscriptionsWithoutTenantId,
    this.sorting = const [],
  });

  /// The id of the event subscription.
  String? eventSubscriptionId;

  /// The name of the event this subscription belongs to as defined in the process model.
  String? eventName;

  /// The type of the event subscription.
  EventSubscriptionQueryDtoEventTypeEnum? eventType;

  /// The execution that is subscribed on the referenced event.
  String? executionId;

  /// The process instance this subscription belongs to.
  String? processInstanceId;

  /// The identifier of the activity that this event subscription belongs to. This could for example be the id of a receive task.
  String? activityId;

  /// Filter by a comma-separated list of tenant ids. Only select subscriptions that belong to one of the given tenant ids.
  List<String>? tenantIdIn;

  /// Only select subscriptions which have no tenant id. Value may only be `true`, as `false` is the default behavior.
  bool? withoutTenantId;

  /// Select event subscriptions which have no tenant id. Can be used in combination with tenantIdIn parameter. Value may only be `true`, as `false` is the default behavior.
  bool? includeEventSubscriptionsWithoutTenantId;

  /// Apply sorting of the result
  List<EventSubscriptionQueryDtoSortingInner>? sorting;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EventSubscriptionQueryDto &&
    other.eventSubscriptionId == eventSubscriptionId &&
    other.eventName == eventName &&
    other.eventType == eventType &&
    other.executionId == executionId &&
    other.processInstanceId == processInstanceId &&
    other.activityId == activityId &&
    _deepEquality.equals(other.tenantIdIn, tenantIdIn) &&
    other.withoutTenantId == withoutTenantId &&
    other.includeEventSubscriptionsWithoutTenantId == includeEventSubscriptionsWithoutTenantId &&
    _deepEquality.equals(other.sorting, sorting);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (eventSubscriptionId == null ? 0 : eventSubscriptionId!.hashCode) +
    (eventName == null ? 0 : eventName!.hashCode) +
    (eventType == null ? 0 : eventType!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (activityId == null ? 0 : activityId!.hashCode) +
    (tenantIdIn == null ? 0 : tenantIdIn!.hashCode) +
    (withoutTenantId == null ? 0 : withoutTenantId!.hashCode) +
    (includeEventSubscriptionsWithoutTenantId == null ? 0 : includeEventSubscriptionsWithoutTenantId!.hashCode) +
    (sorting == null ? 0 : sorting!.hashCode);

  @override
  String toString() => 'EventSubscriptionQueryDto[eventSubscriptionId=$eventSubscriptionId, eventName=$eventName, eventType=$eventType, executionId=$executionId, processInstanceId=$processInstanceId, activityId=$activityId, tenantIdIn=$tenantIdIn, withoutTenantId=$withoutTenantId, includeEventSubscriptionsWithoutTenantId=$includeEventSubscriptionsWithoutTenantId, sorting=$sorting]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.eventSubscriptionId != null) {
      json[r'eventSubscriptionId'] = this.eventSubscriptionId;
    } else {
      json[r'eventSubscriptionId'] = null;
    }
    if (this.eventName != null) {
      json[r'eventName'] = this.eventName;
    } else {
      json[r'eventName'] = null;
    }
    if (this.eventType != null) {
      json[r'eventType'] = this.eventType;
    } else {
      json[r'eventType'] = null;
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
    if (this.includeEventSubscriptionsWithoutTenantId != null) {
      json[r'includeEventSubscriptionsWithoutTenantId'] = this.includeEventSubscriptionsWithoutTenantId;
    } else {
      json[r'includeEventSubscriptionsWithoutTenantId'] = null;
    }
    if (this.sorting != null) {
      json[r'sorting'] = this.sorting;
    } else {
      json[r'sorting'] = null;
    }
    return json;
  }

  /// Returns a new [EventSubscriptionQueryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EventSubscriptionQueryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EventSubscriptionQueryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EventSubscriptionQueryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EventSubscriptionQueryDto(
        eventSubscriptionId: mapValueOfType<String>(json, r'eventSubscriptionId'),
        eventName: mapValueOfType<String>(json, r'eventName'),
        eventType: EventSubscriptionQueryDtoEventTypeEnum.fromJson(json[r'eventType']),
        executionId: mapValueOfType<String>(json, r'executionId'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        activityId: mapValueOfType<String>(json, r'activityId'),
        tenantIdIn: json[r'tenantIdIn'] is Iterable
            ? (json[r'tenantIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        withoutTenantId: mapValueOfType<bool>(json, r'withoutTenantId'),
        includeEventSubscriptionsWithoutTenantId: mapValueOfType<bool>(json, r'includeEventSubscriptionsWithoutTenantId'),
        sorting: EventSubscriptionQueryDtoSortingInner.listFromJson(json[r'sorting']),
      );
    }
    return null;
  }

  static List<EventSubscriptionQueryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EventSubscriptionQueryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EventSubscriptionQueryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EventSubscriptionQueryDto> mapFromJson(dynamic json) {
    final map = <String, EventSubscriptionQueryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EventSubscriptionQueryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EventSubscriptionQueryDto-objects as value to a dart map
  static Map<String, List<EventSubscriptionQueryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EventSubscriptionQueryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EventSubscriptionQueryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// The type of the event subscription.
class EventSubscriptionQueryDtoEventTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const EventSubscriptionQueryDtoEventTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const message = EventSubscriptionQueryDtoEventTypeEnum._(r'message');
  static const signal = EventSubscriptionQueryDtoEventTypeEnum._(r'signal');
  static const compensate = EventSubscriptionQueryDtoEventTypeEnum._(r'compensate');
  static const conditional = EventSubscriptionQueryDtoEventTypeEnum._(r'conditional');

  /// List of all possible values in this [enum][EventSubscriptionQueryDtoEventTypeEnum].
  static const values = <EventSubscriptionQueryDtoEventTypeEnum>[
    message,
    signal,
    compensate,
    conditional,
  ];

  static EventSubscriptionQueryDtoEventTypeEnum? fromJson(dynamic value) => EventSubscriptionQueryDtoEventTypeEnumTypeTransformer().decode(value);

  static List<EventSubscriptionQueryDtoEventTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EventSubscriptionQueryDtoEventTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EventSubscriptionQueryDtoEventTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EventSubscriptionQueryDtoEventTypeEnum] to String,
/// and [decode] dynamic data back to [EventSubscriptionQueryDtoEventTypeEnum].
class EventSubscriptionQueryDtoEventTypeEnumTypeTransformer {
  factory EventSubscriptionQueryDtoEventTypeEnumTypeTransformer() => _instance ??= const EventSubscriptionQueryDtoEventTypeEnumTypeTransformer._();

  const EventSubscriptionQueryDtoEventTypeEnumTypeTransformer._();

  String encode(EventSubscriptionQueryDtoEventTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EventSubscriptionQueryDtoEventTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EventSubscriptionQueryDtoEventTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'message': return EventSubscriptionQueryDtoEventTypeEnum.message;
        case r'signal': return EventSubscriptionQueryDtoEventTypeEnum.signal;
        case r'compensate': return EventSubscriptionQueryDtoEventTypeEnum.compensate;
        case r'conditional': return EventSubscriptionQueryDtoEventTypeEnum.conditional;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EventSubscriptionQueryDtoEventTypeEnumTypeTransformer] instance.
  static EventSubscriptionQueryDtoEventTypeEnumTypeTransformer? _instance;
}


