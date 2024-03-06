//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricJobLogQueryDtoSortingInner {
  /// Returns a new [HistoricJobLogQueryDtoSortingInner] instance.
  HistoricJobLogQueryDtoSortingInner({
    this.sortBy,
    this.sortOrder,
  });

  /// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  HistoricJobLogQueryDtoSortingInnerSortByEnum? sortBy;

  /// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
  HistoricJobLogQueryDtoSortingInnerSortOrderEnum? sortOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricJobLogQueryDtoSortingInner &&
    other.sortBy == sortBy &&
    other.sortOrder == sortOrder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sortBy == null ? 0 : sortBy!.hashCode) +
    (sortOrder == null ? 0 : sortOrder!.hashCode);

  @override
  String toString() => 'HistoricJobLogQueryDtoSortingInner[sortBy=$sortBy, sortOrder=$sortOrder]';

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

  /// Returns a new [HistoricJobLogQueryDtoSortingInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricJobLogQueryDtoSortingInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricJobLogQueryDtoSortingInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricJobLogQueryDtoSortingInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricJobLogQueryDtoSortingInner(
        sortBy: HistoricJobLogQueryDtoSortingInnerSortByEnum.fromJson(json[r'sortBy']),
        sortOrder: HistoricJobLogQueryDtoSortingInnerSortOrderEnum.fromJson(json[r'sortOrder']),
      );
    }
    return null;
  }

  static List<HistoricJobLogQueryDtoSortingInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricJobLogQueryDtoSortingInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricJobLogQueryDtoSortingInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricJobLogQueryDtoSortingInner> mapFromJson(dynamic json) {
    final map = <String, HistoricJobLogQueryDtoSortingInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricJobLogQueryDtoSortingInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricJobLogQueryDtoSortingInner-objects as value to a dart map
  static Map<String, List<HistoricJobLogQueryDtoSortingInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricJobLogQueryDtoSortingInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricJobLogQueryDtoSortingInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
class HistoricJobLogQueryDtoSortingInnerSortByEnum {
  /// Instantiate a new enum with the provided [value].
  const HistoricJobLogQueryDtoSortingInnerSortByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const timestamp = HistoricJobLogQueryDtoSortingInnerSortByEnum._(r'timestamp');
  static const jobId = HistoricJobLogQueryDtoSortingInnerSortByEnum._(r'jobId');
  static const jobDefinitionId = HistoricJobLogQueryDtoSortingInnerSortByEnum._(r'jobDefinitionId');
  static const jobDueDate = HistoricJobLogQueryDtoSortingInnerSortByEnum._(r'jobDueDate');
  static const jobRetries = HistoricJobLogQueryDtoSortingInnerSortByEnum._(r'jobRetries');
  static const jobPriority = HistoricJobLogQueryDtoSortingInnerSortByEnum._(r'jobPriority');
  static const activityId = HistoricJobLogQueryDtoSortingInnerSortByEnum._(r'activityId');
  static const executionId = HistoricJobLogQueryDtoSortingInnerSortByEnum._(r'executionId');
  static const processInstanceId = HistoricJobLogQueryDtoSortingInnerSortByEnum._(r'processInstanceId');
  static const processDefinitionId = HistoricJobLogQueryDtoSortingInnerSortByEnum._(r'processDefinitionId');
  static const processDefinitionKey = HistoricJobLogQueryDtoSortingInnerSortByEnum._(r'processDefinitionKey');
  static const deploymentId = HistoricJobLogQueryDtoSortingInnerSortByEnum._(r'deploymentId');
  static const hostname = HistoricJobLogQueryDtoSortingInnerSortByEnum._(r'hostname');
  static const occurrence = HistoricJobLogQueryDtoSortingInnerSortByEnum._(r'occurrence');
  static const tenantId = HistoricJobLogQueryDtoSortingInnerSortByEnum._(r'tenantId');

  /// List of all possible values in this [enum][HistoricJobLogQueryDtoSortingInnerSortByEnum].
  static const values = <HistoricJobLogQueryDtoSortingInnerSortByEnum>[
    timestamp,
    jobId,
    jobDefinitionId,
    jobDueDate,
    jobRetries,
    jobPriority,
    activityId,
    executionId,
    processInstanceId,
    processDefinitionId,
    processDefinitionKey,
    deploymentId,
    hostname,
    occurrence,
    tenantId,
  ];

  static HistoricJobLogQueryDtoSortingInnerSortByEnum? fromJson(dynamic value) => HistoricJobLogQueryDtoSortingInnerSortByEnumTypeTransformer().decode(value);

  static List<HistoricJobLogQueryDtoSortingInnerSortByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricJobLogQueryDtoSortingInnerSortByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricJobLogQueryDtoSortingInnerSortByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HistoricJobLogQueryDtoSortingInnerSortByEnum] to String,
/// and [decode] dynamic data back to [HistoricJobLogQueryDtoSortingInnerSortByEnum].
class HistoricJobLogQueryDtoSortingInnerSortByEnumTypeTransformer {
  factory HistoricJobLogQueryDtoSortingInnerSortByEnumTypeTransformer() => _instance ??= const HistoricJobLogQueryDtoSortingInnerSortByEnumTypeTransformer._();

  const HistoricJobLogQueryDtoSortingInnerSortByEnumTypeTransformer._();

  String encode(HistoricJobLogQueryDtoSortingInnerSortByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HistoricJobLogQueryDtoSortingInnerSortByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HistoricJobLogQueryDtoSortingInnerSortByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'timestamp': return HistoricJobLogQueryDtoSortingInnerSortByEnum.timestamp;
        case r'jobId': return HistoricJobLogQueryDtoSortingInnerSortByEnum.jobId;
        case r'jobDefinitionId': return HistoricJobLogQueryDtoSortingInnerSortByEnum.jobDefinitionId;
        case r'jobDueDate': return HistoricJobLogQueryDtoSortingInnerSortByEnum.jobDueDate;
        case r'jobRetries': return HistoricJobLogQueryDtoSortingInnerSortByEnum.jobRetries;
        case r'jobPriority': return HistoricJobLogQueryDtoSortingInnerSortByEnum.jobPriority;
        case r'activityId': return HistoricJobLogQueryDtoSortingInnerSortByEnum.activityId;
        case r'executionId': return HistoricJobLogQueryDtoSortingInnerSortByEnum.executionId;
        case r'processInstanceId': return HistoricJobLogQueryDtoSortingInnerSortByEnum.processInstanceId;
        case r'processDefinitionId': return HistoricJobLogQueryDtoSortingInnerSortByEnum.processDefinitionId;
        case r'processDefinitionKey': return HistoricJobLogQueryDtoSortingInnerSortByEnum.processDefinitionKey;
        case r'deploymentId': return HistoricJobLogQueryDtoSortingInnerSortByEnum.deploymentId;
        case r'hostname': return HistoricJobLogQueryDtoSortingInnerSortByEnum.hostname;
        case r'occurrence': return HistoricJobLogQueryDtoSortingInnerSortByEnum.occurrence;
        case r'tenantId': return HistoricJobLogQueryDtoSortingInnerSortByEnum.tenantId;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HistoricJobLogQueryDtoSortingInnerSortByEnumTypeTransformer] instance.
  static HistoricJobLogQueryDtoSortingInnerSortByEnumTypeTransformer? _instance;
}


/// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
class HistoricJobLogQueryDtoSortingInnerSortOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const HistoricJobLogQueryDtoSortingInnerSortOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = HistoricJobLogQueryDtoSortingInnerSortOrderEnum._(r'asc');
  static const desc = HistoricJobLogQueryDtoSortingInnerSortOrderEnum._(r'desc');

  /// List of all possible values in this [enum][HistoricJobLogQueryDtoSortingInnerSortOrderEnum].
  static const values = <HistoricJobLogQueryDtoSortingInnerSortOrderEnum>[
    asc,
    desc,
  ];

  static HistoricJobLogQueryDtoSortingInnerSortOrderEnum? fromJson(dynamic value) => HistoricJobLogQueryDtoSortingInnerSortOrderEnumTypeTransformer().decode(value);

  static List<HistoricJobLogQueryDtoSortingInnerSortOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricJobLogQueryDtoSortingInnerSortOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricJobLogQueryDtoSortingInnerSortOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HistoricJobLogQueryDtoSortingInnerSortOrderEnum] to String,
/// and [decode] dynamic data back to [HistoricJobLogQueryDtoSortingInnerSortOrderEnum].
class HistoricJobLogQueryDtoSortingInnerSortOrderEnumTypeTransformer {
  factory HistoricJobLogQueryDtoSortingInnerSortOrderEnumTypeTransformer() => _instance ??= const HistoricJobLogQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  const HistoricJobLogQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  String encode(HistoricJobLogQueryDtoSortingInnerSortOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HistoricJobLogQueryDtoSortingInnerSortOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HistoricJobLogQueryDtoSortingInnerSortOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return HistoricJobLogQueryDtoSortingInnerSortOrderEnum.asc;
        case r'desc': return HistoricJobLogQueryDtoSortingInnerSortOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HistoricJobLogQueryDtoSortingInnerSortOrderEnumTypeTransformer] instance.
  static HistoricJobLogQueryDtoSortingInnerSortOrderEnumTypeTransformer? _instance;
}


