//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricDetailDto {
  /// Returns a new [HistoricDetailDto] instance.
  HistoricDetailDto({
    this.id,
    this.type,
    this.processDefinitionKey,
    this.processDefinitionId,
    this.processInstanceId,
    this.activityInstanceId,
    this.executionId,
    this.caseDefinitionKey,
    this.caseDefinitionId,
    this.caseInstanceId,
    this.caseExecutionId,
    this.taskId,
    this.tenantId,
    this.userOperationId,
    this.time,
    this.removalTime,
    this.rootProcessInstanceId,
    this.fieldId,
    this.fieldValue,
    this.variableName,
    this.variableInstanceId,
    this.variableType,
    this.value,
    this.valueInfo = const {},
    this.initial,
    this.revision,
    this.errorMessage,
  });

  /// The id of the historic detail.
  String? id;

  /// The type of the historic detail. Either `formField` for a submitted form field value or `variableUpdate` for variable updates.
  String? type;

  /// The key of the process definition that this historic detail belongs to.
  String? processDefinitionKey;

  /// The id of the process definition that this historic detail belongs to.
  String? processDefinitionId;

  /// The id of the process instance the historic detail belongs to.
  String? processInstanceId;

  /// The id of the activity instance the historic detail belongs to.
  String? activityInstanceId;

  /// The id of the execution the historic detail belongs to.
  String? executionId;

  /// The key of the case definition that this historic detail belongs to.
  String? caseDefinitionKey;

  /// The id of the case definition that this historic detail belongs to.
  String? caseDefinitionId;

  /// The id of the case instance the historic detail belongs to.
  String? caseInstanceId;

  /// The id of the case execution the historic detail belongs to.
  String? caseExecutionId;

  /// The id of the task the historic detail belongs to.
  String? taskId;

  /// The id of the tenant that this historic detail belongs to.
  String? tenantId;

  /// The id of user operation which links historic detail with [user operation log](https://docs.camunda.org/manual/7.20/reference/rest/history/user-operation-log/) entries.
  String? userOperationId;

  /// The time when this historic detail occurred. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? time;

  /// The time after which the historic detail should be removed by the History Cleanup job. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? removalTime;

  /// The process instance id of the root process instance that initiated the process containing this historic detail.
  String? rootProcessInstanceId;

  /// The id of the form field.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `formField`.
  String? fieldId;

  /// The submitted form field value. The value differs depending on the form field's type and on the `deserializeValue` parameter.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `formField`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? fieldValue;

  /// The name of the variable which has been updated.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`.
  String? variableName;

  /// The id of the associated variable instance.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`.
  String? variableInstanceId;

  /// The value type of the variable.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`.
  String? variableType;

  /// The variable's value. Value differs depending on the variable's type and on the deserializeValues parameter.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? value;

  /// A JSON object containing additional, value-type-dependent properties. For variables of type `Object`, the following properties are returned:  * `objectTypeName`: A string representation of the object's type name. * `serializationDataFormat`: The serialization format used to store the variable.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`.
  Map<String, Object> valueInfo;

  /// Returns `true` for variable updates that contains the initial values of the variables.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`.
  bool? initial;

  /// The revision of the historic variable update.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`.
  int? revision;

  /// An error message in case a Java Serialized Object could not be de-serialized.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`.
  String? errorMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricDetailDto &&
    other.id == id &&
    other.type == type &&
    other.processDefinitionKey == processDefinitionKey &&
    other.processDefinitionId == processDefinitionId &&
    other.processInstanceId == processInstanceId &&
    other.activityInstanceId == activityInstanceId &&
    other.executionId == executionId &&
    other.caseDefinitionKey == caseDefinitionKey &&
    other.caseDefinitionId == caseDefinitionId &&
    other.caseInstanceId == caseInstanceId &&
    other.caseExecutionId == caseExecutionId &&
    other.taskId == taskId &&
    other.tenantId == tenantId &&
    other.userOperationId == userOperationId &&
    other.time == time &&
    other.removalTime == removalTime &&
    other.rootProcessInstanceId == rootProcessInstanceId &&
    other.fieldId == fieldId &&
    other.fieldValue == fieldValue &&
    other.variableName == variableName &&
    other.variableInstanceId == variableInstanceId &&
    other.variableType == variableType &&
    other.value == value &&
    _deepEquality.equals(other.valueInfo, valueInfo) &&
    other.initial == initial &&
    other.revision == revision &&
    other.errorMessage == errorMessage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (activityInstanceId == null ? 0 : activityInstanceId!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (caseDefinitionKey == null ? 0 : caseDefinitionKey!.hashCode) +
    (caseDefinitionId == null ? 0 : caseDefinitionId!.hashCode) +
    (caseInstanceId == null ? 0 : caseInstanceId!.hashCode) +
    (caseExecutionId == null ? 0 : caseExecutionId!.hashCode) +
    (taskId == null ? 0 : taskId!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (userOperationId == null ? 0 : userOperationId!.hashCode) +
    (time == null ? 0 : time!.hashCode) +
    (removalTime == null ? 0 : removalTime!.hashCode) +
    (rootProcessInstanceId == null ? 0 : rootProcessInstanceId!.hashCode) +
    (fieldId == null ? 0 : fieldId!.hashCode) +
    (fieldValue == null ? 0 : fieldValue!.hashCode) +
    (variableName == null ? 0 : variableName!.hashCode) +
    (variableInstanceId == null ? 0 : variableInstanceId!.hashCode) +
    (variableType == null ? 0 : variableType!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (valueInfo.hashCode) +
    (initial == null ? 0 : initial!.hashCode) +
    (revision == null ? 0 : revision!.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode);

  @override
  String toString() => 'HistoricDetailDto[id=$id, type=$type, processDefinitionKey=$processDefinitionKey, processDefinitionId=$processDefinitionId, processInstanceId=$processInstanceId, activityInstanceId=$activityInstanceId, executionId=$executionId, caseDefinitionKey=$caseDefinitionKey, caseDefinitionId=$caseDefinitionId, caseInstanceId=$caseInstanceId, caseExecutionId=$caseExecutionId, taskId=$taskId, tenantId=$tenantId, userOperationId=$userOperationId, time=$time, removalTime=$removalTime, rootProcessInstanceId=$rootProcessInstanceId, fieldId=$fieldId, fieldValue=$fieldValue, variableName=$variableName, variableInstanceId=$variableInstanceId, variableType=$variableType, value=$value, valueInfo=$valueInfo, initial=$initial, revision=$revision, errorMessage=$errorMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
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
    if (this.activityInstanceId != null) {
      json[r'activityInstanceId'] = this.activityInstanceId;
    } else {
      json[r'activityInstanceId'] = null;
    }
    if (this.executionId != null) {
      json[r'executionId'] = this.executionId;
    } else {
      json[r'executionId'] = null;
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
    if (this.userOperationId != null) {
      json[r'userOperationId'] = this.userOperationId;
    } else {
      json[r'userOperationId'] = null;
    }
    if (this.time != null) {
      json[r'time'] = this.time!.toUtc().toIso8601String();
    } else {
      json[r'time'] = null;
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
    if (this.fieldId != null) {
      json[r'fieldId'] = this.fieldId;
    } else {
      json[r'fieldId'] = null;
    }
    if (this.fieldValue != null) {
      json[r'fieldValue'] = this.fieldValue;
    } else {
      json[r'fieldValue'] = null;
    }
    if (this.variableName != null) {
      json[r'variableName'] = this.variableName;
    } else {
      json[r'variableName'] = null;
    }
    if (this.variableInstanceId != null) {
      json[r'variableInstanceId'] = this.variableInstanceId;
    } else {
      json[r'variableInstanceId'] = null;
    }
    if (this.variableType != null) {
      json[r'variableType'] = this.variableType;
    } else {
      json[r'variableType'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
      json[r'valueInfo'] = this.valueInfo;
    if (this.initial != null) {
      json[r'initial'] = this.initial;
    } else {
      json[r'initial'] = null;
    }
    if (this.revision != null) {
      json[r'revision'] = this.revision;
    } else {
      json[r'revision'] = null;
    }
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    return json;
  }

  /// Returns a new [HistoricDetailDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricDetailDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricDetailDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricDetailDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricDetailDto(
        id: mapValueOfType<String>(json, r'id'),
        type: mapValueOfType<String>(json, r'type'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        activityInstanceId: mapValueOfType<String>(json, r'activityInstanceId'),
        executionId: mapValueOfType<String>(json, r'executionId'),
        caseDefinitionKey: mapValueOfType<String>(json, r'caseDefinitionKey'),
        caseDefinitionId: mapValueOfType<String>(json, r'caseDefinitionId'),
        caseInstanceId: mapValueOfType<String>(json, r'caseInstanceId'),
        caseExecutionId: mapValueOfType<String>(json, r'caseExecutionId'),
        taskId: mapValueOfType<String>(json, r'taskId'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        userOperationId: mapValueOfType<String>(json, r'userOperationId'),
        time: mapDateTime(json, r'time', r''),
        removalTime: mapDateTime(json, r'removalTime', r''),
        rootProcessInstanceId: mapValueOfType<String>(json, r'rootProcessInstanceId'),
        fieldId: mapValueOfType<String>(json, r'fieldId'),
        fieldValue: mapValueOfType<Object>(json, r'fieldValue'),
        variableName: mapValueOfType<String>(json, r'variableName'),
        variableInstanceId: mapValueOfType<String>(json, r'variableInstanceId'),
        variableType: mapValueOfType<String>(json, r'variableType'),
        value: mapValueOfType<Object>(json, r'value'),
        valueInfo: mapCastOfType<String, Object>(json, r'valueInfo') ?? const {},
        initial: mapValueOfType<bool>(json, r'initial'),
        revision: mapValueOfType<int>(json, r'revision'),
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
      );
    }
    return null;
  }

  static List<HistoricDetailDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricDetailDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricDetailDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricDetailDto> mapFromJson(dynamic json) {
    final map = <String, HistoricDetailDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricDetailDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricDetailDto-objects as value to a dart map
  static Map<String, List<HistoricDetailDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricDetailDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricDetailDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

