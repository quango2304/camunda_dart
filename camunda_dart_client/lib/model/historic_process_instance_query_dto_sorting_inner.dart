//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricProcessInstanceQueryDtoSortingInner {
  /// Returns a new [HistoricProcessInstanceQueryDtoSortingInner] instance.
  HistoricProcessInstanceQueryDtoSortingInner({
    this.sortBy,
    this.sortOrder,
  });

  /// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  HistoricProcessInstanceQueryDtoSortingInnerSortByEnum? sortBy;

  /// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
  HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnum? sortOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricProcessInstanceQueryDtoSortingInner &&
    other.sortBy == sortBy &&
    other.sortOrder == sortOrder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sortBy == null ? 0 : sortBy!.hashCode) +
    (sortOrder == null ? 0 : sortOrder!.hashCode);

  @override
  String toString() => 'HistoricProcessInstanceQueryDtoSortingInner[sortBy=$sortBy, sortOrder=$sortOrder]';

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

  /// Returns a new [HistoricProcessInstanceQueryDtoSortingInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricProcessInstanceQueryDtoSortingInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricProcessInstanceQueryDtoSortingInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricProcessInstanceQueryDtoSortingInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricProcessInstanceQueryDtoSortingInner(
        sortBy: HistoricProcessInstanceQueryDtoSortingInnerSortByEnum.fromJson(json[r'sortBy']),
        sortOrder: HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnum.fromJson(json[r'sortOrder']),
      );
    }
    return null;
  }

  static List<HistoricProcessInstanceQueryDtoSortingInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricProcessInstanceQueryDtoSortingInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricProcessInstanceQueryDtoSortingInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricProcessInstanceQueryDtoSortingInner> mapFromJson(dynamic json) {
    final map = <String, HistoricProcessInstanceQueryDtoSortingInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricProcessInstanceQueryDtoSortingInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricProcessInstanceQueryDtoSortingInner-objects as value to a dart map
  static Map<String, List<HistoricProcessInstanceQueryDtoSortingInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricProcessInstanceQueryDtoSortingInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricProcessInstanceQueryDtoSortingInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
class HistoricProcessInstanceQueryDtoSortingInnerSortByEnum {
  /// Instantiate a new enum with the provided [value].
  const HistoricProcessInstanceQueryDtoSortingInnerSortByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const instanceId = HistoricProcessInstanceQueryDtoSortingInnerSortByEnum._(r'instanceId');
  static const definitionId = HistoricProcessInstanceQueryDtoSortingInnerSortByEnum._(r'definitionId');
  static const definitionKey = HistoricProcessInstanceQueryDtoSortingInnerSortByEnum._(r'definitionKey');
  static const definitionName = HistoricProcessInstanceQueryDtoSortingInnerSortByEnum._(r'definitionName');
  static const definitionVersion = HistoricProcessInstanceQueryDtoSortingInnerSortByEnum._(r'definitionVersion');
  static const businessKey = HistoricProcessInstanceQueryDtoSortingInnerSortByEnum._(r'businessKey');
  static const startTime = HistoricProcessInstanceQueryDtoSortingInnerSortByEnum._(r'startTime');
  static const endTime = HistoricProcessInstanceQueryDtoSortingInnerSortByEnum._(r'endTime');
  static const duration = HistoricProcessInstanceQueryDtoSortingInnerSortByEnum._(r'duration');
  static const tenantId = HistoricProcessInstanceQueryDtoSortingInnerSortByEnum._(r'tenantId');

  /// List of all possible values in this [enum][HistoricProcessInstanceQueryDtoSortingInnerSortByEnum].
  static const values = <HistoricProcessInstanceQueryDtoSortingInnerSortByEnum>[
    instanceId,
    definitionId,
    definitionKey,
    definitionName,
    definitionVersion,
    businessKey,
    startTime,
    endTime,
    duration,
    tenantId,
  ];

  static HistoricProcessInstanceQueryDtoSortingInnerSortByEnum? fromJson(dynamic value) => HistoricProcessInstanceQueryDtoSortingInnerSortByEnumTypeTransformer().decode(value);

  static List<HistoricProcessInstanceQueryDtoSortingInnerSortByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricProcessInstanceQueryDtoSortingInnerSortByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricProcessInstanceQueryDtoSortingInnerSortByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HistoricProcessInstanceQueryDtoSortingInnerSortByEnum] to String,
/// and [decode] dynamic data back to [HistoricProcessInstanceQueryDtoSortingInnerSortByEnum].
class HistoricProcessInstanceQueryDtoSortingInnerSortByEnumTypeTransformer {
  factory HistoricProcessInstanceQueryDtoSortingInnerSortByEnumTypeTransformer() => _instance ??= const HistoricProcessInstanceQueryDtoSortingInnerSortByEnumTypeTransformer._();

  const HistoricProcessInstanceQueryDtoSortingInnerSortByEnumTypeTransformer._();

  String encode(HistoricProcessInstanceQueryDtoSortingInnerSortByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HistoricProcessInstanceQueryDtoSortingInnerSortByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HistoricProcessInstanceQueryDtoSortingInnerSortByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'instanceId': return HistoricProcessInstanceQueryDtoSortingInnerSortByEnum.instanceId;
        case r'definitionId': return HistoricProcessInstanceQueryDtoSortingInnerSortByEnum.definitionId;
        case r'definitionKey': return HistoricProcessInstanceQueryDtoSortingInnerSortByEnum.definitionKey;
        case r'definitionName': return HistoricProcessInstanceQueryDtoSortingInnerSortByEnum.definitionName;
        case r'definitionVersion': return HistoricProcessInstanceQueryDtoSortingInnerSortByEnum.definitionVersion;
        case r'businessKey': return HistoricProcessInstanceQueryDtoSortingInnerSortByEnum.businessKey;
        case r'startTime': return HistoricProcessInstanceQueryDtoSortingInnerSortByEnum.startTime;
        case r'endTime': return HistoricProcessInstanceQueryDtoSortingInnerSortByEnum.endTime;
        case r'duration': return HistoricProcessInstanceQueryDtoSortingInnerSortByEnum.duration;
        case r'tenantId': return HistoricProcessInstanceQueryDtoSortingInnerSortByEnum.tenantId;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HistoricProcessInstanceQueryDtoSortingInnerSortByEnumTypeTransformer] instance.
  static HistoricProcessInstanceQueryDtoSortingInnerSortByEnumTypeTransformer? _instance;
}


/// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
class HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnum._(r'asc');
  static const desc = HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnum._(r'desc');

  /// List of all possible values in this [enum][HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnum].
  static const values = <HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnum>[
    asc,
    desc,
  ];

  static HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnum? fromJson(dynamic value) => HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer().decode(value);

  static List<HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnum] to String,
/// and [decode] dynamic data back to [HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnum].
class HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer {
  factory HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer() => _instance ??= const HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  const HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  String encode(HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnum.asc;
        case r'desc': return HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer] instance.
  static HistoricProcessInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer? _instance;
}


