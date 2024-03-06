//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TaskQueryDtoSortingInner {
  /// Returns a new [TaskQueryDtoSortingInner] instance.
  TaskQueryDtoSortingInner({
    this.sortBy,
    this.sortOrder,
    this.parameters,
  });

  /// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  TaskQueryDtoSortingInnerSortByEnum? sortBy;

  /// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
  TaskQueryDtoSortingInnerSortOrderEnum? sortOrder;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SortTaskQueryParametersDto? parameters;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TaskQueryDtoSortingInner &&
    other.sortBy == sortBy &&
    other.sortOrder == sortOrder &&
    other.parameters == parameters;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sortBy == null ? 0 : sortBy!.hashCode) +
    (sortOrder == null ? 0 : sortOrder!.hashCode) +
    (parameters == null ? 0 : parameters!.hashCode);

  @override
  String toString() => 'TaskQueryDtoSortingInner[sortBy=$sortBy, sortOrder=$sortOrder, parameters=$parameters]';

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
    if (this.parameters != null) {
      json[r'parameters'] = this.parameters;
    } else {
      json[r'parameters'] = null;
    }
    return json;
  }

  /// Returns a new [TaskQueryDtoSortingInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskQueryDtoSortingInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TaskQueryDtoSortingInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TaskQueryDtoSortingInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskQueryDtoSortingInner(
        sortBy: TaskQueryDtoSortingInnerSortByEnum.fromJson(json[r'sortBy']),
        sortOrder: TaskQueryDtoSortingInnerSortOrderEnum.fromJson(json[r'sortOrder']),
        parameters: SortTaskQueryParametersDto.fromJson(json[r'parameters']),
      );
    }
    return null;
  }

  static List<TaskQueryDtoSortingInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskQueryDtoSortingInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskQueryDtoSortingInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskQueryDtoSortingInner> mapFromJson(dynamic json) {
    final map = <String, TaskQueryDtoSortingInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskQueryDtoSortingInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskQueryDtoSortingInner-objects as value to a dart map
  static Map<String, List<TaskQueryDtoSortingInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TaskQueryDtoSortingInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskQueryDtoSortingInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
class TaskQueryDtoSortingInnerSortByEnum {
  /// Instantiate a new enum with the provided [value].
  const TaskQueryDtoSortingInnerSortByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const instanceId = TaskQueryDtoSortingInnerSortByEnum._(r'instanceId');
  static const caseInstanceId = TaskQueryDtoSortingInnerSortByEnum._(r'caseInstanceId');
  static const dueDate = TaskQueryDtoSortingInnerSortByEnum._(r'dueDate');
  static const executionId = TaskQueryDtoSortingInnerSortByEnum._(r'executionId');
  static const caseExecutionId = TaskQueryDtoSortingInnerSortByEnum._(r'caseExecutionId');
  static const assignee = TaskQueryDtoSortingInnerSortByEnum._(r'assignee');
  static const created = TaskQueryDtoSortingInnerSortByEnum._(r'created');
  static const lastUpdated = TaskQueryDtoSortingInnerSortByEnum._(r'lastUpdated');
  static const followUpDate = TaskQueryDtoSortingInnerSortByEnum._(r'followUpDate');
  static const description = TaskQueryDtoSortingInnerSortByEnum._(r'description');
  static const id = TaskQueryDtoSortingInnerSortByEnum._(r'id');
  static const name = TaskQueryDtoSortingInnerSortByEnum._(r'name');
  static const nameCaseInsensitive = TaskQueryDtoSortingInnerSortByEnum._(r'nameCaseInsensitive');
  static const priority = TaskQueryDtoSortingInnerSortByEnum._(r'priority');
  static const processVariable = TaskQueryDtoSortingInnerSortByEnum._(r'processVariable');
  static const executionVariable = TaskQueryDtoSortingInnerSortByEnum._(r'executionVariable');
  static const taskVariable = TaskQueryDtoSortingInnerSortByEnum._(r'taskVariable');
  static const caseExecutionVariable = TaskQueryDtoSortingInnerSortByEnum._(r'caseExecutionVariable');
  static const caseInstanceVariable = TaskQueryDtoSortingInnerSortByEnum._(r'caseInstanceVariable');

  /// List of all possible values in this [enum][TaskQueryDtoSortingInnerSortByEnum].
  static const values = <TaskQueryDtoSortingInnerSortByEnum>[
    instanceId,
    caseInstanceId,
    dueDate,
    executionId,
    caseExecutionId,
    assignee,
    created,
    lastUpdated,
    followUpDate,
    description,
    id,
    name,
    nameCaseInsensitive,
    priority,
    processVariable,
    executionVariable,
    taskVariable,
    caseExecutionVariable,
    caseInstanceVariable,
  ];

  static TaskQueryDtoSortingInnerSortByEnum? fromJson(dynamic value) => TaskQueryDtoSortingInnerSortByEnumTypeTransformer().decode(value);

  static List<TaskQueryDtoSortingInnerSortByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskQueryDtoSortingInnerSortByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskQueryDtoSortingInnerSortByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TaskQueryDtoSortingInnerSortByEnum] to String,
/// and [decode] dynamic data back to [TaskQueryDtoSortingInnerSortByEnum].
class TaskQueryDtoSortingInnerSortByEnumTypeTransformer {
  factory TaskQueryDtoSortingInnerSortByEnumTypeTransformer() => _instance ??= const TaskQueryDtoSortingInnerSortByEnumTypeTransformer._();

  const TaskQueryDtoSortingInnerSortByEnumTypeTransformer._();

  String encode(TaskQueryDtoSortingInnerSortByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TaskQueryDtoSortingInnerSortByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TaskQueryDtoSortingInnerSortByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'instanceId': return TaskQueryDtoSortingInnerSortByEnum.instanceId;
        case r'caseInstanceId': return TaskQueryDtoSortingInnerSortByEnum.caseInstanceId;
        case r'dueDate': return TaskQueryDtoSortingInnerSortByEnum.dueDate;
        case r'executionId': return TaskQueryDtoSortingInnerSortByEnum.executionId;
        case r'caseExecutionId': return TaskQueryDtoSortingInnerSortByEnum.caseExecutionId;
        case r'assignee': return TaskQueryDtoSortingInnerSortByEnum.assignee;
        case r'created': return TaskQueryDtoSortingInnerSortByEnum.created;
        case r'lastUpdated': return TaskQueryDtoSortingInnerSortByEnum.lastUpdated;
        case r'followUpDate': return TaskQueryDtoSortingInnerSortByEnum.followUpDate;
        case r'description': return TaskQueryDtoSortingInnerSortByEnum.description;
        case r'id': return TaskQueryDtoSortingInnerSortByEnum.id;
        case r'name': return TaskQueryDtoSortingInnerSortByEnum.name;
        case r'nameCaseInsensitive': return TaskQueryDtoSortingInnerSortByEnum.nameCaseInsensitive;
        case r'priority': return TaskQueryDtoSortingInnerSortByEnum.priority;
        case r'processVariable': return TaskQueryDtoSortingInnerSortByEnum.processVariable;
        case r'executionVariable': return TaskQueryDtoSortingInnerSortByEnum.executionVariable;
        case r'taskVariable': return TaskQueryDtoSortingInnerSortByEnum.taskVariable;
        case r'caseExecutionVariable': return TaskQueryDtoSortingInnerSortByEnum.caseExecutionVariable;
        case r'caseInstanceVariable': return TaskQueryDtoSortingInnerSortByEnum.caseInstanceVariable;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TaskQueryDtoSortingInnerSortByEnumTypeTransformer] instance.
  static TaskQueryDtoSortingInnerSortByEnumTypeTransformer? _instance;
}


/// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
class TaskQueryDtoSortingInnerSortOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const TaskQueryDtoSortingInnerSortOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = TaskQueryDtoSortingInnerSortOrderEnum._(r'asc');
  static const desc = TaskQueryDtoSortingInnerSortOrderEnum._(r'desc');

  /// List of all possible values in this [enum][TaskQueryDtoSortingInnerSortOrderEnum].
  static const values = <TaskQueryDtoSortingInnerSortOrderEnum>[
    asc,
    desc,
  ];

  static TaskQueryDtoSortingInnerSortOrderEnum? fromJson(dynamic value) => TaskQueryDtoSortingInnerSortOrderEnumTypeTransformer().decode(value);

  static List<TaskQueryDtoSortingInnerSortOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskQueryDtoSortingInnerSortOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskQueryDtoSortingInnerSortOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TaskQueryDtoSortingInnerSortOrderEnum] to String,
/// and [decode] dynamic data back to [TaskQueryDtoSortingInnerSortOrderEnum].
class TaskQueryDtoSortingInnerSortOrderEnumTypeTransformer {
  factory TaskQueryDtoSortingInnerSortOrderEnumTypeTransformer() => _instance ??= const TaskQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  const TaskQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  String encode(TaskQueryDtoSortingInnerSortOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TaskQueryDtoSortingInnerSortOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TaskQueryDtoSortingInnerSortOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return TaskQueryDtoSortingInnerSortOrderEnum.asc;
        case r'desc': return TaskQueryDtoSortingInnerSortOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TaskQueryDtoSortingInnerSortOrderEnumTypeTransformer] instance.
  static TaskQueryDtoSortingInnerSortOrderEnumTypeTransformer? _instance;
}


