//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricVariableInstanceQueryDtoSortingInner {
  /// Returns a new [HistoricVariableInstanceQueryDtoSortingInner] instance.
  HistoricVariableInstanceQueryDtoSortingInner({
    this.sortBy,
    this.sortOrder,
  });

  /// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  HistoricVariableInstanceQueryDtoSortingInnerSortByEnum? sortBy;

  /// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
  HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnum? sortOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricVariableInstanceQueryDtoSortingInner &&
    other.sortBy == sortBy &&
    other.sortOrder == sortOrder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sortBy == null ? 0 : sortBy!.hashCode) +
    (sortOrder == null ? 0 : sortOrder!.hashCode);

  @override
  String toString() => 'HistoricVariableInstanceQueryDtoSortingInner[sortBy=$sortBy, sortOrder=$sortOrder]';

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

  /// Returns a new [HistoricVariableInstanceQueryDtoSortingInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricVariableInstanceQueryDtoSortingInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricVariableInstanceQueryDtoSortingInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricVariableInstanceQueryDtoSortingInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricVariableInstanceQueryDtoSortingInner(
        sortBy: HistoricVariableInstanceQueryDtoSortingInnerSortByEnum.fromJson(json[r'sortBy']),
        sortOrder: HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnum.fromJson(json[r'sortOrder']),
      );
    }
    return null;
  }

  static List<HistoricVariableInstanceQueryDtoSortingInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricVariableInstanceQueryDtoSortingInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricVariableInstanceQueryDtoSortingInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricVariableInstanceQueryDtoSortingInner> mapFromJson(dynamic json) {
    final map = <String, HistoricVariableInstanceQueryDtoSortingInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricVariableInstanceQueryDtoSortingInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricVariableInstanceQueryDtoSortingInner-objects as value to a dart map
  static Map<String, List<HistoricVariableInstanceQueryDtoSortingInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricVariableInstanceQueryDtoSortingInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricVariableInstanceQueryDtoSortingInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
class HistoricVariableInstanceQueryDtoSortingInnerSortByEnum {
  /// Instantiate a new enum with the provided [value].
  const HistoricVariableInstanceQueryDtoSortingInnerSortByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const instanceId = HistoricVariableInstanceQueryDtoSortingInnerSortByEnum._(r'instanceId');
  static const variableName = HistoricVariableInstanceQueryDtoSortingInnerSortByEnum._(r'variableName');
  static const tenantId = HistoricVariableInstanceQueryDtoSortingInnerSortByEnum._(r'tenantId');

  /// List of all possible values in this [enum][HistoricVariableInstanceQueryDtoSortingInnerSortByEnum].
  static const values = <HistoricVariableInstanceQueryDtoSortingInnerSortByEnum>[
    instanceId,
    variableName,
    tenantId,
  ];

  static HistoricVariableInstanceQueryDtoSortingInnerSortByEnum? fromJson(dynamic value) => HistoricVariableInstanceQueryDtoSortingInnerSortByEnumTypeTransformer().decode(value);

  static List<HistoricVariableInstanceQueryDtoSortingInnerSortByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricVariableInstanceQueryDtoSortingInnerSortByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricVariableInstanceQueryDtoSortingInnerSortByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HistoricVariableInstanceQueryDtoSortingInnerSortByEnum] to String,
/// and [decode] dynamic data back to [HistoricVariableInstanceQueryDtoSortingInnerSortByEnum].
class HistoricVariableInstanceQueryDtoSortingInnerSortByEnumTypeTransformer {
  factory HistoricVariableInstanceQueryDtoSortingInnerSortByEnumTypeTransformer() => _instance ??= const HistoricVariableInstanceQueryDtoSortingInnerSortByEnumTypeTransformer._();

  const HistoricVariableInstanceQueryDtoSortingInnerSortByEnumTypeTransformer._();

  String encode(HistoricVariableInstanceQueryDtoSortingInnerSortByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HistoricVariableInstanceQueryDtoSortingInnerSortByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HistoricVariableInstanceQueryDtoSortingInnerSortByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'instanceId': return HistoricVariableInstanceQueryDtoSortingInnerSortByEnum.instanceId;
        case r'variableName': return HistoricVariableInstanceQueryDtoSortingInnerSortByEnum.variableName;
        case r'tenantId': return HistoricVariableInstanceQueryDtoSortingInnerSortByEnum.tenantId;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HistoricVariableInstanceQueryDtoSortingInnerSortByEnumTypeTransformer] instance.
  static HistoricVariableInstanceQueryDtoSortingInnerSortByEnumTypeTransformer? _instance;
}


/// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
class HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnum._(r'asc');
  static const desc = HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnum._(r'desc');

  /// List of all possible values in this [enum][HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnum].
  static const values = <HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnum>[
    asc,
    desc,
  ];

  static HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnum? fromJson(dynamic value) => HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer().decode(value);

  static List<HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnum] to String,
/// and [decode] dynamic data back to [HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnum].
class HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer {
  factory HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer() => _instance ??= const HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  const HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  String encode(HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnum.asc;
        case r'desc': return HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer] instance.
  static HistoricVariableInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer? _instance;
}


