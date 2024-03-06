//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JobQueryDtoSortingInner {
  /// Returns a new [JobQueryDtoSortingInner] instance.
  JobQueryDtoSortingInner({
    this.sortBy,
    this.sortOrder,
  });

  /// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  JobQueryDtoSortingInnerSortByEnum? sortBy;

  /// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
  JobQueryDtoSortingInnerSortOrderEnum? sortOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobQueryDtoSortingInner &&
    other.sortBy == sortBy &&
    other.sortOrder == sortOrder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sortBy == null ? 0 : sortBy!.hashCode) +
    (sortOrder == null ? 0 : sortOrder!.hashCode);

  @override
  String toString() => 'JobQueryDtoSortingInner[sortBy=$sortBy, sortOrder=$sortOrder]';

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

  /// Returns a new [JobQueryDtoSortingInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobQueryDtoSortingInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobQueryDtoSortingInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobQueryDtoSortingInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobQueryDtoSortingInner(
        sortBy: JobQueryDtoSortingInnerSortByEnum.fromJson(json[r'sortBy']),
        sortOrder: JobQueryDtoSortingInnerSortOrderEnum.fromJson(json[r'sortOrder']),
      );
    }
    return null;
  }

  static List<JobQueryDtoSortingInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobQueryDtoSortingInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobQueryDtoSortingInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobQueryDtoSortingInner> mapFromJson(dynamic json) {
    final map = <String, JobQueryDtoSortingInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobQueryDtoSortingInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobQueryDtoSortingInner-objects as value to a dart map
  static Map<String, List<JobQueryDtoSortingInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobQueryDtoSortingInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobQueryDtoSortingInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
class JobQueryDtoSortingInnerSortByEnum {
  /// Instantiate a new enum with the provided [value].
  const JobQueryDtoSortingInnerSortByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const jobId = JobQueryDtoSortingInnerSortByEnum._(r'jobId');
  static const executionId = JobQueryDtoSortingInnerSortByEnum._(r'executionId');
  static const processInstanceId = JobQueryDtoSortingInnerSortByEnum._(r'processInstanceId');
  static const processDefinitionId = JobQueryDtoSortingInnerSortByEnum._(r'processDefinitionId');
  static const processDefinitionKey = JobQueryDtoSortingInnerSortByEnum._(r'processDefinitionKey');
  static const jobPriority = JobQueryDtoSortingInnerSortByEnum._(r'jobPriority');
  static const jobRetries = JobQueryDtoSortingInnerSortByEnum._(r'jobRetries');
  static const jobDueDate = JobQueryDtoSortingInnerSortByEnum._(r'jobDueDate');
  static const tenantId = JobQueryDtoSortingInnerSortByEnum._(r'tenantId');

  /// List of all possible values in this [enum][JobQueryDtoSortingInnerSortByEnum].
  static const values = <JobQueryDtoSortingInnerSortByEnum>[
    jobId,
    executionId,
    processInstanceId,
    processDefinitionId,
    processDefinitionKey,
    jobPriority,
    jobRetries,
    jobDueDate,
    tenantId,
  ];

  static JobQueryDtoSortingInnerSortByEnum? fromJson(dynamic value) => JobQueryDtoSortingInnerSortByEnumTypeTransformer().decode(value);

  static List<JobQueryDtoSortingInnerSortByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobQueryDtoSortingInnerSortByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobQueryDtoSortingInnerSortByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [JobQueryDtoSortingInnerSortByEnum] to String,
/// and [decode] dynamic data back to [JobQueryDtoSortingInnerSortByEnum].
class JobQueryDtoSortingInnerSortByEnumTypeTransformer {
  factory JobQueryDtoSortingInnerSortByEnumTypeTransformer() => _instance ??= const JobQueryDtoSortingInnerSortByEnumTypeTransformer._();

  const JobQueryDtoSortingInnerSortByEnumTypeTransformer._();

  String encode(JobQueryDtoSortingInnerSortByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a JobQueryDtoSortingInnerSortByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  JobQueryDtoSortingInnerSortByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'jobId': return JobQueryDtoSortingInnerSortByEnum.jobId;
        case r'executionId': return JobQueryDtoSortingInnerSortByEnum.executionId;
        case r'processInstanceId': return JobQueryDtoSortingInnerSortByEnum.processInstanceId;
        case r'processDefinitionId': return JobQueryDtoSortingInnerSortByEnum.processDefinitionId;
        case r'processDefinitionKey': return JobQueryDtoSortingInnerSortByEnum.processDefinitionKey;
        case r'jobPriority': return JobQueryDtoSortingInnerSortByEnum.jobPriority;
        case r'jobRetries': return JobQueryDtoSortingInnerSortByEnum.jobRetries;
        case r'jobDueDate': return JobQueryDtoSortingInnerSortByEnum.jobDueDate;
        case r'tenantId': return JobQueryDtoSortingInnerSortByEnum.tenantId;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [JobQueryDtoSortingInnerSortByEnumTypeTransformer] instance.
  static JobQueryDtoSortingInnerSortByEnumTypeTransformer? _instance;
}


/// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
class JobQueryDtoSortingInnerSortOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const JobQueryDtoSortingInnerSortOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = JobQueryDtoSortingInnerSortOrderEnum._(r'asc');
  static const desc = JobQueryDtoSortingInnerSortOrderEnum._(r'desc');

  /// List of all possible values in this [enum][JobQueryDtoSortingInnerSortOrderEnum].
  static const values = <JobQueryDtoSortingInnerSortOrderEnum>[
    asc,
    desc,
  ];

  static JobQueryDtoSortingInnerSortOrderEnum? fromJson(dynamic value) => JobQueryDtoSortingInnerSortOrderEnumTypeTransformer().decode(value);

  static List<JobQueryDtoSortingInnerSortOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobQueryDtoSortingInnerSortOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobQueryDtoSortingInnerSortOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [JobQueryDtoSortingInnerSortOrderEnum] to String,
/// and [decode] dynamic data back to [JobQueryDtoSortingInnerSortOrderEnum].
class JobQueryDtoSortingInnerSortOrderEnumTypeTransformer {
  factory JobQueryDtoSortingInnerSortOrderEnumTypeTransformer() => _instance ??= const JobQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  const JobQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  String encode(JobQueryDtoSortingInnerSortOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a JobQueryDtoSortingInnerSortOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  JobQueryDtoSortingInnerSortOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return JobQueryDtoSortingInnerSortOrderEnum.asc;
        case r'desc': return JobQueryDtoSortingInnerSortOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [JobQueryDtoSortingInnerSortOrderEnumTypeTransformer] instance.
  static JobQueryDtoSortingInnerSortOrderEnumTypeTransformer? _instance;
}


