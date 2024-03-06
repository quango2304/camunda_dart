//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricDetailQueryDtoSortingInner {
  /// Returns a new [HistoricDetailQueryDtoSortingInner] instance.
  HistoricDetailQueryDtoSortingInner({
    this.sortBy,
    this.sortOrder,
  });

  /// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  HistoricDetailQueryDtoSortingInnerSortByEnum? sortBy;

  /// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
  HistoricDetailQueryDtoSortingInnerSortOrderEnum? sortOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricDetailQueryDtoSortingInner &&
    other.sortBy == sortBy &&
    other.sortOrder == sortOrder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sortBy == null ? 0 : sortBy!.hashCode) +
    (sortOrder == null ? 0 : sortOrder!.hashCode);

  @override
  String toString() => 'HistoricDetailQueryDtoSortingInner[sortBy=$sortBy, sortOrder=$sortOrder]';

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

  /// Returns a new [HistoricDetailQueryDtoSortingInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricDetailQueryDtoSortingInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricDetailQueryDtoSortingInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricDetailQueryDtoSortingInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricDetailQueryDtoSortingInner(
        sortBy: HistoricDetailQueryDtoSortingInnerSortByEnum.fromJson(json[r'sortBy']),
        sortOrder: HistoricDetailQueryDtoSortingInnerSortOrderEnum.fromJson(json[r'sortOrder']),
      );
    }
    return null;
  }

  static List<HistoricDetailQueryDtoSortingInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricDetailQueryDtoSortingInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricDetailQueryDtoSortingInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricDetailQueryDtoSortingInner> mapFromJson(dynamic json) {
    final map = <String, HistoricDetailQueryDtoSortingInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricDetailQueryDtoSortingInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricDetailQueryDtoSortingInner-objects as value to a dart map
  static Map<String, List<HistoricDetailQueryDtoSortingInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricDetailQueryDtoSortingInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricDetailQueryDtoSortingInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
class HistoricDetailQueryDtoSortingInnerSortByEnum {
  /// Instantiate a new enum with the provided [value].
  const HistoricDetailQueryDtoSortingInnerSortByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const processInstanceId = HistoricDetailQueryDtoSortingInnerSortByEnum._(r'processInstanceId');
  static const variableName = HistoricDetailQueryDtoSortingInnerSortByEnum._(r'variableName');
  static const variableType = HistoricDetailQueryDtoSortingInnerSortByEnum._(r'variableType');
  static const variableRevision = HistoricDetailQueryDtoSortingInnerSortByEnum._(r'variableRevision');
  static const formPropertyId = HistoricDetailQueryDtoSortingInnerSortByEnum._(r'formPropertyId');
  static const time = HistoricDetailQueryDtoSortingInnerSortByEnum._(r'time');
  static const occurrence = HistoricDetailQueryDtoSortingInnerSortByEnum._(r'occurrence');
  static const tenantId = HistoricDetailQueryDtoSortingInnerSortByEnum._(r'tenantId');

  /// List of all possible values in this [enum][HistoricDetailQueryDtoSortingInnerSortByEnum].
  static const values = <HistoricDetailQueryDtoSortingInnerSortByEnum>[
    processInstanceId,
    variableName,
    variableType,
    variableRevision,
    formPropertyId,
    time,
    occurrence,
    tenantId,
  ];

  static HistoricDetailQueryDtoSortingInnerSortByEnum? fromJson(dynamic value) => HistoricDetailQueryDtoSortingInnerSortByEnumTypeTransformer().decode(value);

  static List<HistoricDetailQueryDtoSortingInnerSortByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricDetailQueryDtoSortingInnerSortByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricDetailQueryDtoSortingInnerSortByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HistoricDetailQueryDtoSortingInnerSortByEnum] to String,
/// and [decode] dynamic data back to [HistoricDetailQueryDtoSortingInnerSortByEnum].
class HistoricDetailQueryDtoSortingInnerSortByEnumTypeTransformer {
  factory HistoricDetailQueryDtoSortingInnerSortByEnumTypeTransformer() => _instance ??= const HistoricDetailQueryDtoSortingInnerSortByEnumTypeTransformer._();

  const HistoricDetailQueryDtoSortingInnerSortByEnumTypeTransformer._();

  String encode(HistoricDetailQueryDtoSortingInnerSortByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HistoricDetailQueryDtoSortingInnerSortByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HistoricDetailQueryDtoSortingInnerSortByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'processInstanceId': return HistoricDetailQueryDtoSortingInnerSortByEnum.processInstanceId;
        case r'variableName': return HistoricDetailQueryDtoSortingInnerSortByEnum.variableName;
        case r'variableType': return HistoricDetailQueryDtoSortingInnerSortByEnum.variableType;
        case r'variableRevision': return HistoricDetailQueryDtoSortingInnerSortByEnum.variableRevision;
        case r'formPropertyId': return HistoricDetailQueryDtoSortingInnerSortByEnum.formPropertyId;
        case r'time': return HistoricDetailQueryDtoSortingInnerSortByEnum.time;
        case r'occurrence': return HistoricDetailQueryDtoSortingInnerSortByEnum.occurrence;
        case r'tenantId': return HistoricDetailQueryDtoSortingInnerSortByEnum.tenantId;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HistoricDetailQueryDtoSortingInnerSortByEnumTypeTransformer] instance.
  static HistoricDetailQueryDtoSortingInnerSortByEnumTypeTransformer? _instance;
}


/// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
class HistoricDetailQueryDtoSortingInnerSortOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const HistoricDetailQueryDtoSortingInnerSortOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = HistoricDetailQueryDtoSortingInnerSortOrderEnum._(r'asc');
  static const desc = HistoricDetailQueryDtoSortingInnerSortOrderEnum._(r'desc');

  /// List of all possible values in this [enum][HistoricDetailQueryDtoSortingInnerSortOrderEnum].
  static const values = <HistoricDetailQueryDtoSortingInnerSortOrderEnum>[
    asc,
    desc,
  ];

  static HistoricDetailQueryDtoSortingInnerSortOrderEnum? fromJson(dynamic value) => HistoricDetailQueryDtoSortingInnerSortOrderEnumTypeTransformer().decode(value);

  static List<HistoricDetailQueryDtoSortingInnerSortOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricDetailQueryDtoSortingInnerSortOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricDetailQueryDtoSortingInnerSortOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HistoricDetailQueryDtoSortingInnerSortOrderEnum] to String,
/// and [decode] dynamic data back to [HistoricDetailQueryDtoSortingInnerSortOrderEnum].
class HistoricDetailQueryDtoSortingInnerSortOrderEnumTypeTransformer {
  factory HistoricDetailQueryDtoSortingInnerSortOrderEnumTypeTransformer() => _instance ??= const HistoricDetailQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  const HistoricDetailQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  String encode(HistoricDetailQueryDtoSortingInnerSortOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HistoricDetailQueryDtoSortingInnerSortOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HistoricDetailQueryDtoSortingInnerSortOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return HistoricDetailQueryDtoSortingInnerSortOrderEnum.asc;
        case r'desc': return HistoricDetailQueryDtoSortingInnerSortOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HistoricDetailQueryDtoSortingInnerSortOrderEnumTypeTransformer] instance.
  static HistoricDetailQueryDtoSortingInnerSortOrderEnumTypeTransformer? _instance;
}


