//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JobDefinitionQueryDtoSortingInner {
  /// Returns a new [JobDefinitionQueryDtoSortingInner] instance.
  JobDefinitionQueryDtoSortingInner({
    this.sortBy,
    this.sortOrder,
  });

  /// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  JobDefinitionQueryDtoSortingInnerSortByEnum? sortBy;

  /// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
  JobDefinitionQueryDtoSortingInnerSortOrderEnum? sortOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobDefinitionQueryDtoSortingInner &&
    other.sortBy == sortBy &&
    other.sortOrder == sortOrder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sortBy == null ? 0 : sortBy!.hashCode) +
    (sortOrder == null ? 0 : sortOrder!.hashCode);

  @override
  String toString() => 'JobDefinitionQueryDtoSortingInner[sortBy=$sortBy, sortOrder=$sortOrder]';

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

  /// Returns a new [JobDefinitionQueryDtoSortingInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobDefinitionQueryDtoSortingInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobDefinitionQueryDtoSortingInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobDefinitionQueryDtoSortingInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobDefinitionQueryDtoSortingInner(
        sortBy: JobDefinitionQueryDtoSortingInnerSortByEnum.fromJson(json[r'sortBy']),
        sortOrder: JobDefinitionQueryDtoSortingInnerSortOrderEnum.fromJson(json[r'sortOrder']),
      );
    }
    return null;
  }

  static List<JobDefinitionQueryDtoSortingInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobDefinitionQueryDtoSortingInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobDefinitionQueryDtoSortingInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobDefinitionQueryDtoSortingInner> mapFromJson(dynamic json) {
    final map = <String, JobDefinitionQueryDtoSortingInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobDefinitionQueryDtoSortingInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobDefinitionQueryDtoSortingInner-objects as value to a dart map
  static Map<String, List<JobDefinitionQueryDtoSortingInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobDefinitionQueryDtoSortingInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobDefinitionQueryDtoSortingInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
class JobDefinitionQueryDtoSortingInnerSortByEnum {
  /// Instantiate a new enum with the provided [value].
  const JobDefinitionQueryDtoSortingInnerSortByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const jobDefinitionId = JobDefinitionQueryDtoSortingInnerSortByEnum._(r'jobDefinitionId');
  static const activityId = JobDefinitionQueryDtoSortingInnerSortByEnum._(r'activityId');
  static const processDefinitionId = JobDefinitionQueryDtoSortingInnerSortByEnum._(r'processDefinitionId');
  static const processDefinitionKey = JobDefinitionQueryDtoSortingInnerSortByEnum._(r'processDefinitionKey');
  static const jobType = JobDefinitionQueryDtoSortingInnerSortByEnum._(r'jobType');
  static const jobConfiguration = JobDefinitionQueryDtoSortingInnerSortByEnum._(r'jobConfiguration');
  static const tenantId = JobDefinitionQueryDtoSortingInnerSortByEnum._(r'tenantId');

  /// List of all possible values in this [enum][JobDefinitionQueryDtoSortingInnerSortByEnum].
  static const values = <JobDefinitionQueryDtoSortingInnerSortByEnum>[
    jobDefinitionId,
    activityId,
    processDefinitionId,
    processDefinitionKey,
    jobType,
    jobConfiguration,
    tenantId,
  ];

  static JobDefinitionQueryDtoSortingInnerSortByEnum? fromJson(dynamic value) => JobDefinitionQueryDtoSortingInnerSortByEnumTypeTransformer().decode(value);

  static List<JobDefinitionQueryDtoSortingInnerSortByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobDefinitionQueryDtoSortingInnerSortByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobDefinitionQueryDtoSortingInnerSortByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [JobDefinitionQueryDtoSortingInnerSortByEnum] to String,
/// and [decode] dynamic data back to [JobDefinitionQueryDtoSortingInnerSortByEnum].
class JobDefinitionQueryDtoSortingInnerSortByEnumTypeTransformer {
  factory JobDefinitionQueryDtoSortingInnerSortByEnumTypeTransformer() => _instance ??= const JobDefinitionQueryDtoSortingInnerSortByEnumTypeTransformer._();

  const JobDefinitionQueryDtoSortingInnerSortByEnumTypeTransformer._();

  String encode(JobDefinitionQueryDtoSortingInnerSortByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a JobDefinitionQueryDtoSortingInnerSortByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  JobDefinitionQueryDtoSortingInnerSortByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'jobDefinitionId': return JobDefinitionQueryDtoSortingInnerSortByEnum.jobDefinitionId;
        case r'activityId': return JobDefinitionQueryDtoSortingInnerSortByEnum.activityId;
        case r'processDefinitionId': return JobDefinitionQueryDtoSortingInnerSortByEnum.processDefinitionId;
        case r'processDefinitionKey': return JobDefinitionQueryDtoSortingInnerSortByEnum.processDefinitionKey;
        case r'jobType': return JobDefinitionQueryDtoSortingInnerSortByEnum.jobType;
        case r'jobConfiguration': return JobDefinitionQueryDtoSortingInnerSortByEnum.jobConfiguration;
        case r'tenantId': return JobDefinitionQueryDtoSortingInnerSortByEnum.tenantId;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [JobDefinitionQueryDtoSortingInnerSortByEnumTypeTransformer] instance.
  static JobDefinitionQueryDtoSortingInnerSortByEnumTypeTransformer? _instance;
}


/// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
class JobDefinitionQueryDtoSortingInnerSortOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const JobDefinitionQueryDtoSortingInnerSortOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = JobDefinitionQueryDtoSortingInnerSortOrderEnum._(r'asc');
  static const desc = JobDefinitionQueryDtoSortingInnerSortOrderEnum._(r'desc');

  /// List of all possible values in this [enum][JobDefinitionQueryDtoSortingInnerSortOrderEnum].
  static const values = <JobDefinitionQueryDtoSortingInnerSortOrderEnum>[
    asc,
    desc,
  ];

  static JobDefinitionQueryDtoSortingInnerSortOrderEnum? fromJson(dynamic value) => JobDefinitionQueryDtoSortingInnerSortOrderEnumTypeTransformer().decode(value);

  static List<JobDefinitionQueryDtoSortingInnerSortOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobDefinitionQueryDtoSortingInnerSortOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobDefinitionQueryDtoSortingInnerSortOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [JobDefinitionQueryDtoSortingInnerSortOrderEnum] to String,
/// and [decode] dynamic data back to [JobDefinitionQueryDtoSortingInnerSortOrderEnum].
class JobDefinitionQueryDtoSortingInnerSortOrderEnumTypeTransformer {
  factory JobDefinitionQueryDtoSortingInnerSortOrderEnumTypeTransformer() => _instance ??= const JobDefinitionQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  const JobDefinitionQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  String encode(JobDefinitionQueryDtoSortingInnerSortOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a JobDefinitionQueryDtoSortingInnerSortOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  JobDefinitionQueryDtoSortingInnerSortOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return JobDefinitionQueryDtoSortingInnerSortOrderEnum.asc;
        case r'desc': return JobDefinitionQueryDtoSortingInnerSortOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [JobDefinitionQueryDtoSortingInnerSortOrderEnumTypeTransformer] instance.
  static JobDefinitionQueryDtoSortingInnerSortOrderEnumTypeTransformer? _instance;
}


