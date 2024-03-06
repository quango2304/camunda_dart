//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricBatchQueryDtoSortingInner {
  /// Returns a new [HistoricBatchQueryDtoSortingInner] instance.
  HistoricBatchQueryDtoSortingInner({
    this.sortBy,
    this.sortOrder,
  });

  /// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  HistoricBatchQueryDtoSortingInnerSortByEnum? sortBy;

  /// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
  HistoricBatchQueryDtoSortingInnerSortOrderEnum? sortOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricBatchQueryDtoSortingInner &&
    other.sortBy == sortBy &&
    other.sortOrder == sortOrder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sortBy == null ? 0 : sortBy!.hashCode) +
    (sortOrder == null ? 0 : sortOrder!.hashCode);

  @override
  String toString() => 'HistoricBatchQueryDtoSortingInner[sortBy=$sortBy, sortOrder=$sortOrder]';

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

  /// Returns a new [HistoricBatchQueryDtoSortingInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricBatchQueryDtoSortingInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricBatchQueryDtoSortingInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricBatchQueryDtoSortingInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricBatchQueryDtoSortingInner(
        sortBy: HistoricBatchQueryDtoSortingInnerSortByEnum.fromJson(json[r'sortBy']),
        sortOrder: HistoricBatchQueryDtoSortingInnerSortOrderEnum.fromJson(json[r'sortOrder']),
      );
    }
    return null;
  }

  static List<HistoricBatchQueryDtoSortingInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricBatchQueryDtoSortingInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricBatchQueryDtoSortingInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricBatchQueryDtoSortingInner> mapFromJson(dynamic json) {
    final map = <String, HistoricBatchQueryDtoSortingInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricBatchQueryDtoSortingInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricBatchQueryDtoSortingInner-objects as value to a dart map
  static Map<String, List<HistoricBatchQueryDtoSortingInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricBatchQueryDtoSortingInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricBatchQueryDtoSortingInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
class HistoricBatchQueryDtoSortingInnerSortByEnum {
  /// Instantiate a new enum with the provided [value].
  const HistoricBatchQueryDtoSortingInnerSortByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const batchId = HistoricBatchQueryDtoSortingInnerSortByEnum._(r'batchId');
  static const startTime = HistoricBatchQueryDtoSortingInnerSortByEnum._(r'startTime');
  static const endTime = HistoricBatchQueryDtoSortingInnerSortByEnum._(r'endTime');
  static const tenantId = HistoricBatchQueryDtoSortingInnerSortByEnum._(r'tenantId');

  /// List of all possible values in this [enum][HistoricBatchQueryDtoSortingInnerSortByEnum].
  static const values = <HistoricBatchQueryDtoSortingInnerSortByEnum>[
    batchId,
    startTime,
    endTime,
    tenantId,
  ];

  static HistoricBatchQueryDtoSortingInnerSortByEnum? fromJson(dynamic value) => HistoricBatchQueryDtoSortingInnerSortByEnumTypeTransformer().decode(value);

  static List<HistoricBatchQueryDtoSortingInnerSortByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricBatchQueryDtoSortingInnerSortByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricBatchQueryDtoSortingInnerSortByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HistoricBatchQueryDtoSortingInnerSortByEnum] to String,
/// and [decode] dynamic data back to [HistoricBatchQueryDtoSortingInnerSortByEnum].
class HistoricBatchQueryDtoSortingInnerSortByEnumTypeTransformer {
  factory HistoricBatchQueryDtoSortingInnerSortByEnumTypeTransformer() => _instance ??= const HistoricBatchQueryDtoSortingInnerSortByEnumTypeTransformer._();

  const HistoricBatchQueryDtoSortingInnerSortByEnumTypeTransformer._();

  String encode(HistoricBatchQueryDtoSortingInnerSortByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HistoricBatchQueryDtoSortingInnerSortByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HistoricBatchQueryDtoSortingInnerSortByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'batchId': return HistoricBatchQueryDtoSortingInnerSortByEnum.batchId;
        case r'startTime': return HistoricBatchQueryDtoSortingInnerSortByEnum.startTime;
        case r'endTime': return HistoricBatchQueryDtoSortingInnerSortByEnum.endTime;
        case r'tenantId': return HistoricBatchQueryDtoSortingInnerSortByEnum.tenantId;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HistoricBatchQueryDtoSortingInnerSortByEnumTypeTransformer] instance.
  static HistoricBatchQueryDtoSortingInnerSortByEnumTypeTransformer? _instance;
}


/// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
class HistoricBatchQueryDtoSortingInnerSortOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const HistoricBatchQueryDtoSortingInnerSortOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = HistoricBatchQueryDtoSortingInnerSortOrderEnum._(r'asc');
  static const desc = HistoricBatchQueryDtoSortingInnerSortOrderEnum._(r'desc');

  /// List of all possible values in this [enum][HistoricBatchQueryDtoSortingInnerSortOrderEnum].
  static const values = <HistoricBatchQueryDtoSortingInnerSortOrderEnum>[
    asc,
    desc,
  ];

  static HistoricBatchQueryDtoSortingInnerSortOrderEnum? fromJson(dynamic value) => HistoricBatchQueryDtoSortingInnerSortOrderEnumTypeTransformer().decode(value);

  static List<HistoricBatchQueryDtoSortingInnerSortOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricBatchQueryDtoSortingInnerSortOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricBatchQueryDtoSortingInnerSortOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HistoricBatchQueryDtoSortingInnerSortOrderEnum] to String,
/// and [decode] dynamic data back to [HistoricBatchQueryDtoSortingInnerSortOrderEnum].
class HistoricBatchQueryDtoSortingInnerSortOrderEnumTypeTransformer {
  factory HistoricBatchQueryDtoSortingInnerSortOrderEnumTypeTransformer() => _instance ??= const HistoricBatchQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  const HistoricBatchQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  String encode(HistoricBatchQueryDtoSortingInnerSortOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HistoricBatchQueryDtoSortingInnerSortOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HistoricBatchQueryDtoSortingInnerSortOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return HistoricBatchQueryDtoSortingInnerSortOrderEnum.asc;
        case r'desc': return HistoricBatchQueryDtoSortingInnerSortOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HistoricBatchQueryDtoSortingInnerSortOrderEnumTypeTransformer] instance.
  static HistoricBatchQueryDtoSortingInnerSortOrderEnumTypeTransformer? _instance;
}


