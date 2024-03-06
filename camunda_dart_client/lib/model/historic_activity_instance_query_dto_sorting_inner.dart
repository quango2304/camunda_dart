//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricActivityInstanceQueryDtoSortingInner {
  /// Returns a new [HistoricActivityInstanceQueryDtoSortingInner] instance.
  HistoricActivityInstanceQueryDtoSortingInner({
    this.sortBy,
    this.sortOrder,
  });

  /// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  HistoricActivityInstanceQueryDtoSortingInnerSortByEnum? sortBy;

  /// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
  HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnum? sortOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricActivityInstanceQueryDtoSortingInner &&
    other.sortBy == sortBy &&
    other.sortOrder == sortOrder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sortBy == null ? 0 : sortBy!.hashCode) +
    (sortOrder == null ? 0 : sortOrder!.hashCode);

  @override
  String toString() => 'HistoricActivityInstanceQueryDtoSortingInner[sortBy=$sortBy, sortOrder=$sortOrder]';

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

  /// Returns a new [HistoricActivityInstanceQueryDtoSortingInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricActivityInstanceQueryDtoSortingInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricActivityInstanceQueryDtoSortingInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricActivityInstanceQueryDtoSortingInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricActivityInstanceQueryDtoSortingInner(
        sortBy: HistoricActivityInstanceQueryDtoSortingInnerSortByEnum.fromJson(json[r'sortBy']),
        sortOrder: HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnum.fromJson(json[r'sortOrder']),
      );
    }
    return null;
  }

  static List<HistoricActivityInstanceQueryDtoSortingInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricActivityInstanceQueryDtoSortingInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricActivityInstanceQueryDtoSortingInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricActivityInstanceQueryDtoSortingInner> mapFromJson(dynamic json) {
    final map = <String, HistoricActivityInstanceQueryDtoSortingInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricActivityInstanceQueryDtoSortingInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricActivityInstanceQueryDtoSortingInner-objects as value to a dart map
  static Map<String, List<HistoricActivityInstanceQueryDtoSortingInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricActivityInstanceQueryDtoSortingInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricActivityInstanceQueryDtoSortingInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
class HistoricActivityInstanceQueryDtoSortingInnerSortByEnum {
  /// Instantiate a new enum with the provided [value].
  const HistoricActivityInstanceQueryDtoSortingInnerSortByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const activityInstanceId = HistoricActivityInstanceQueryDtoSortingInnerSortByEnum._(r'activityInstanceId');
  static const instanceId = HistoricActivityInstanceQueryDtoSortingInnerSortByEnum._(r'instanceId');
  static const executionId = HistoricActivityInstanceQueryDtoSortingInnerSortByEnum._(r'executionId');
  static const activityId = HistoricActivityInstanceQueryDtoSortingInnerSortByEnum._(r'activityId');
  static const activityName = HistoricActivityInstanceQueryDtoSortingInnerSortByEnum._(r'activityName');
  static const activityType = HistoricActivityInstanceQueryDtoSortingInnerSortByEnum._(r'activityType');
  static const startTime = HistoricActivityInstanceQueryDtoSortingInnerSortByEnum._(r'startTime');
  static const endTime = HistoricActivityInstanceQueryDtoSortingInnerSortByEnum._(r'endTime');
  static const duration = HistoricActivityInstanceQueryDtoSortingInnerSortByEnum._(r'duration');
  static const definitionId = HistoricActivityInstanceQueryDtoSortingInnerSortByEnum._(r'definitionId');
  static const occurrence = HistoricActivityInstanceQueryDtoSortingInnerSortByEnum._(r'occurrence');
  static const tenantId = HistoricActivityInstanceQueryDtoSortingInnerSortByEnum._(r'tenantId');

  /// List of all possible values in this [enum][HistoricActivityInstanceQueryDtoSortingInnerSortByEnum].
  static const values = <HistoricActivityInstanceQueryDtoSortingInnerSortByEnum>[
    activityInstanceId,
    instanceId,
    executionId,
    activityId,
    activityName,
    activityType,
    startTime,
    endTime,
    duration,
    definitionId,
    occurrence,
    tenantId,
  ];

  static HistoricActivityInstanceQueryDtoSortingInnerSortByEnum? fromJson(dynamic value) => HistoricActivityInstanceQueryDtoSortingInnerSortByEnumTypeTransformer().decode(value);

  static List<HistoricActivityInstanceQueryDtoSortingInnerSortByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricActivityInstanceQueryDtoSortingInnerSortByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricActivityInstanceQueryDtoSortingInnerSortByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HistoricActivityInstanceQueryDtoSortingInnerSortByEnum] to String,
/// and [decode] dynamic data back to [HistoricActivityInstanceQueryDtoSortingInnerSortByEnum].
class HistoricActivityInstanceQueryDtoSortingInnerSortByEnumTypeTransformer {
  factory HistoricActivityInstanceQueryDtoSortingInnerSortByEnumTypeTransformer() => _instance ??= const HistoricActivityInstanceQueryDtoSortingInnerSortByEnumTypeTransformer._();

  const HistoricActivityInstanceQueryDtoSortingInnerSortByEnumTypeTransformer._();

  String encode(HistoricActivityInstanceQueryDtoSortingInnerSortByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HistoricActivityInstanceQueryDtoSortingInnerSortByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HistoricActivityInstanceQueryDtoSortingInnerSortByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'activityInstanceId': return HistoricActivityInstanceQueryDtoSortingInnerSortByEnum.activityInstanceId;
        case r'instanceId': return HistoricActivityInstanceQueryDtoSortingInnerSortByEnum.instanceId;
        case r'executionId': return HistoricActivityInstanceQueryDtoSortingInnerSortByEnum.executionId;
        case r'activityId': return HistoricActivityInstanceQueryDtoSortingInnerSortByEnum.activityId;
        case r'activityName': return HistoricActivityInstanceQueryDtoSortingInnerSortByEnum.activityName;
        case r'activityType': return HistoricActivityInstanceQueryDtoSortingInnerSortByEnum.activityType;
        case r'startTime': return HistoricActivityInstanceQueryDtoSortingInnerSortByEnum.startTime;
        case r'endTime': return HistoricActivityInstanceQueryDtoSortingInnerSortByEnum.endTime;
        case r'duration': return HistoricActivityInstanceQueryDtoSortingInnerSortByEnum.duration;
        case r'definitionId': return HistoricActivityInstanceQueryDtoSortingInnerSortByEnum.definitionId;
        case r'occurrence': return HistoricActivityInstanceQueryDtoSortingInnerSortByEnum.occurrence;
        case r'tenantId': return HistoricActivityInstanceQueryDtoSortingInnerSortByEnum.tenantId;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HistoricActivityInstanceQueryDtoSortingInnerSortByEnumTypeTransformer] instance.
  static HistoricActivityInstanceQueryDtoSortingInnerSortByEnumTypeTransformer? _instance;
}


/// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
class HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnum._(r'asc');
  static const desc = HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnum._(r'desc');

  /// List of all possible values in this [enum][HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnum].
  static const values = <HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnum>[
    asc,
    desc,
  ];

  static HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnum? fromJson(dynamic value) => HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer().decode(value);

  static List<HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnum] to String,
/// and [decode] dynamic data back to [HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnum].
class HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer {
  factory HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer() => _instance ??= const HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  const HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  String encode(HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnum.asc;
        case r'desc': return HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer] instance.
  static HistoricActivityInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer? _instance;
}


