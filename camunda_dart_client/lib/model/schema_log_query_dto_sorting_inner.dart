//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SchemaLogQueryDtoSortingInner {
  /// Returns a new [SchemaLogQueryDtoSortingInner] instance.
  SchemaLogQueryDtoSortingInner({
    this.sortBy,
    this.sortOrder,
  });

  /// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  SchemaLogQueryDtoSortingInnerSortByEnum? sortBy;

  /// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
  SchemaLogQueryDtoSortingInnerSortOrderEnum? sortOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SchemaLogQueryDtoSortingInner &&
    other.sortBy == sortBy &&
    other.sortOrder == sortOrder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sortBy == null ? 0 : sortBy!.hashCode) +
    (sortOrder == null ? 0 : sortOrder!.hashCode);

  @override
  String toString() => 'SchemaLogQueryDtoSortingInner[sortBy=$sortBy, sortOrder=$sortOrder]';

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

  /// Returns a new [SchemaLogQueryDtoSortingInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SchemaLogQueryDtoSortingInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SchemaLogQueryDtoSortingInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SchemaLogQueryDtoSortingInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SchemaLogQueryDtoSortingInner(
        sortBy: SchemaLogQueryDtoSortingInnerSortByEnum.fromJson(json[r'sortBy']),
        sortOrder: SchemaLogQueryDtoSortingInnerSortOrderEnum.fromJson(json[r'sortOrder']),
      );
    }
    return null;
  }

  static List<SchemaLogQueryDtoSortingInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SchemaLogQueryDtoSortingInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SchemaLogQueryDtoSortingInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SchemaLogQueryDtoSortingInner> mapFromJson(dynamic json) {
    final map = <String, SchemaLogQueryDtoSortingInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SchemaLogQueryDtoSortingInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SchemaLogQueryDtoSortingInner-objects as value to a dart map
  static Map<String, List<SchemaLogQueryDtoSortingInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SchemaLogQueryDtoSortingInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SchemaLogQueryDtoSortingInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
class SchemaLogQueryDtoSortingInnerSortByEnum {
  /// Instantiate a new enum with the provided [value].
  const SchemaLogQueryDtoSortingInnerSortByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const timestamp = SchemaLogQueryDtoSortingInnerSortByEnum._(r'timestamp');

  /// List of all possible values in this [enum][SchemaLogQueryDtoSortingInnerSortByEnum].
  static const values = <SchemaLogQueryDtoSortingInnerSortByEnum>[
    timestamp,
  ];

  static SchemaLogQueryDtoSortingInnerSortByEnum? fromJson(dynamic value) => SchemaLogQueryDtoSortingInnerSortByEnumTypeTransformer().decode(value);

  static List<SchemaLogQueryDtoSortingInnerSortByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SchemaLogQueryDtoSortingInnerSortByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SchemaLogQueryDtoSortingInnerSortByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SchemaLogQueryDtoSortingInnerSortByEnum] to String,
/// and [decode] dynamic data back to [SchemaLogQueryDtoSortingInnerSortByEnum].
class SchemaLogQueryDtoSortingInnerSortByEnumTypeTransformer {
  factory SchemaLogQueryDtoSortingInnerSortByEnumTypeTransformer() => _instance ??= const SchemaLogQueryDtoSortingInnerSortByEnumTypeTransformer._();

  const SchemaLogQueryDtoSortingInnerSortByEnumTypeTransformer._();

  String encode(SchemaLogQueryDtoSortingInnerSortByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SchemaLogQueryDtoSortingInnerSortByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SchemaLogQueryDtoSortingInnerSortByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'timestamp': return SchemaLogQueryDtoSortingInnerSortByEnum.timestamp;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SchemaLogQueryDtoSortingInnerSortByEnumTypeTransformer] instance.
  static SchemaLogQueryDtoSortingInnerSortByEnumTypeTransformer? _instance;
}


/// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
class SchemaLogQueryDtoSortingInnerSortOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const SchemaLogQueryDtoSortingInnerSortOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = SchemaLogQueryDtoSortingInnerSortOrderEnum._(r'asc');
  static const desc = SchemaLogQueryDtoSortingInnerSortOrderEnum._(r'desc');

  /// List of all possible values in this [enum][SchemaLogQueryDtoSortingInnerSortOrderEnum].
  static const values = <SchemaLogQueryDtoSortingInnerSortOrderEnum>[
    asc,
    desc,
  ];

  static SchemaLogQueryDtoSortingInnerSortOrderEnum? fromJson(dynamic value) => SchemaLogQueryDtoSortingInnerSortOrderEnumTypeTransformer().decode(value);

  static List<SchemaLogQueryDtoSortingInnerSortOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SchemaLogQueryDtoSortingInnerSortOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SchemaLogQueryDtoSortingInnerSortOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SchemaLogQueryDtoSortingInnerSortOrderEnum] to String,
/// and [decode] dynamic data back to [SchemaLogQueryDtoSortingInnerSortOrderEnum].
class SchemaLogQueryDtoSortingInnerSortOrderEnumTypeTransformer {
  factory SchemaLogQueryDtoSortingInnerSortOrderEnumTypeTransformer() => _instance ??= const SchemaLogQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  const SchemaLogQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  String encode(SchemaLogQueryDtoSortingInnerSortOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SchemaLogQueryDtoSortingInnerSortOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SchemaLogQueryDtoSortingInnerSortOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return SchemaLogQueryDtoSortingInnerSortOrderEnum.asc;
        case r'desc': return SchemaLogQueryDtoSortingInnerSortOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SchemaLogQueryDtoSortingInnerSortOrderEnumTypeTransformer] instance.
  static SchemaLogQueryDtoSortingInnerSortOrderEnumTypeTransformer? _instance;
}


