//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VariableInstanceDto {
  /// Returns a new [VariableInstanceDto] instance.
  VariableInstanceDto({
    this.value,
    this.type,
    this.valueInfo = const {},
    this.id,
    this.name,
    this.processDefinitionId,
    this.processInstanceId,
    this.executionId,
    this.caseInstanceId,
    this.caseExecutionId,
    this.taskId,
    this.batchId,
    this.activityInstanceId,
    this.tenantId,
    this.errorMessage,
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

  /// The id of the process definition that this variable instance belongs to.
  String? processDefinitionId;

  /// The id of the process instance that this variable instance belongs to.
  String? processInstanceId;

  /// The id of the execution that this variable instance belongs to.
  String? executionId;

  /// The id of the case instance that this variable instance belongs to.
  String? caseInstanceId;

  /// The id of the case execution that this variable instance belongs to.
  String? caseExecutionId;

  /// The id of the task that this variable instance belongs to.
  String? taskId;

  /// The id of the batch that this variable instance belongs to.<
  String? batchId;

  /// The id of the activity instance that this variable instance belongs to.
  String? activityInstanceId;

  /// The id of the tenant that this variable instance belongs to.
  String? tenantId;

  /// An error message in case a Java Serialized Object could not be de-serialized.
  String? errorMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VariableInstanceDto &&
    other.value == value &&
    other.type == type &&
    _deepEquality.equals(other.valueInfo, valueInfo) &&
    other.id == id &&
    other.name == name &&
    other.processDefinitionId == processDefinitionId &&
    other.processInstanceId == processInstanceId &&
    other.executionId == executionId &&
    other.caseInstanceId == caseInstanceId &&
    other.caseExecutionId == caseExecutionId &&
    other.taskId == taskId &&
    other.batchId == batchId &&
    other.activityInstanceId == activityInstanceId &&
    other.tenantId == tenantId &&
    other.errorMessage == errorMessage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (value == null ? 0 : value!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (valueInfo.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (caseInstanceId == null ? 0 : caseInstanceId!.hashCode) +
    (caseExecutionId == null ? 0 : caseExecutionId!.hashCode) +
    (taskId == null ? 0 : taskId!.hashCode) +
    (batchId == null ? 0 : batchId!.hashCode) +
    (activityInstanceId == null ? 0 : activityInstanceId!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode);

  @override
  String toString() => 'VariableInstanceDto[value=$value, type=$type, valueInfo=$valueInfo, id=$id, name=$name, processDefinitionId=$processDefinitionId, processInstanceId=$processInstanceId, executionId=$executionId, caseInstanceId=$caseInstanceId, caseExecutionId=$caseExecutionId, taskId=$taskId, batchId=$batchId, activityInstanceId=$activityInstanceId, tenantId=$tenantId, errorMessage=$errorMessage]';

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
    if (this.batchId != null) {
      json[r'batchId'] = this.batchId;
    } else {
      json[r'batchId'] = null;
    }
    if (this.activityInstanceId != null) {
      json[r'activityInstanceId'] = this.activityInstanceId;
    } else {
      json[r'activityInstanceId'] = null;
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
    return json;
  }

  /// Returns a new [VariableInstanceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VariableInstanceDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VariableInstanceDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VariableInstanceDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VariableInstanceDto(
        value: mapValueOfType<Object>(json, r'value'),
        type: mapValueOfType<String>(json, r'type'),
        valueInfo: mapCastOfType<String, Object>(json, r'valueInfo') ?? const {},
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        executionId: mapValueOfType<String>(json, r'executionId'),
        caseInstanceId: mapValueOfType<String>(json, r'caseInstanceId'),
        caseExecutionId: mapValueOfType<String>(json, r'caseExecutionId'),
        taskId: mapValueOfType<String>(json, r'taskId'),
        batchId: mapValueOfType<String>(json, r'batchId'),
        activityInstanceId: mapValueOfType<String>(json, r'activityInstanceId'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
      );
    }
    return null;
  }

  static List<VariableInstanceDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VariableInstanceDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VariableInstanceDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VariableInstanceDto> mapFromJson(dynamic json) {
    final map = <String, VariableInstanceDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VariableInstanceDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VariableInstanceDto-objects as value to a dart map
  static Map<String, List<VariableInstanceDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VariableInstanceDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VariableInstanceDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

