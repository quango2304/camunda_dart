//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExecutionQueryDtoSortingInner {
  /// Returns a new [ExecutionQueryDtoSortingInner] instance.
  ExecutionQueryDtoSortingInner({
    this.sortBy,
    this.sortOrder,
  });

  /// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  ExecutionQueryDtoSortingInnerSortByEnum? sortBy;

  /// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
  ExecutionQueryDtoSortingInnerSortOrderEnum? sortOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExecutionQueryDtoSortingInner &&
    other.sortBy == sortBy &&
    other.sortOrder == sortOrder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sortBy == null ? 0 : sortBy!.hashCode) +
    (sortOrder == null ? 0 : sortOrder!.hashCode);

  @override
  String toString() => 'ExecutionQueryDtoSortingInner[sortBy=$sortBy, sortOrder=$sortOrder]';

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

  /// Returns a new [ExecutionQueryDtoSortingInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExecutionQueryDtoSortingInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExecutionQueryDtoSortingInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExecutionQueryDtoSortingInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExecutionQueryDtoSortingInner(
        sortBy: ExecutionQueryDtoSortingInnerSortByEnum.fromJson(json[r'sortBy']),
        sortOrder: ExecutionQueryDtoSortingInnerSortOrderEnum.fromJson(json[r'sortOrder']),
      );
    }
    return null;
  }

  static List<ExecutionQueryDtoSortingInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExecutionQueryDtoSortingInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExecutionQueryDtoSortingInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExecutionQueryDtoSortingInner> mapFromJson(dynamic json) {
    final map = <String, ExecutionQueryDtoSortingInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExecutionQueryDtoSortingInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExecutionQueryDtoSortingInner-objects as value to a dart map
  static Map<String, List<ExecutionQueryDtoSortingInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExecutionQueryDtoSortingInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExecutionQueryDtoSortingInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
class ExecutionQueryDtoSortingInnerSortByEnum {
  /// Instantiate a new enum with the provided [value].
  const ExecutionQueryDtoSortingInnerSortByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const instanceId = ExecutionQueryDtoSortingInnerSortByEnum._(r'instanceId');
  static const definitionKey = ExecutionQueryDtoSortingInnerSortByEnum._(r'definitionKey');
  static const definitionId = ExecutionQueryDtoSortingInnerSortByEnum._(r'definitionId');
  static const tenantId = ExecutionQueryDtoSortingInnerSortByEnum._(r'tenantId');

  /// List of all possible values in this [enum][ExecutionQueryDtoSortingInnerSortByEnum].
  static const values = <ExecutionQueryDtoSortingInnerSortByEnum>[
    instanceId,
    definitionKey,
    definitionId,
    tenantId,
  ];

  static ExecutionQueryDtoSortingInnerSortByEnum? fromJson(dynamic value) => ExecutionQueryDtoSortingInnerSortByEnumTypeTransformer().decode(value);

  static List<ExecutionQueryDtoSortingInnerSortByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExecutionQueryDtoSortingInnerSortByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExecutionQueryDtoSortingInnerSortByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExecutionQueryDtoSortingInnerSortByEnum] to String,
/// and [decode] dynamic data back to [ExecutionQueryDtoSortingInnerSortByEnum].
class ExecutionQueryDtoSortingInnerSortByEnumTypeTransformer {
  factory ExecutionQueryDtoSortingInnerSortByEnumTypeTransformer() => _instance ??= const ExecutionQueryDtoSortingInnerSortByEnumTypeTransformer._();

  const ExecutionQueryDtoSortingInnerSortByEnumTypeTransformer._();

  String encode(ExecutionQueryDtoSortingInnerSortByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExecutionQueryDtoSortingInnerSortByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExecutionQueryDtoSortingInnerSortByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'instanceId': return ExecutionQueryDtoSortingInnerSortByEnum.instanceId;
        case r'definitionKey': return ExecutionQueryDtoSortingInnerSortByEnum.definitionKey;
        case r'definitionId': return ExecutionQueryDtoSortingInnerSortByEnum.definitionId;
        case r'tenantId': return ExecutionQueryDtoSortingInnerSortByEnum.tenantId;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExecutionQueryDtoSortingInnerSortByEnumTypeTransformer] instance.
  static ExecutionQueryDtoSortingInnerSortByEnumTypeTransformer? _instance;
}


/// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
class ExecutionQueryDtoSortingInnerSortOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const ExecutionQueryDtoSortingInnerSortOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = ExecutionQueryDtoSortingInnerSortOrderEnum._(r'asc');
  static const desc = ExecutionQueryDtoSortingInnerSortOrderEnum._(r'desc');

  /// List of all possible values in this [enum][ExecutionQueryDtoSortingInnerSortOrderEnum].
  static const values = <ExecutionQueryDtoSortingInnerSortOrderEnum>[
    asc,
    desc,
  ];

  static ExecutionQueryDtoSortingInnerSortOrderEnum? fromJson(dynamic value) => ExecutionQueryDtoSortingInnerSortOrderEnumTypeTransformer().decode(value);

  static List<ExecutionQueryDtoSortingInnerSortOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExecutionQueryDtoSortingInnerSortOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExecutionQueryDtoSortingInnerSortOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExecutionQueryDtoSortingInnerSortOrderEnum] to String,
/// and [decode] dynamic data back to [ExecutionQueryDtoSortingInnerSortOrderEnum].
class ExecutionQueryDtoSortingInnerSortOrderEnumTypeTransformer {
  factory ExecutionQueryDtoSortingInnerSortOrderEnumTypeTransformer() => _instance ??= const ExecutionQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  const ExecutionQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  String encode(ExecutionQueryDtoSortingInnerSortOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExecutionQueryDtoSortingInnerSortOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExecutionQueryDtoSortingInnerSortOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return ExecutionQueryDtoSortingInnerSortOrderEnum.asc;
        case r'desc': return ExecutionQueryDtoSortingInnerSortOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExecutionQueryDtoSortingInnerSortOrderEnumTypeTransformer] instance.
  static ExecutionQueryDtoSortingInnerSortOrderEnumTypeTransformer? _instance;
}


