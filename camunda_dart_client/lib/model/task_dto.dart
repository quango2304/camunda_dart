//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TaskDto {
  /// Returns a new [TaskDto] instance.
  TaskDto({
    this.id,
    this.name,
    this.assignee,
    this.owner,
    this.created,
    this.lastUpdated,
    this.due,
    this.followUp,
    this.delegationState,
    this.description,
    this.executionId,
    this.parentTaskId,
    this.priority,
    this.processDefinitionId,
    this.processInstanceId,
    this.caseExecutionId,
    this.caseDefinitionId,
    this.caseInstanceId,
    this.taskDefinitionKey,
    this.suspended,
    this.formKey,
    this.camundaFormRef,
    this.tenantId,
  });

  /// The task id.
  String? id;

  /// The task name.
  String? name;

  /// The assignee's id.
  String? assignee;

  /// The owner's id.
  String? owner;

  /// The date the task was created on. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? created;

  /// The date the task was last updated. Every action that fires a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) will update this property. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? lastUpdated;

  /// The task's due date. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? due;

  /// The follow-up date for the task. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? followUp;

  /// The task's delegation state. Possible values are `PENDING` and `RESOLVED`.
  TaskDtoDelegationStateEnum? delegationState;

  /// The task's description.
  String? description;

  /// The id of the execution the task belongs to.
  String? executionId;

  /// The id the parent task, if this task is a subtask.
  String? parentTaskId;

  /// The task's priority.
  int? priority;

  /// The id of the process definition the task belongs to.
  String? processDefinitionId;

  /// The id of the process instance the task belongs to.
  String? processInstanceId;

  /// The id of the case execution the task belongs to.
  String? caseExecutionId;

  /// The id of the case definition the task belongs to.
  String? caseDefinitionId;

  /// The id of the case instance the task belongs to.
  String? caseInstanceId;

  /// The task's key.
  String? taskDefinitionKey;

  /// Whether the task belongs to a process instance that is suspended.
  bool? suspended;

  /// If not `null`, the form key for the task.
  String? formKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CamundaFormRef? camundaFormRef;

  /// If not `null`, the tenant id of the task.
  String? tenantId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TaskDto &&
    other.id == id &&
    other.name == name &&
    other.assignee == assignee &&
    other.owner == owner &&
    other.created == created &&
    other.lastUpdated == lastUpdated &&
    other.due == due &&
    other.followUp == followUp &&
    other.delegationState == delegationState &&
    other.description == description &&
    other.executionId == executionId &&
    other.parentTaskId == parentTaskId &&
    other.priority == priority &&
    other.processDefinitionId == processDefinitionId &&
    other.processInstanceId == processInstanceId &&
    other.caseExecutionId == caseExecutionId &&
    other.caseDefinitionId == caseDefinitionId &&
    other.caseInstanceId == caseInstanceId &&
    other.taskDefinitionKey == taskDefinitionKey &&
    other.suspended == suspended &&
    other.formKey == formKey &&
    other.camundaFormRef == camundaFormRef &&
    other.tenantId == tenantId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (assignee == null ? 0 : assignee!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (lastUpdated == null ? 0 : lastUpdated!.hashCode) +
    (due == null ? 0 : due!.hashCode) +
    (followUp == null ? 0 : followUp!.hashCode) +
    (delegationState == null ? 0 : delegationState!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (parentTaskId == null ? 0 : parentTaskId!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (caseExecutionId == null ? 0 : caseExecutionId!.hashCode) +
    (caseDefinitionId == null ? 0 : caseDefinitionId!.hashCode) +
    (caseInstanceId == null ? 0 : caseInstanceId!.hashCode) +
    (taskDefinitionKey == null ? 0 : taskDefinitionKey!.hashCode) +
    (suspended == null ? 0 : suspended!.hashCode) +
    (formKey == null ? 0 : formKey!.hashCode) +
    (camundaFormRef == null ? 0 : camundaFormRef!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode);

  @override
  String toString() => 'TaskDto[id=$id, name=$name, assignee=$assignee, owner=$owner, created=$created, lastUpdated=$lastUpdated, due=$due, followUp=$followUp, delegationState=$delegationState, description=$description, executionId=$executionId, parentTaskId=$parentTaskId, priority=$priority, processDefinitionId=$processDefinitionId, processInstanceId=$processInstanceId, caseExecutionId=$caseExecutionId, caseDefinitionId=$caseDefinitionId, caseInstanceId=$caseInstanceId, taskDefinitionKey=$taskDefinitionKey, suspended=$suspended, formKey=$formKey, camundaFormRef=$camundaFormRef, tenantId=$tenantId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.assignee != null) {
      json[r'assignee'] = this.assignee;
    } else {
      json[r'assignee'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created!.toUtc().toIso8601String();
    } else {
      json[r'created'] = null;
    }
    if (this.lastUpdated != null) {
      json[r'lastUpdated'] = this.lastUpdated!.toUtc().toIso8601String();
    } else {
      json[r'lastUpdated'] = null;
    }
    if (this.due != null) {
      json[r'due'] = this.due!.toUtc().toIso8601String();
    } else {
      json[r'due'] = null;
    }
    if (this.followUp != null) {
      json[r'followUp'] = this.followUp!.toUtc().toIso8601String();
    } else {
      json[r'followUp'] = null;
    }
    if (this.delegationState != null) {
      json[r'delegationState'] = this.delegationState;
    } else {
      json[r'delegationState'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.executionId != null) {
      json[r'executionId'] = this.executionId;
    } else {
      json[r'executionId'] = null;
    }
    if (this.parentTaskId != null) {
      json[r'parentTaskId'] = this.parentTaskId;
    } else {
      json[r'parentTaskId'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.processDefinitionId != null) {
      json[r'processDefinitionId'] = this.processDefinitionId;
    } else {
      json[r'processDefinitionId'] = null;
    }
    if (this.processInstanceId != null) {
      json[r'processInstanceId'] = this.processInstanceId;
    } else {
      json[r'processInstanceId'] = null;
    }
    if (this.caseExecutionId != null) {
      json[r'caseExecutionId'] = this.caseExecutionId;
    } else {
      json[r'caseExecutionId'] = null;
    }
    if (this.caseDefinitionId != null) {
      json[r'caseDefinitionId'] = this.caseDefinitionId;
    } else {
      json[r'caseDefinitionId'] = null;
    }
    if (this.caseInstanceId != null) {
      json[r'caseInstanceId'] = this.caseInstanceId;
    } else {
      json[r'caseInstanceId'] = null;
    }
    if (this.taskDefinitionKey != null) {
      json[r'taskDefinitionKey'] = this.taskDefinitionKey;
    } else {
      json[r'taskDefinitionKey'] = null;
    }
    if (this.suspended != null) {
      json[r'suspended'] = this.suspended;
    } else {
      json[r'suspended'] = null;
    }
    if (this.formKey != null) {
      json[r'formKey'] = this.formKey;
    } else {
      json[r'formKey'] = null;
    }
    if (this.camundaFormRef != null) {
      json[r'camundaFormRef'] = this.camundaFormRef;
    } else {
      json[r'camundaFormRef'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    return json;
  }

  /// Returns a new [TaskDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TaskDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TaskDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskDto(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        assignee: mapValueOfType<String>(json, r'assignee'),
        owner: mapValueOfType<String>(json, r'owner'),
        created: mapDateTime(json, r'created', r''),
        lastUpdated: mapDateTime(json, r'lastUpdated', r''),
        due: mapDateTime(json, r'due', r''),
        followUp: mapDateTime(json, r'followUp', r''),
        delegationState: TaskDtoDelegationStateEnum.fromJson(json[r'delegationState']),
        description: mapValueOfType<String>(json, r'description'),
        executionId: mapValueOfType<String>(json, r'executionId'),
        parentTaskId: mapValueOfType<String>(json, r'parentTaskId'),
        priority: mapValueOfType<int>(json, r'priority'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        caseExecutionId: mapValueOfType<String>(json, r'caseExecutionId'),
        caseDefinitionId: mapValueOfType<String>(json, r'caseDefinitionId'),
        caseInstanceId: mapValueOfType<String>(json, r'caseInstanceId'),
        taskDefinitionKey: mapValueOfType<String>(json, r'taskDefinitionKey'),
        suspended: mapValueOfType<bool>(json, r'suspended'),
        formKey: mapValueOfType<String>(json, r'formKey'),
        camundaFormRef: CamundaFormRef.fromJson(json[r'camundaFormRef']),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
      );
    }
    return null;
  }

  static List<TaskDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskDto> mapFromJson(dynamic json) {
    final map = <String, TaskDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskDto-objects as value to a dart map
  static Map<String, List<TaskDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TaskDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// The task's delegation state. Possible values are `PENDING` and `RESOLVED`.
class TaskDtoDelegationStateEnum {
  /// Instantiate a new enum with the provided [value].
  const TaskDtoDelegationStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = TaskDtoDelegationStateEnum._(r'PENDING');
  static const RESOLVED = TaskDtoDelegationStateEnum._(r'RESOLVED');

  /// List of all possible values in this [enum][TaskDtoDelegationStateEnum].
  static const values = <TaskDtoDelegationStateEnum>[
    PENDING,
    RESOLVED,
  ];

  static TaskDtoDelegationStateEnum? fromJson(dynamic value) => TaskDtoDelegationStateEnumTypeTransformer().decode(value);

  static List<TaskDtoDelegationStateEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskDtoDelegationStateEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskDtoDelegationStateEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TaskDtoDelegationStateEnum] to String,
/// and [decode] dynamic data back to [TaskDtoDelegationStateEnum].
class TaskDtoDelegationStateEnumTypeTransformer {
  factory TaskDtoDelegationStateEnumTypeTransformer() => _instance ??= const TaskDtoDelegationStateEnumTypeTransformer._();

  const TaskDtoDelegationStateEnumTypeTransformer._();

  String encode(TaskDtoDelegationStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TaskDtoDelegationStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TaskDtoDelegationStateEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return TaskDtoDelegationStateEnum.PENDING;
        case r'RESOLVED': return TaskDtoDelegationStateEnum.RESOLVED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TaskDtoDelegationStateEnumTypeTransformer] instance.
  static TaskDtoDelegationStateEnumTypeTransformer? _instance;
}


