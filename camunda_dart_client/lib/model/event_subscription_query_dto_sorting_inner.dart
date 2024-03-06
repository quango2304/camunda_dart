//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EventSubscriptionQueryDtoSortingInner {
  /// Returns a new [EventSubscriptionQueryDtoSortingInner] instance.
  EventSubscriptionQueryDtoSortingInner({
    this.sortBy,
    this.sortOrder,
  });

  /// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  EventSubscriptionQueryDtoSortingInnerSortByEnum? sortBy;

  /// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
  EventSubscriptionQueryDtoSortingInnerSortOrderEnum? sortOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EventSubscriptionQueryDtoSortingInner &&
    other.sortBy == sortBy &&
    other.sortOrder == sortOrder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sortBy == null ? 0 : sortBy!.hashCode) +
    (sortOrder == null ? 0 : sortOrder!.hashCode);

  @override
  String toString() => 'EventSubscriptionQueryDtoSortingInner[sortBy=$sortBy, sortOrder=$sortOrder]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sortBy != null) {
      json[r'sortBy'] = this.sortBy;
    } else {
      json[r'sortBy'] = null;
    }
    if (this.sortOrder != null) {
      json[r'sortOrder'] = this.sortOrder;
    } else {
      json[r'sortOrder'] = null;
    }
    return json;
  }

  /// Returns a new [EventSubscriptionQueryDtoSortingInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EventSubscriptionQueryDtoSortingInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EventSubscriptionQueryDtoSortingInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EventSubscriptionQueryDtoSortingInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EventSubscriptionQueryDtoSortingInner(
        sortBy: EventSubscriptionQueryDtoSortingInnerSortByEnum.fromJson(json[r'sortBy']),
        sortOrder: EventSubscriptionQueryDtoSortingInnerSortOrderEnum.fromJson(json[r'sortOrder']),
      );
    }
    return null;
  }

  static List<EventSubscriptionQueryDtoSortingInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EventSubscriptionQueryDtoSortingInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EventSubscriptionQueryDtoSortingInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EventSubscriptionQueryDtoSortingInner> mapFromJson(dynamic json) {
    final map = <String, EventSubscriptionQueryDtoSortingInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EventSubscriptionQueryDtoSortingInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EventSubscriptionQueryDtoSortingInner-objects as value to a dart map
  static Map<String, List<EventSubscriptionQueryDtoSortingInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EventSubscriptionQueryDtoSortingInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EventSubscriptionQueryDtoSortingInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
class EventSubscriptionQueryDtoSortingInnerSortByEnum {
  /// Instantiate a new enum with the provided [value].
  const EventSubscriptionQueryDtoSortingInnerSortByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const created = EventSubscriptionQueryDtoSortingInnerSortByEnum._(r'created');
  static const tenantId = EventSubscriptionQueryDtoSortingInnerSortByEnum._(r'tenantId');

  /// List of all possible values in this [enum][EventSubscriptionQueryDtoSortingInnerSortByEnum].
  static const values = <EventSubscriptionQueryDtoSortingInnerSortByEnum>[
    created,
    tenantId,
  ];

  static EventSubscriptionQueryDtoSortingInnerSortByEnum? fromJson(dynamic value) => EventSubscriptionQueryDtoSortingInnerSortByEnumTypeTransformer().decode(value);

  static List<EventSubscriptionQueryDtoSortingInnerSortByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EventSubscriptionQueryDtoSortingInnerSortByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EventSubscriptionQueryDtoSortingInnerSortByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EventSubscriptionQueryDtoSortingInnerSortByEnum] to String,
/// and [decode] dynamic data back to [EventSubscriptionQueryDtoSortingInnerSortByEnum].
class EventSubscriptionQueryDtoSortingInnerSortByEnumTypeTransformer {
  factory EventSubscriptionQueryDtoSortingInnerSortByEnumTypeTransformer() => _instance ??= const EventSubscriptionQueryDtoSortingInnerSortByEnumTypeTransformer._();

  const EventSubscriptionQueryDtoSortingInnerSortByEnumTypeTransformer._();

  String encode(EventSubscriptionQueryDtoSortingInnerSortByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EventSubscriptionQueryDtoSortingInnerSortByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EventSubscriptionQueryDtoSortingInnerSortByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'created': return EventSubscriptionQueryDtoSortingInnerSortByEnum.created;
        case r'tenantId': return EventSubscriptionQueryDtoSortingInnerSortByEnum.tenantId;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EventSubscriptionQueryDtoSortingInnerSortByEnumTypeTransformer] instance.
  static EventSubscriptionQueryDtoSortingInnerSortByEnumTypeTransformer? _instance;
}


/// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
class EventSubscriptionQueryDtoSortingInnerSortOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const EventSubscriptionQueryDtoSortingInnerSortOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = EventSubscriptionQueryDtoSortingInnerSortOrderEnum._(r'asc');
  static const desc = EventSubscriptionQueryDtoSortingInnerSortOrderEnum._(r'desc');

  /// List of all possible values in this [enum][EventSubscriptionQueryDtoSortingInnerSortOrderEnum].
  static const values = <EventSubscriptionQueryDtoSortingInnerSortOrderEnum>[
    asc,
    desc,
  ];

  static EventSubscriptionQueryDtoSortingInnerSortOrderEnum? fromJson(dynamic value) => EventSubscriptionQueryDtoSortingInnerSortOrderEnumTypeTransformer().decode(value);

  static List<EventSubscriptionQueryDtoSortingInnerSortOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EventSubscriptionQueryDtoSortingInnerSortOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EventSubscriptionQueryDtoSortingInnerSortOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EventSubscriptionQueryDtoSortingInnerSortOrderEnum] to String,
/// and [decode] dynamic data back to [EventSubscriptionQueryDtoSortingInnerSortOrderEnum].
class EventSubscriptionQueryDtoSortingInnerSortOrderEnumTypeTransformer {
  factory EventSubscriptionQueryDtoSortingInnerSortOrderEnumTypeTransformer() => _instance ??= const EventSubscriptionQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  const EventSubscriptionQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  String encode(EventSubscriptionQueryDtoSortingInnerSortOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EventSubscriptionQueryDtoSortingInnerSortOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EventSubscriptionQueryDtoSortingInnerSortOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return EventSubscriptionQueryDtoSortingInnerSortOrderEnum.asc;
        case r'desc': return EventSubscriptionQueryDtoSortingInnerSortOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EventSubscriptionQueryDtoSortingInnerSortOrderEnumTypeTransformer] instance.
  static EventSubscriptionQueryDtoSortingInnerSortOrderEnumTypeTransformer? _instance;
}


