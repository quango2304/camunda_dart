//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VariableInstanceQueryDtoSortingInner {
  /// Returns a new [VariableInstanceQueryDtoSortingInner] instance.
  VariableInstanceQueryDtoSortingInner({
    this.sortBy,
    this.sortOrder,
  });

  /// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  VariableInstanceQueryDtoSortingInnerSortByEnum? sortBy;

  /// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
  VariableInstanceQueryDtoSortingInnerSortOrderEnum? sortOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VariableInstanceQueryDtoSortingInner &&
    other.sortBy == sortBy &&
    other.sortOrder == sortOrder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sortBy == null ? 0 : sortBy!.hashCode) +
    (sortOrder == null ? 0 : sortOrder!.hashCode);

  @override
  String toString() => 'VariableInstanceQueryDtoSortingInner[sortBy=$sortBy, sortOrder=$sortOrder]';

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

  /// Returns a new [VariableInstanceQueryDtoSortingInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VariableInstanceQueryDtoSortingInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VariableInstanceQueryDtoSortingInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VariableInstanceQueryDtoSortingInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VariableInstanceQueryDtoSortingInner(
        sortBy: VariableInstanceQueryDtoSortingInnerSortByEnum.fromJson(json[r'sortBy']),
        sortOrder: VariableInstanceQueryDtoSortingInnerSortOrderEnum.fromJson(json[r'sortOrder']),
      );
    }
    return null;
  }

  static List<VariableInstanceQueryDtoSortingInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VariableInstanceQueryDtoSortingInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VariableInstanceQueryDtoSortingInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VariableInstanceQueryDtoSortingInner> mapFromJson(dynamic json) {
    final map = <String, VariableInstanceQueryDtoSortingInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VariableInstanceQueryDtoSortingInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VariableInstanceQueryDtoSortingInner-objects as value to a dart map
  static Map<String, List<VariableInstanceQueryDtoSortingInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VariableInstanceQueryDtoSortingInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VariableInstanceQueryDtoSortingInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
class VariableInstanceQueryDtoSortingInnerSortByEnum {
  /// Instantiate a new enum with the provided [value].
  const VariableInstanceQueryDtoSortingInnerSortByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const variableName = VariableInstanceQueryDtoSortingInnerSortByEnum._(r'variableName');
  static const variableType = VariableInstanceQueryDtoSortingInnerSortByEnum._(r'variableType');
  static const activityInstanceId = VariableInstanceQueryDtoSortingInnerSortByEnum._(r'activityInstanceId');
  static const tenantId = VariableInstanceQueryDtoSortingInnerSortByEnum._(r'tenantId');

  /// List of all possible values in this [enum][VariableInstanceQueryDtoSortingInnerSortByEnum].
  static const values = <VariableInstanceQueryDtoSortingInnerSortByEnum>[
    variableName,
    variableType,
    activityInstanceId,
    tenantId,
  ];

  static VariableInstanceQueryDtoSortingInnerSortByEnum? fromJson(dynamic value) => VariableInstanceQueryDtoSortingInnerSortByEnumTypeTransformer().decode(value);

  static List<VariableInstanceQueryDtoSortingInnerSortByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VariableInstanceQueryDtoSortingInnerSortByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VariableInstanceQueryDtoSortingInnerSortByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VariableInstanceQueryDtoSortingInnerSortByEnum] to String,
/// and [decode] dynamic data back to [VariableInstanceQueryDtoSortingInnerSortByEnum].
class VariableInstanceQueryDtoSortingInnerSortByEnumTypeTransformer {
  factory VariableInstanceQueryDtoSortingInnerSortByEnumTypeTransformer() => _instance ??= const VariableInstanceQueryDtoSortingInnerSortByEnumTypeTransformer._();

  const VariableInstanceQueryDtoSortingInnerSortByEnumTypeTransformer._();

  String encode(VariableInstanceQueryDtoSortingInnerSortByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VariableInstanceQueryDtoSortingInnerSortByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VariableInstanceQueryDtoSortingInnerSortByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'variableName': return VariableInstanceQueryDtoSortingInnerSortByEnum.variableName;
        case r'variableType': return VariableInstanceQueryDtoSortingInnerSortByEnum.variableType;
        case r'activityInstanceId': return VariableInstanceQueryDtoSortingInnerSortByEnum.activityInstanceId;
        case r'tenantId': return VariableInstanceQueryDtoSortingInnerSortByEnum.tenantId;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VariableInstanceQueryDtoSortingInnerSortByEnumTypeTransformer] instance.
  static VariableInstanceQueryDtoSortingInnerSortByEnumTypeTransformer? _instance;
}


/// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
class VariableInstanceQueryDtoSortingInnerSortOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const VariableInstanceQueryDtoSortingInnerSortOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = VariableInstanceQueryDtoSortingInnerSortOrderEnum._(r'asc');
  static const desc = VariableInstanceQueryDtoSortingInnerSortOrderEnum._(r'desc');

  /// List of all possible values in this [enum][VariableInstanceQueryDtoSortingInnerSortOrderEnum].
  static const values = <VariableInstanceQueryDtoSortingInnerSortOrderEnum>[
    asc,
    desc,
  ];

  static VariableInstanceQueryDtoSortingInnerSortOrderEnum? fromJson(dynamic value) => VariableInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer().decode(value);

  static List<VariableInstanceQueryDtoSortingInnerSortOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VariableInstanceQueryDtoSortingInnerSortOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VariableInstanceQueryDtoSortingInnerSortOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VariableInstanceQueryDtoSortingInnerSortOrderEnum] to String,
/// and [decode] dynamic data back to [VariableInstanceQueryDtoSortingInnerSortOrderEnum].
class VariableInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer {
  factory VariableInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer() => _instance ??= const VariableInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  const VariableInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  String encode(VariableInstanceQueryDtoSortingInnerSortOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VariableInstanceQueryDtoSortingInnerSortOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VariableInstanceQueryDtoSortingInnerSortOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return VariableInstanceQueryDtoSortingInnerSortOrderEnum.asc;
        case r'desc': return VariableInstanceQueryDtoSortingInnerSortOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VariableInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer] instance.
  static VariableInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer? _instance;
}


