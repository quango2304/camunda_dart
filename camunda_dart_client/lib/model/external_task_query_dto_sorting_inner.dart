//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExternalTaskQueryDtoSortingInner {
  /// Returns a new [ExternalTaskQueryDtoSortingInner] instance.
  ExternalTaskQueryDtoSortingInner({
    this.sortBy,
    this.sortOrder,
  });

  /// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  ExternalTaskQueryDtoSortingInnerSortByEnum? sortBy;

  /// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
  ExternalTaskQueryDtoSortingInnerSortOrderEnum? sortOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExternalTaskQueryDtoSortingInner &&
    other.sortBy == sortBy &&
    other.sortOrder == sortOrder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sortBy == null ? 0 : sortBy!.hashCode) +
    (sortOrder == null ? 0 : sortOrder!.hashCode);

  @override
  String toString() => 'ExternalTaskQueryDtoSortingInner[sortBy=$sortBy, sortOrder=$sortOrder]';

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

  /// Returns a new [ExternalTaskQueryDtoSortingInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExternalTaskQueryDtoSortingInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExternalTaskQueryDtoSortingInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExternalTaskQueryDtoSortingInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExternalTaskQueryDtoSortingInner(
        sortBy: ExternalTaskQueryDtoSortingInnerSortByEnum.fromJson(json[r'sortBy']),
        sortOrder: ExternalTaskQueryDtoSortingInnerSortOrderEnum.fromJson(json[r'sortOrder']),
      );
    }
    return null;
  }

  static List<ExternalTaskQueryDtoSortingInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExternalTaskQueryDtoSortingInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExternalTaskQueryDtoSortingInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExternalTaskQueryDtoSortingInner> mapFromJson(dynamic json) {
    final map = <String, ExternalTaskQueryDtoSortingInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExternalTaskQueryDtoSortingInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExternalTaskQueryDtoSortingInner-objects as value to a dart map
  static Map<String, List<ExternalTaskQueryDtoSortingInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExternalTaskQueryDtoSortingInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExternalTaskQueryDtoSortingInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
class ExternalTaskQueryDtoSortingInnerSortByEnum {
  /// Instantiate a new enum with the provided [value].
  const ExternalTaskQueryDtoSortingInnerSortByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const id = ExternalTaskQueryDtoSortingInnerSortByEnum._(r'id');
  static const lockExpirationTime = ExternalTaskQueryDtoSortingInnerSortByEnum._(r'lockExpirationTime');
  static const processInstanceId = ExternalTaskQueryDtoSortingInnerSortByEnum._(r'processInstanceId');
  static const processDefinitionId = ExternalTaskQueryDtoSortingInnerSortByEnum._(r'processDefinitionId');
  static const processDefinitionKey = ExternalTaskQueryDtoSortingInnerSortByEnum._(r'processDefinitionKey');
  static const taskPriority = ExternalTaskQueryDtoSortingInnerSortByEnum._(r'taskPriority');
  static const tenantId = ExternalTaskQueryDtoSortingInnerSortByEnum._(r'tenantId');

  /// List of all possible values in this [enum][ExternalTaskQueryDtoSortingInnerSortByEnum].
  static const values = <ExternalTaskQueryDtoSortingInnerSortByEnum>[
    id,
    lockExpirationTime,
    processInstanceId,
    processDefinitionId,
    processDefinitionKey,
    taskPriority,
    tenantId,
  ];

  static ExternalTaskQueryDtoSortingInnerSortByEnum? fromJson(dynamic value) => ExternalTaskQueryDtoSortingInnerSortByEnumTypeTransformer().decode(value);

  static List<ExternalTaskQueryDtoSortingInnerSortByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExternalTaskQueryDtoSortingInnerSortByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExternalTaskQueryDtoSortingInnerSortByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExternalTaskQueryDtoSortingInnerSortByEnum] to String,
/// and [decode] dynamic data back to [ExternalTaskQueryDtoSortingInnerSortByEnum].
class ExternalTaskQueryDtoSortingInnerSortByEnumTypeTransformer {
  factory ExternalTaskQueryDtoSortingInnerSortByEnumTypeTransformer() => _instance ??= const ExternalTaskQueryDtoSortingInnerSortByEnumTypeTransformer._();

  const ExternalTaskQueryDtoSortingInnerSortByEnumTypeTransformer._();

  String encode(ExternalTaskQueryDtoSortingInnerSortByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExternalTaskQueryDtoSortingInnerSortByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExternalTaskQueryDtoSortingInnerSortByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'id': return ExternalTaskQueryDtoSortingInnerSortByEnum.id;
        case r'lockExpirationTime': return ExternalTaskQueryDtoSortingInnerSortByEnum.lockExpirationTime;
        case r'processInstanceId': return ExternalTaskQueryDtoSortingInnerSortByEnum.processInstanceId;
        case r'processDefinitionId': return ExternalTaskQueryDtoSortingInnerSortByEnum.processDefinitionId;
        case r'processDefinitionKey': return ExternalTaskQueryDtoSortingInnerSortByEnum.processDefinitionKey;
        case r'taskPriority': return ExternalTaskQueryDtoSortingInnerSortByEnum.taskPriority;
        case r'tenantId': return ExternalTaskQueryDtoSortingInnerSortByEnum.tenantId;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExternalTaskQueryDtoSortingInnerSortByEnumTypeTransformer] instance.
  static ExternalTaskQueryDtoSortingInnerSortByEnumTypeTransformer? _instance;
}


/// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
class ExternalTaskQueryDtoSortingInnerSortOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const ExternalTaskQueryDtoSortingInnerSortOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = ExternalTaskQueryDtoSortingInnerSortOrderEnum._(r'asc');
  static const desc = ExternalTaskQueryDtoSortingInnerSortOrderEnum._(r'desc');

  /// List of all possible values in this [enum][ExternalTaskQueryDtoSortingInnerSortOrderEnum].
  static const values = <ExternalTaskQueryDtoSortingInnerSortOrderEnum>[
    asc,
    desc,
  ];

  static ExternalTaskQueryDtoSortingInnerSortOrderEnum? fromJson(dynamic value) => ExternalTaskQueryDtoSortingInnerSortOrderEnumTypeTransformer().decode(value);

  static List<ExternalTaskQueryDtoSortingInnerSortOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExternalTaskQueryDtoSortingInnerSortOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExternalTaskQueryDtoSortingInnerSortOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExternalTaskQueryDtoSortingInnerSortOrderEnum] to String,
/// and [decode] dynamic data back to [ExternalTaskQueryDtoSortingInnerSortOrderEnum].
class ExternalTaskQueryDtoSortingInnerSortOrderEnumTypeTransformer {
  factory ExternalTaskQueryDtoSortingInnerSortOrderEnumTypeTransformer() => _instance ??= const ExternalTaskQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  const ExternalTaskQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  String encode(ExternalTaskQueryDtoSortingInnerSortOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExternalTaskQueryDtoSortingInnerSortOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExternalTaskQueryDtoSortingInnerSortOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return ExternalTaskQueryDtoSortingInnerSortOrderEnum.asc;
        case r'desc': return ExternalTaskQueryDtoSortingInnerSortOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExternalTaskQueryDtoSortingInnerSortOrderEnumTypeTransformer] instance.
  static ExternalTaskQueryDtoSortingInnerSortOrderEnumTypeTransformer? _instance;
}


