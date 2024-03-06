//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricExternalTaskLogQueryDtoSortingInner {
  /// Returns a new [HistoricExternalTaskLogQueryDtoSortingInner] instance.
  HistoricExternalTaskLogQueryDtoSortingInner({
    this.sortBy,
    this.sortOrder,
  });

  /// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum? sortBy;

  /// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
  HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnum? sortOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricExternalTaskLogQueryDtoSortingInner &&
    other.sortBy == sortBy &&
    other.sortOrder == sortOrder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sortBy == null ? 0 : sortBy!.hashCode) +
    (sortOrder == null ? 0 : sortOrder!.hashCode);

  @override
  String toString() => 'HistoricExternalTaskLogQueryDtoSortingInner[sortBy=$sortBy, sortOrder=$sortOrder]';

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

  /// Returns a new [HistoricExternalTaskLogQueryDtoSortingInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricExternalTaskLogQueryDtoSortingInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricExternalTaskLogQueryDtoSortingInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricExternalTaskLogQueryDtoSortingInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricExternalTaskLogQueryDtoSortingInner(
        sortBy: HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum.fromJson(json[r'sortBy']),
        sortOrder: HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnum.fromJson(json[r'sortOrder']),
      );
    }
    return null;
  }

  static List<HistoricExternalTaskLogQueryDtoSortingInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricExternalTaskLogQueryDtoSortingInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricExternalTaskLogQueryDtoSortingInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricExternalTaskLogQueryDtoSortingInner> mapFromJson(dynamic json) {
    final map = <String, HistoricExternalTaskLogQueryDtoSortingInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricExternalTaskLogQueryDtoSortingInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricExternalTaskLogQueryDtoSortingInner-objects as value to a dart map
  static Map<String, List<HistoricExternalTaskLogQueryDtoSortingInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricExternalTaskLogQueryDtoSortingInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricExternalTaskLogQueryDtoSortingInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
class HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum {
  /// Instantiate a new enum with the provided [value].
  const HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const timestamp = HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum._(r'timestamp');
  static const externalTaskId = HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum._(r'externalTaskId');
  static const topicName = HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum._(r'topicName');
  static const workerId = HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum._(r'workerId');
  static const retries = HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum._(r'retries');
  static const priority = HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum._(r'priority');
  static const activityId = HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum._(r'activityId');
  static const activityInstanceId = HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum._(r'activityInstanceId');
  static const executionId = HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum._(r'executionId');
  static const processInstanceId = HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum._(r'processInstanceId');
  static const processDefinitionId = HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum._(r'processDefinitionId');
  static const processDefinitionKey = HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum._(r'processDefinitionKey');
  static const tenantId = HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum._(r'tenantId');

  /// List of all possible values in this [enum][HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum].
  static const values = <HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum>[
    timestamp,
    externalTaskId,
    topicName,
    workerId,
    retries,
    priority,
    activityId,
    activityInstanceId,
    executionId,
    processInstanceId,
    processDefinitionId,
    processDefinitionKey,
    tenantId,
  ];

  static HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum? fromJson(dynamic value) => HistoricExternalTaskLogQueryDtoSortingInnerSortByEnumTypeTransformer().decode(value);

  static List<HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum] to String,
/// and [decode] dynamic data back to [HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum].
class HistoricExternalTaskLogQueryDtoSortingInnerSortByEnumTypeTransformer {
  factory HistoricExternalTaskLogQueryDtoSortingInnerSortByEnumTypeTransformer() => _instance ??= const HistoricExternalTaskLogQueryDtoSortingInnerSortByEnumTypeTransformer._();

  const HistoricExternalTaskLogQueryDtoSortingInnerSortByEnumTypeTransformer._();

  String encode(HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'timestamp': return HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum.timestamp;
        case r'externalTaskId': return HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum.externalTaskId;
        case r'topicName': return HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum.topicName;
        case r'workerId': return HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum.workerId;
        case r'retries': return HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum.retries;
        case r'priority': return HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum.priority;
        case r'activityId': return HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum.activityId;
        case r'activityInstanceId': return HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum.activityInstanceId;
        case r'executionId': return HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum.executionId;
        case r'processInstanceId': return HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum.processInstanceId;
        case r'processDefinitionId': return HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum.processDefinitionId;
        case r'processDefinitionKey': return HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum.processDefinitionKey;
        case r'tenantId': return HistoricExternalTaskLogQueryDtoSortingInnerSortByEnum.tenantId;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HistoricExternalTaskLogQueryDtoSortingInnerSortByEnumTypeTransformer] instance.
  static HistoricExternalTaskLogQueryDtoSortingInnerSortByEnumTypeTransformer? _instance;
}


/// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
class HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnum._(r'asc');
  static const desc = HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnum._(r'desc');

  /// List of all possible values in this [enum][HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnum].
  static const values = <HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnum>[
    asc,
    desc,
  ];

  static HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnum? fromJson(dynamic value) => HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnumTypeTransformer().decode(value);

  static List<HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnum] to String,
/// and [decode] dynamic data back to [HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnum].
class HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnumTypeTransformer {
  factory HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnumTypeTransformer() => _instance ??= const HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  const HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  String encode(HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnum.asc;
        case r'desc': return HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnumTypeTransformer] instance.
  static HistoricExternalTaskLogQueryDtoSortingInnerSortOrderEnumTypeTransformer? _instance;
}


