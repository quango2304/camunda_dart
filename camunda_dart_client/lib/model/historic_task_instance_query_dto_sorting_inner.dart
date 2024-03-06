//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricTaskInstanceQueryDtoSortingInner {
  /// Returns a new [HistoricTaskInstanceQueryDtoSortingInner] instance.
  HistoricTaskInstanceQueryDtoSortingInner({
    this.sortBy,
    this.sortOrder,
  });

  /// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  HistoricTaskInstanceQueryDtoSortingInnerSortByEnum? sortBy;

  /// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
  HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnum? sortOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricTaskInstanceQueryDtoSortingInner &&
    other.sortBy == sortBy &&
    other.sortOrder == sortOrder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sortBy == null ? 0 : sortBy!.hashCode) +
    (sortOrder == null ? 0 : sortOrder!.hashCode);

  @override
  String toString() => 'HistoricTaskInstanceQueryDtoSortingInner[sortBy=$sortBy, sortOrder=$sortOrder]';

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

  /// Returns a new [HistoricTaskInstanceQueryDtoSortingInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricTaskInstanceQueryDtoSortingInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricTaskInstanceQueryDtoSortingInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricTaskInstanceQueryDtoSortingInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricTaskInstanceQueryDtoSortingInner(
        sortBy: HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.fromJson(json[r'sortBy']),
        sortOrder: HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnum.fromJson(json[r'sortOrder']),
      );
    }
    return null;
  }

  static List<HistoricTaskInstanceQueryDtoSortingInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricTaskInstanceQueryDtoSortingInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricTaskInstanceQueryDtoSortingInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricTaskInstanceQueryDtoSortingInner> mapFromJson(dynamic json) {
    final map = <String, HistoricTaskInstanceQueryDtoSortingInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricTaskInstanceQueryDtoSortingInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricTaskInstanceQueryDtoSortingInner-objects as value to a dart map
  static Map<String, List<HistoricTaskInstanceQueryDtoSortingInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricTaskInstanceQueryDtoSortingInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricTaskInstanceQueryDtoSortingInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
class HistoricTaskInstanceQueryDtoSortingInnerSortByEnum {
  /// Instantiate a new enum with the provided [value].
  const HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const taskId = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'taskId');
  static const activityInstanceId = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'activityInstanceId');
  static const processDefinitionId = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'processDefinitionId');
  static const processInstanceId = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'processInstanceId');
  static const executionId = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'executionId');
  static const duration = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'duration');
  static const endTime = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'endTime');
  static const startTime = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'startTime');
  static const taskName = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'taskName');
  static const taskDescription = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'taskDescription');
  static const assignee = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'assignee');
  static const owner = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'owner');
  static const dueDate = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'dueDate');
  static const followUpDate = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'followUpDate');
  static const deleteReason = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'deleteReason');
  static const taskDefinitionKey = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'taskDefinitionKey');
  static const priority = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'priority');
  static const caseDefinitionId = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'caseDefinitionId');
  static const caseInstanceId = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'caseInstanceId');
  static const caseExecutionId = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'caseExecutionId');
  static const tenantId = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum._(r'tenantId');

  /// List of all possible values in this [enum][HistoricTaskInstanceQueryDtoSortingInnerSortByEnum].
  static const values = <HistoricTaskInstanceQueryDtoSortingInnerSortByEnum>[
    taskId,
    activityInstanceId,
    processDefinitionId,
    processInstanceId,
    executionId,
    duration,
    endTime,
    startTime,
    taskName,
    taskDescription,
    assignee,
    owner,
    dueDate,
    followUpDate,
    deleteReason,
    taskDefinitionKey,
    priority,
    caseDefinitionId,
    caseInstanceId,
    caseExecutionId,
    tenantId,
  ];

  static HistoricTaskInstanceQueryDtoSortingInnerSortByEnum? fromJson(dynamic value) => HistoricTaskInstanceQueryDtoSortingInnerSortByEnumTypeTransformer().decode(value);

  static List<HistoricTaskInstanceQueryDtoSortingInnerSortByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricTaskInstanceQueryDtoSortingInnerSortByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HistoricTaskInstanceQueryDtoSortingInnerSortByEnum] to String,
/// and [decode] dynamic data back to [HistoricTaskInstanceQueryDtoSortingInnerSortByEnum].
class HistoricTaskInstanceQueryDtoSortingInnerSortByEnumTypeTransformer {
  factory HistoricTaskInstanceQueryDtoSortingInnerSortByEnumTypeTransformer() => _instance ??= const HistoricTaskInstanceQueryDtoSortingInnerSortByEnumTypeTransformer._();

  const HistoricTaskInstanceQueryDtoSortingInnerSortByEnumTypeTransformer._();

  String encode(HistoricTaskInstanceQueryDtoSortingInnerSortByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HistoricTaskInstanceQueryDtoSortingInnerSortByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'taskId': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.taskId;
        case r'activityInstanceId': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.activityInstanceId;
        case r'processDefinitionId': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.processDefinitionId;
        case r'processInstanceId': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.processInstanceId;
        case r'executionId': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.executionId;
        case r'duration': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.duration;
        case r'endTime': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.endTime;
        case r'startTime': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.startTime;
        case r'taskName': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.taskName;
        case r'taskDescription': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.taskDescription;
        case r'assignee': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.assignee;
        case r'owner': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.owner;
        case r'dueDate': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.dueDate;
        case r'followUpDate': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.followUpDate;
        case r'deleteReason': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.deleteReason;
        case r'taskDefinitionKey': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.taskDefinitionKey;
        case r'priority': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.priority;
        case r'caseDefinitionId': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.caseDefinitionId;
        case r'caseInstanceId': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.caseInstanceId;
        case r'caseExecutionId': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.caseExecutionId;
        case r'tenantId': return HistoricTaskInstanceQueryDtoSortingInnerSortByEnum.tenantId;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HistoricTaskInstanceQueryDtoSortingInnerSortByEnumTypeTransformer] instance.
  static HistoricTaskInstanceQueryDtoSortingInnerSortByEnumTypeTransformer? _instance;
}


/// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
class HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnum._(r'asc');
  static const desc = HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnum._(r'desc');

  /// List of all possible values in this [enum][HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnum].
  static const values = <HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnum>[
    asc,
    desc,
  ];

  static HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnum? fromJson(dynamic value) => HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer().decode(value);

  static List<HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnum] to String,
/// and [decode] dynamic data back to [HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnum].
class HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer {
  factory HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer() => _instance ??= const HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  const HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  String encode(HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnum.asc;
        case r'desc': return HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer] instance.
  static HistoricTaskInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer? _instance;
}


