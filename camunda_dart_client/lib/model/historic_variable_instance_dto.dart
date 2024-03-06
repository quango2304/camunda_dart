//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricVariableInstanceDto {
  /// Returns a new [HistoricVariableInstanceDto] instance.
  HistoricVariableInstanceDto({
    this.value,
    this.type,
    this.valueInfo = const {},
    this.id,
    this.name,
    this.processDefinitionKey,
    this.processDefinitionId,
    this.processInstanceId,
    this.executionId,
    this.activityInstanceId,
    this.caseDefinitionKey,
    this.caseDefinitionId,
    this.caseInstanceId,
    this.caseExecutionId,
    this.taskId,
    this.tenantId,
    this.errorMessage,
    this.state,
    this.createTime,
    this.removalTime,
    this.rootProcessInstanceId,
  });

  /// Can be any value - string, number, boolean, array or object.  **Note**: Not every endpoint supports every type.
  Object? value;

  /// The value type of the variable.
  String? type;

  /// A JSON object containing additional, value-type-dependent properties. For serialized variables of type Object, the following properties can be provided:  * `objectTypeName`: A string representation of the object's type name. * `serializationDataFormat`: The serialization format used to store the variable.  For serialized variables of type File, the following properties can be provided:  * `filename`: The name of the file. This is not the variable name but the name that will be used when downloading the file again. * `mimetype`: The MIME type of the file that is being uploaded. * `encoding`: The encoding of the file that is being uploaded.  The following property can be provided for all value types:  * `transient`: Indicates whether the variable should be transient or not. See [documentation](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables#transient-variables) for more informations. (Not applicable for `decision-definition`, ` /process-instance/variables-async`, and `/migration/executeAsync` endpoints)
  Map<String, Object> valueInfo;

  /// The id of the variable instance.
  String? id;

  /// The name of the variable instance.
  String? name;

  /// The key of the process definition the variable instance belongs to.
  String? processDefinitionKey;

  /// The id of the process definition the variable instance belongs to.
  String? processDefinitionId;

  /// The process instance id the variable instance belongs to.
  String? processInstanceId;

  /// The execution id the variable instance belongs to.
  String? executionId;

  /// The id of the activity instance in which the variable is valid.
  String? activityInstanceId;

  /// The key of the case definition the variable instance belongs to.
  String? caseDefinitionKey;

  /// The id of the case definition the variable instance belongs to.
  String? caseDefinitionId;

  /// The case instance id the variable instance belongs to.
  String? caseInstanceId;

  /// The case execution id the variable instance belongs to.
  String? caseExecutionId;

  /// The id of the task the variable instance belongs to.
  String? taskId;

  /// The id of the tenant that this variable instance belongs to.
  String? tenantId;

  /// An error message in case a Java Serialized Object could not be de-serialized.
  String? errorMessage;

  /// The current state of the variable. Can be 'CREATED' or 'DELETED'.
  String? state;

  /// The time the variable was inserted. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? createTime;

  /// The time after which the variable should be removed by the History Cleanup job. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? removalTime;

  /// The process instance id of the root process instance that initiated the process containing this variable.
  String? rootProcessInstanceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricVariableInstanceDto &&
    other.value == value &&
    other.type == type &&
    _deepEquality.equals(other.valueInfo, valueInfo) &&
    other.id == id &&
    other.name == name &&
    other.processDefinitionKey == processDefinitionKey &&
    other.processDefinitionId == processDefinitionId &&
    other.processInstanceId == processInstanceId &&
    other.executionId == executionId &&
    other.activityInstanceId == activityInstanceId &&
    other.caseDefinitionKey == caseDefinitionKey &&
    other.caseDefinitionId == caseDefinitionId &&
    other.caseInstanceId == caseInstanceId &&
    other.caseExecutionId == caseExecutionId &&
    other.taskId == taskId &&
    other.tenantId == tenantId &&
    other.errorMessage == errorMessage &&
    other.state == state &&
    other.createTime == createTime &&
    other.removalTime == removalTime &&
    other.rootProcessInstanceId == rootProcessInstanceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (value == null ? 0 : value!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (valueInfo.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (activityInstanceId == null ? 0 : activityInstanceId!.hashCode) +
    (caseDefinitionKey == null ? 0 : caseDefinitionKey!.hashCode) +
    (caseDefinitionId == null ? 0 : caseDefinitionId!.hashCode) +
    (caseInstanceId == null ? 0 : caseInstanceId!.hashCode) +
    (caseExecutionId == null ? 0 : caseExecutionId!.hashCode) +
    (taskId == null ? 0 : taskId!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (createTime == null ? 0 : createTime!.hashCode) +
    (removalTime == null ? 0 : removalTime!.hashCode) +
    (rootProcessInstanceId == null ? 0 : rootProcessInstanceId!.hashCode);

  @override
  String toString() => 'HistoricVariableInstanceDto[value=$value, type=$type, valueInfo=$valueInfo, id=$id, name=$name, processDefinitionKey=$processDefinitionKey, processDefinitionId=$processDefinitionId, processInstanceId=$processInstanceId, executionId=$executionId, activityInstanceId=$activityInstanceId, caseDefinitionKey=$caseDefinitionKey, caseDefinitionId=$caseDefinitionId, caseInstanceId=$caseInstanceId, caseExecutionId=$caseExecutionId, taskId=$taskId, tenantId=$tenantId, errorMessage=$errorMessage, state=$state, createTime=$createTime, removalTime=$removalTime, rootProcessInstanceId=$rootProcessInstanceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
      json[r'valueInfo'] = this.valueInfo;
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
    if (this.processDefinitionKey != null) {
      json[r'processDefinitionKey'] = this.processDefinitionKey;
    } else {
      json[r'processDefinitionKey'] = null;
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
    if (this.executionId != null) {
      json[r'executionId'] = this.executionId;
    } else {
      json[r'executionId'] = null;
    }
    if (this.activityInstanceId != null) {
      json[r'activityInstanceId'] = this.activityInstanceId;
    } else {
      json[r'activityInstanceId'] = null;
    }
    if (this.caseDefinitionKey != null) {
      json[r'caseDefinitionKey'] = this.caseDefinitionKey;
    } else {
      json[r'caseDefinitionKey'] = null;
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
    if (this.caseExecutionId != null) {
      json[r'caseExecutionId'] = this.caseExecutionId;
    } else {
      json[r'caseExecutionId'] = null;
    }
    if (this.taskId != null) {
      json[r'taskId'] = this.taskId;
    } else {
      json[r'taskId'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.createTime != null) {
      json[r'createTime'] = this.createTime!.toUtc().toIso8601String();
    } else {
      json[r'createTime'] = null;
    }
    if (this.removalTime != null) {
      json[r'removalTime'] = this.removalTime!.toUtc().toIso8601String();
    } else {
      json[r'removalTime'] = null;
    }
    if (this.rootProcessInstanceId != null) {
      json[r'rootProcessInstanceId'] = this.rootProcessInstanceId;
    } else {
      json[r'rootProcessInstanceId'] = null;
    }
    return json;
  }

  /// Returns a new [HistoricVariableInstanceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricVariableInstanceDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricVariableInstanceDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricVariableInstanceDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricVariableInstanceDto(
        value: mapValueOfType<Object>(json, r'value'),
        type: mapValueOfType<String>(json, r'type'),
        valueInfo: mapCastOfType<String, Object>(json, r'valueInfo') ?? const {},
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        executionId: mapValueOfType<String>(json, r'executionId'),
        activityInstanceId: mapValueOfType<String>(json, r'activityInstanceId'),
        caseDefinitionKey: mapValueOfType<String>(json, r'caseDefinitionKey'),
        caseDefinitionId: mapValueOfType<String>(json, r'caseDefinitionId'),
        caseInstanceId: mapValueOfType<String>(json, r'caseInstanceId'),
        caseExecutionId: mapValueOfType<String>(json, r'caseExecutionId'),
        taskId: mapValueOfType<String>(json, r'taskId'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
        state: mapValueOfType<String>(json, r'state'),
        createTime: mapDateTime(json, r'createTime', r''),
        removalTime: mapDateTime(json, r'removalTime', r''),
        rootProcessInstanceId: mapValueOfType<String>(json, r'rootProcessInstanceId'),
      );
    }
    return null;
  }

  static List<HistoricVariableInstanceDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricVariableInstanceDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricVariableInstanceDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricVariableInstanceDto> mapFromJson(dynamic json) {
    final map = <String, HistoricVariableInstanceDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricVariableInstanceDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricVariableInstanceDto-objects as value to a dart map
  static Map<String, List<HistoricVariableInstanceDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricVariableInstanceDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricVariableInstanceDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

