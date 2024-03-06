//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricDecisionInstanceDto {
  /// Returns a new [HistoricDecisionInstanceDto] instance.
  HistoricDecisionInstanceDto({
    this.id,
    this.decisionDefinitionId,
    this.decisionDefinitionKey,
    this.decisionDefinitionName,
    this.evaluationTime,
    this.removalTime,
    this.processDefinitionId,
    this.processDefinitionKey,
    this.processInstanceId,
    this.caseDefinitionId,
    this.caseDefinitionKey,
    this.caseInstanceId,
    this.activityId,
    this.activityInstanceId,
    this.tenantId,
    this.userId,
    this.inputs = const [],
    this.ouputs = const [],
    this.collectResultValue,
    this.rootDecisionInstanceId,
    this.rootProcessInstanceId,
    this.decisionRequirementsDefinitionId,
    this.decisionRequirementsDefinitionKey,
  });

  /// The id of the decision instance.
  String? id;

  /// The id of the decision definition that this decision instance belongs to.
  String? decisionDefinitionId;

  /// The key of the decision definition that this decision instance belongs to.
  String? decisionDefinitionKey;

  /// The name of the decision definition that this decision instance belongs to.
  String? decisionDefinitionName;

  /// The time the instance was evaluated.  [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? evaluationTime;

  /// The time after which the instance should be removed by the History Cleanup job. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? removalTime;

  /// The id of the process definition that this decision instance belongs to.
  String? processDefinitionId;

  /// The key of the process definition that this decision instance belongs to.
  String? processDefinitionKey;

  /// The id of the process instance that this decision instance belongs to.
  String? processInstanceId;

  /// The id of the case definition that this decision instance belongs to.
  String? caseDefinitionId;

  /// The key of the case definition that this decision instance belongs to.
  String? caseDefinitionKey;

  /// The id of the case instance that this decision instance belongs to.
  String? caseInstanceId;

  /// The id of the activity that this decision instance belongs to.
  String? activityId;

  /// The id of the activity instance that this decision instance belongs to.
  String? activityInstanceId;

  /// The tenant id of the historic decision instance.
  String? tenantId;

  /// The id of the authenticated user that has evaluated this decision instance without a process or case instance.
  String? userId;

  /// The list of decision input values. **Only exists** if `includeInputs` was set to `true` in the query.
  List<HistoricDecisionInputInstanceDto>? inputs;

  /// The list of decision output values. **Only exists** if `includeOutputs` was set to `true` in the query.
  List<HistoricDecisionOutputInstanceDto>? ouputs;

  /// The result of the collect aggregation of the decision result if used. `null` if no aggregation was used.
  double? collectResultValue;

  /// The decision instance id of the evaluated root decision. Can be `null` if this instance is the root decision instance of the evaluation.
  String? rootDecisionInstanceId;

  /// The process instance id of the root process instance that initiated the evaluation of this decision. Can be `null` if this decision instance is not evaluated as part of a BPMN process.
  String? rootProcessInstanceId;

  /// The id of the decision requirements definition that this decision instance belongs to.
  String? decisionRequirementsDefinitionId;

  /// The key of the decision requirements definition that this decision instance belongs to.
  String? decisionRequirementsDefinitionKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricDecisionInstanceDto &&
    other.id == id &&
    other.decisionDefinitionId == decisionDefinitionId &&
    other.decisionDefinitionKey == decisionDefinitionKey &&
    other.decisionDefinitionName == decisionDefinitionName &&
    other.evaluationTime == evaluationTime &&
    other.removalTime == removalTime &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    other.processInstanceId == processInstanceId &&
    other.caseDefinitionId == caseDefinitionId &&
    other.caseDefinitionKey == caseDefinitionKey &&
    other.caseInstanceId == caseInstanceId &&
    other.activityId == activityId &&
    other.activityInstanceId == activityInstanceId &&
    other.tenantId == tenantId &&
    other.userId == userId &&
    _deepEquality.equals(other.inputs, inputs) &&
    _deepEquality.equals(other.ouputs, ouputs) &&
    other.collectResultValue == collectResultValue &&
    other.rootDecisionInstanceId == rootDecisionInstanceId &&
    other.rootProcessInstanceId == rootProcessInstanceId &&
    other.decisionRequirementsDefinitionId == decisionRequirementsDefinitionId &&
    other.decisionRequirementsDefinitionKey == decisionRequirementsDefinitionKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (decisionDefinitionId == null ? 0 : decisionDefinitionId!.hashCode) +
    (decisionDefinitionKey == null ? 0 : decisionDefinitionKey!.hashCode) +
    (decisionDefinitionName == null ? 0 : decisionDefinitionName!.hashCode) +
    (evaluationTime == null ? 0 : evaluationTime!.hashCode) +
    (removalTime == null ? 0 : removalTime!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (caseDefinitionId == null ? 0 : caseDefinitionId!.hashCode) +
    (caseDefinitionKey == null ? 0 : caseDefinitionKey!.hashCode) +
    (caseInstanceId == null ? 0 : caseInstanceId!.hashCode) +
    (activityId == null ? 0 : activityId!.hashCode) +
    (activityInstanceId == null ? 0 : activityInstanceId!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (inputs == null ? 0 : inputs!.hashCode) +
    (ouputs == null ? 0 : ouputs!.hashCode) +
    (collectResultValue == null ? 0 : collectResultValue!.hashCode) +
    (rootDecisionInstanceId == null ? 0 : rootDecisionInstanceId!.hashCode) +
    (rootProcessInstanceId == null ? 0 : rootProcessInstanceId!.hashCode) +
    (decisionRequirementsDefinitionId == null ? 0 : decisionRequirementsDefinitionId!.hashCode) +
    (decisionRequirementsDefinitionKey == null ? 0 : decisionRequirementsDefinitionKey!.hashCode);

  @override
  String toString() => 'HistoricDecisionInstanceDto[id=$id, decisionDefinitionId=$decisionDefinitionId, decisionDefinitionKey=$decisionDefinitionKey, decisionDefinitionName=$decisionDefinitionName, evaluationTime=$evaluationTime, removalTime=$removalTime, processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, processInstanceId=$processInstanceId, caseDefinitionId=$caseDefinitionId, caseDefinitionKey=$caseDefinitionKey, caseInstanceId=$caseInstanceId, activityId=$activityId, activityInstanceId=$activityInstanceId, tenantId=$tenantId, userId=$userId, inputs=$inputs, ouputs=$ouputs, collectResultValue=$collectResultValue, rootDecisionInstanceId=$rootDecisionInstanceId, rootProcessInstanceId=$rootProcessInstanceId, decisionRequirementsDefinitionId=$decisionRequirementsDefinitionId, decisionRequirementsDefinitionKey=$decisionRequirementsDefinitionKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.decisionDefinitionId != null) {
      json[r'decisionDefinitionId'] = this.decisionDefinitionId;
    } else {
      json[r'decisionDefinitionId'] = null;
    }
    if (this.decisionDefinitionKey != null) {
      json[r'decisionDefinitionKey'] = this.decisionDefinitionKey;
    } else {
      json[r'decisionDefinitionKey'] = null;
    }
    if (this.decisionDefinitionName != null) {
      json[r'decisionDefinitionName'] = this.decisionDefinitionName;
    } else {
      json[r'decisionDefinitionName'] = null;
    }
    if (this.evaluationTime != null) {
      json[r'evaluationTime'] = this.evaluationTime!.toUtc().toIso8601String();
    } else {
      json[r'evaluationTime'] = null;
    }
    if (this.removalTime != null) {
      json[r'removalTime'] = this.removalTime!.toUtc().toIso8601String();
    } else {
      json[r'removalTime'] = null;
    }
    if (this.processDefinitionId != null) {
      json[r'processDefinitionId'] = this.processDefinitionId;
    } else {
      json[r'processDefinitionId'] = null;
    }
    if (this.processDefinitionKey != null) {
      json[r'processDefinitionKey'] = this.processDefinitionKey;
    } else {
      json[r'processDefinitionKey'] = null;
    }
    if (this.processInstanceId != null) {
      json[r'processInstanceId'] = this.processInstanceId;
    } else {
      json[r'processInstanceId'] = null;
    }
    if (this.caseDefinitionId != null) {
      json[r'caseDefinitionId'] = this.caseDefinitionId;
    } else {
      json[r'caseDefinitionId'] = null;
    }
    if (this.caseDefinitionKey != null) {
      json[r'caseDefinitionKey'] = this.caseDefinitionKey;
    } else {
      json[r'caseDefinitionKey'] = null;
    }
    if (this.caseInstanceId != null) {
      json[r'caseInstanceId'] = this.caseInstanceId;
    } else {
      json[r'caseInstanceId'] = null;
    }
    if (this.activityId != null) {
      json[r'activityId'] = this.activityId;
    } else {
      json[r'activityId'] = null;
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
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.inputs != null) {
      json[r'inputs'] = this.inputs;
    } else {
      json[r'inputs'] = null;
    }
    if (this.ouputs != null) {
      json[r'ouputs'] = this.ouputs;
    } else {
      json[r'ouputs'] = null;
    }
    if (this.collectResultValue != null) {
      json[r'collectResultValue'] = this.collectResultValue;
    } else {
      json[r'collectResultValue'] = null;
    }
    if (this.rootDecisionInstanceId != null) {
      json[r'rootDecisionInstanceId'] = this.rootDecisionInstanceId;
    } else {
      json[r'rootDecisionInstanceId'] = null;
    }
    if (this.rootProcessInstanceId != null) {
      json[r'rootProcessInstanceId'] = this.rootProcessInstanceId;
    } else {
      json[r'rootProcessInstanceId'] = null;
    }
    if (this.decisionRequirementsDefinitionId != null) {
      json[r'decisionRequirementsDefinitionId'] = this.decisionRequirementsDefinitionId;
    } else {
      json[r'decisionRequirementsDefinitionId'] = null;
    }
    if (this.decisionRequirementsDefinitionKey != null) {
      json[r'decisionRequirementsDefinitionKey'] = this.decisionRequirementsDefinitionKey;
    } else {
      json[r'decisionRequirementsDefinitionKey'] = null;
    }
    return json;
  }

  /// Returns a new [HistoricDecisionInstanceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricDecisionInstanceDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricDecisionInstanceDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricDecisionInstanceDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricDecisionInstanceDto(
        id: mapValueOfType<String>(json, r'id'),
        decisionDefinitionId: mapValueOfType<String>(json, r'decisionDefinitionId'),
        decisionDefinitionKey: mapValueOfType<String>(json, r'decisionDefinitionKey'),
        decisionDefinitionName: mapValueOfType<String>(json, r'decisionDefinitionName'),
        evaluationTime: mapDateTime(json, r'evaluationTime', r''),
        removalTime: mapDateTime(json, r'removalTime', r''),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        caseDefinitionId: mapValueOfType<String>(json, r'caseDefinitionId'),
        caseDefinitionKey: mapValueOfType<String>(json, r'caseDefinitionKey'),
        caseInstanceId: mapValueOfType<String>(json, r'caseInstanceId'),
        activityId: mapValueOfType<String>(json, r'activityId'),
        activityInstanceId: mapValueOfType<String>(json, r'activityInstanceId'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        userId: mapValueOfType<String>(json, r'userId'),
        inputs: HistoricDecisionInputInstanceDto.listFromJson(json[r'inputs']),
        ouputs: HistoricDecisionOutputInstanceDto.listFromJson(json[r'ouputs']),
        collectResultValue: mapValueOfType<double>(json, r'collectResultValue'),
        rootDecisionInstanceId: mapValueOfType<String>(json, r'rootDecisionInstanceId'),
        rootProcessInstanceId: mapValueOfType<String>(json, r'rootProcessInstanceId'),
        decisionRequirementsDefinitionId: mapValueOfType<String>(json, r'decisionRequirementsDefinitionId'),
        decisionRequirementsDefinitionKey: mapValueOfType<String>(json, r'decisionRequirementsDefinitionKey'),
      );
    }
    return null;
  }

  static List<HistoricDecisionInstanceDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricDecisionInstanceDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricDecisionInstanceDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricDecisionInstanceDto> mapFromJson(dynamic json) {
    final map = <String, HistoricDecisionInstanceDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricDecisionInstanceDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricDecisionInstanceDto-objects as value to a dart map
  static Map<String, List<HistoricDecisionInstanceDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricDecisionInstanceDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricDecisionInstanceDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

