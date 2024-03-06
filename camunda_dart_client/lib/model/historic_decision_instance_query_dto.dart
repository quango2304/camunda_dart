//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricDecisionInstanceQueryDto {
  /// Returns a new [HistoricDecisionInstanceQueryDto] instance.
  HistoricDecisionInstanceQueryDto({
    this.decisionInstanceId,
    this.decisionInstanceIdIn = const [],
    this.decisionDefinitionId,
    this.decisionDefinitionIdIn = const [],
    this.decisionDefinitionKey,
    this.decisionDefinitionKeyIn = const [],
    this.decisionDefinitionName,
    this.decisionDefinitionNameLike,
    this.processDefinitionId,
    this.processDefinitionKey,
    this.processInstanceId,
    this.caseDefinitionId,
    this.caseDefinitionKey,
    this.caseInstanceId,
    this.activityIdIn = const [],
    this.activityInstanceIdIn = const [],
    this.tenantIdIn = const [],
    this.withoutTenantId,
    this.evaluatedBefore,
    this.evaluatedAfter,
    this.userId,
    this.rootDecisionInstanceId,
    this.rootDecisionInstancesOnly,
    this.decisionRequirementsDefinitionId,
    this.decisionRequirementsDefinitionKey,
    this.includeInputs,
    this.includeOutputs,
    this.disableBinaryFetching,
    this.disableCustomObjectDeserialization,
  });

  /// Filter by decision instance id.
  String? decisionInstanceId;

  /// Filter by decision instance ids. Must be a comma-separated list of decision instance ids.
  List<String>? decisionInstanceIdIn;

  /// Filter by the decision definition the instances belongs to.
  String? decisionDefinitionId;

  /// Filter by the decision definitions the instances belongs to. Must be a comma-separated list of decision definition ids.
  List<String>? decisionDefinitionIdIn;

  /// Filter by the key of the decision definition the instances belongs to.
  String? decisionDefinitionKey;

  /// Filter by the keys of the decision definition the instances belongs to. Must be a comma- separated list of decision definition keys.
  List<String>? decisionDefinitionKeyIn;

  /// Filter by the name of the decision definition the instances belongs to.
  String? decisionDefinitionName;

  /// Filter by the name of the decision definition the instances belongs to, that the parameter is a substring of.
  String? decisionDefinitionNameLike;

  /// Filter by the process definition the instances belongs to.
  String? processDefinitionId;

  /// Filter by the key of the process definition the instances belongs to.
  String? processDefinitionKey;

  /// Filter by the process instance the instances belongs to.
  String? processInstanceId;

  /// Filter by the case definition the instances belongs to.
  String? caseDefinitionId;

  /// Filter by the key of the case definition the instances belongs to.
  String? caseDefinitionKey;

  /// Filter by the case instance the instances belongs to.
  String? caseInstanceId;

  /// Filter by the activity ids the instances belongs to. Must be a comma-separated list of acitvity ids.
  List<String>? activityIdIn;

  /// Filter by the activity instance ids the instances belongs to. Must be a comma-separated list of acitvity instance ids.
  List<String>? activityInstanceIdIn;

  /// Filter by a comma-separated list of tenant ids. A historic decision instance must have one of the given tenant ids.
  List<String>? tenantIdIn;

  /// Only include historic decision instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  bool? withoutTenantId;

  /// Restrict to instances that were evaluated before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? evaluatedBefore;

  /// Restrict to instances that were evaluated after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? evaluatedAfter;

  /// Restrict to instances that were evaluated by the given user.
  String? userId;

  /// Restrict to instances that have a given root decision instance id. This also includes the decision instance with the given id.
  String? rootDecisionInstanceId;

  /// Restrict to instances those are the root decision instance of an evaluation. Value may only be `true`, as `false` is the default behavior.
  bool? rootDecisionInstancesOnly;

  /// Filter by the decision requirements definition the instances belongs to.
  String? decisionRequirementsDefinitionId;

  /// Filter by the key of the decision requirements definition the instances belongs to.
  String? decisionRequirementsDefinitionKey;

  /// Include input values in the result. Value may only be `true`, as `false` is the default behavior.
  bool? includeInputs;

  /// Include output values in the result. Value may only be `true`, as `false` is the default behavior.
  bool? includeOutputs;

  /// Disables fetching of byte array input and output values. Value may only be `true`, as `false` is the default behavior.
  bool? disableBinaryFetching;

  /// Disables deserialization of input and output values that are custom objects. Value may only be `true`, as `false` is the default behavior.
  bool? disableCustomObjectDeserialization;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricDecisionInstanceQueryDto &&
    other.decisionInstanceId == decisionInstanceId &&
    _deepEquality.equals(other.decisionInstanceIdIn, decisionInstanceIdIn) &&
    other.decisionDefinitionId == decisionDefinitionId &&
    _deepEquality.equals(other.decisionDefinitionIdIn, decisionDefinitionIdIn) &&
    other.decisionDefinitionKey == decisionDefinitionKey &&
    _deepEquality.equals(other.decisionDefinitionKeyIn, decisionDefinitionKeyIn) &&
    other.decisionDefinitionName == decisionDefinitionName &&
    other.decisionDefinitionNameLike == decisionDefinitionNameLike &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    other.processInstanceId == processInstanceId &&
    other.caseDefinitionId == caseDefinitionId &&
    other.caseDefinitionKey == caseDefinitionKey &&
    other.caseInstanceId == caseInstanceId &&
    _deepEquality.equals(other.activityIdIn, activityIdIn) &&
    _deepEquality.equals(other.activityInstanceIdIn, activityInstanceIdIn) &&
    _deepEquality.equals(other.tenantIdIn, tenantIdIn) &&
    other.withoutTenantId == withoutTenantId &&
    other.evaluatedBefore == evaluatedBefore &&
    other.evaluatedAfter == evaluatedAfter &&
    other.userId == userId &&
    other.rootDecisionInstanceId == rootDecisionInstanceId &&
    other.rootDecisionInstancesOnly == rootDecisionInstancesOnly &&
    other.decisionRequirementsDefinitionId == decisionRequirementsDefinitionId &&
    other.decisionRequirementsDefinitionKey == decisionRequirementsDefinitionKey &&
    other.includeInputs == includeInputs &&
    other.includeOutputs == includeOutputs &&
    other.disableBinaryFetching == disableBinaryFetching &&
    other.disableCustomObjectDeserialization == disableCustomObjectDeserialization;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (decisionInstanceId == null ? 0 : decisionInstanceId!.hashCode) +
    (decisionInstanceIdIn == null ? 0 : decisionInstanceIdIn!.hashCode) +
    (decisionDefinitionId == null ? 0 : decisionDefinitionId!.hashCode) +
    (decisionDefinitionIdIn == null ? 0 : decisionDefinitionIdIn!.hashCode) +
    (decisionDefinitionKey == null ? 0 : decisionDefinitionKey!.hashCode) +
    (decisionDefinitionKeyIn == null ? 0 : decisionDefinitionKeyIn!.hashCode) +
    (decisionDefinitionName == null ? 0 : decisionDefinitionName!.hashCode) +
    (decisionDefinitionNameLike == null ? 0 : decisionDefinitionNameLike!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (caseDefinitionId == null ? 0 : caseDefinitionId!.hashCode) +
    (caseDefinitionKey == null ? 0 : caseDefinitionKey!.hashCode) +
    (caseInstanceId == null ? 0 : caseInstanceId!.hashCode) +
    (activityIdIn == null ? 0 : activityIdIn!.hashCode) +
    (activityInstanceIdIn == null ? 0 : activityInstanceIdIn!.hashCode) +
    (tenantIdIn == null ? 0 : tenantIdIn!.hashCode) +
    (withoutTenantId == null ? 0 : withoutTenantId!.hashCode) +
    (evaluatedBefore == null ? 0 : evaluatedBefore!.hashCode) +
    (evaluatedAfter == null ? 0 : evaluatedAfter!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (rootDecisionInstanceId == null ? 0 : rootDecisionInstanceId!.hashCode) +
    (rootDecisionInstancesOnly == null ? 0 : rootDecisionInstancesOnly!.hashCode) +
    (decisionRequirementsDefinitionId == null ? 0 : decisionRequirementsDefinitionId!.hashCode) +
    (decisionRequirementsDefinitionKey == null ? 0 : decisionRequirementsDefinitionKey!.hashCode) +
    (includeInputs == null ? 0 : includeInputs!.hashCode) +
    (includeOutputs == null ? 0 : includeOutputs!.hashCode) +
    (disableBinaryFetching == null ? 0 : disableBinaryFetching!.hashCode) +
    (disableCustomObjectDeserialization == null ? 0 : disableCustomObjectDeserialization!.hashCode);

  @override
  String toString() => 'HistoricDecisionInstanceQueryDto[decisionInstanceId=$decisionInstanceId, decisionInstanceIdIn=$decisionInstanceIdIn, decisionDefinitionId=$decisionDefinitionId, decisionDefinitionIdIn=$decisionDefinitionIdIn, decisionDefinitionKey=$decisionDefinitionKey, decisionDefinitionKeyIn=$decisionDefinitionKeyIn, decisionDefinitionName=$decisionDefinitionName, decisionDefinitionNameLike=$decisionDefinitionNameLike, processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, processInstanceId=$processInstanceId, caseDefinitionId=$caseDefinitionId, caseDefinitionKey=$caseDefinitionKey, caseInstanceId=$caseInstanceId, activityIdIn=$activityIdIn, activityInstanceIdIn=$activityInstanceIdIn, tenantIdIn=$tenantIdIn, withoutTenantId=$withoutTenantId, evaluatedBefore=$evaluatedBefore, evaluatedAfter=$evaluatedAfter, userId=$userId, rootDecisionInstanceId=$rootDecisionInstanceId, rootDecisionInstancesOnly=$rootDecisionInstancesOnly, decisionRequirementsDefinitionId=$decisionRequirementsDefinitionId, decisionRequirementsDefinitionKey=$decisionRequirementsDefinitionKey, includeInputs=$includeInputs, includeOutputs=$includeOutputs, disableBinaryFetching=$disableBinaryFetching, disableCustomObjectDeserialization=$disableCustomObjectDeserialization]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.decisionInstanceId != null) {
      json[r'decisionInstanceId'] = this.decisionInstanceId;
    } else {
      json[r'decisionInstanceId'] = null;
    }
    if (this.decisionInstanceIdIn != null) {
      json[r'decisionInstanceIdIn'] = this.decisionInstanceIdIn;
    } else {
      json[r'decisionInstanceIdIn'] = null;
    }
    if (this.decisionDefinitionId != null) {
      json[r'decisionDefinitionId'] = this.decisionDefinitionId;
    } else {
      json[r'decisionDefinitionId'] = null;
    }
    if (this.decisionDefinitionIdIn != null) {
      json[r'decisionDefinitionIdIn'] = this.decisionDefinitionIdIn;
    } else {
      json[r'decisionDefinitionIdIn'] = null;
    }
    if (this.decisionDefinitionKey != null) {
      json[r'decisionDefinitionKey'] = this.decisionDefinitionKey;
    } else {
      json[r'decisionDefinitionKey'] = null;
    }
    if (this.decisionDefinitionKeyIn != null) {
      json[r'decisionDefinitionKeyIn'] = this.decisionDefinitionKeyIn;
    } else {
      json[r'decisionDefinitionKeyIn'] = null;
    }
    if (this.decisionDefinitionName != null) {
      json[r'decisionDefinitionName'] = this.decisionDefinitionName;
    } else {
      json[r'decisionDefinitionName'] = null;
    }
    if (this.decisionDefinitionNameLike != null) {
      json[r'decisionDefinitionNameLike'] = this.decisionDefinitionNameLike;
    } else {
      json[r'decisionDefinitionNameLike'] = null;
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
    if (this.activityIdIn != null) {
      json[r'activityIdIn'] = this.activityIdIn;
    } else {
      json[r'activityIdIn'] = null;
    }
    if (this.activityInstanceIdIn != null) {
      json[r'activityInstanceIdIn'] = this.activityInstanceIdIn;
    } else {
      json[r'activityInstanceIdIn'] = null;
    }
    if (this.tenantIdIn != null) {
      json[r'tenantIdIn'] = this.tenantIdIn;
    } else {
      json[r'tenantIdIn'] = null;
    }
    if (this.withoutTenantId != null) {
      json[r'withoutTenantId'] = this.withoutTenantId;
    } else {
      json[r'withoutTenantId'] = null;
    }
    if (this.evaluatedBefore != null) {
      json[r'evaluatedBefore'] = this.evaluatedBefore!.toUtc().toIso8601String();
    } else {
      json[r'evaluatedBefore'] = null;
    }
    if (this.evaluatedAfter != null) {
      json[r'evaluatedAfter'] = this.evaluatedAfter!.toUtc().toIso8601String();
    } else {
      json[r'evaluatedAfter'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.rootDecisionInstanceId != null) {
      json[r'rootDecisionInstanceId'] = this.rootDecisionInstanceId;
    } else {
      json[r'rootDecisionInstanceId'] = null;
    }
    if (this.rootDecisionInstancesOnly != null) {
      json[r'rootDecisionInstancesOnly'] = this.rootDecisionInstancesOnly;
    } else {
      json[r'rootDecisionInstancesOnly'] = null;
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
    if (this.includeInputs != null) {
      json[r'includeInputs'] = this.includeInputs;
    } else {
      json[r'includeInputs'] = null;
    }
    if (this.includeOutputs != null) {
      json[r'includeOutputs'] = this.includeOutputs;
    } else {
      json[r'includeOutputs'] = null;
    }
    if (this.disableBinaryFetching != null) {
      json[r'disableBinaryFetching'] = this.disableBinaryFetching;
    } else {
      json[r'disableBinaryFetching'] = null;
    }
    if (this.disableCustomObjectDeserialization != null) {
      json[r'disableCustomObjectDeserialization'] = this.disableCustomObjectDeserialization;
    } else {
      json[r'disableCustomObjectDeserialization'] = null;
    }
    return json;
  }

  /// Returns a new [HistoricDecisionInstanceQueryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricDecisionInstanceQueryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricDecisionInstanceQueryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricDecisionInstanceQueryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricDecisionInstanceQueryDto(
        decisionInstanceId: mapValueOfType<String>(json, r'decisionInstanceId'),
        decisionInstanceIdIn: json[r'decisionInstanceIdIn'] is Iterable
            ? (json[r'decisionInstanceIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        decisionDefinitionId: mapValueOfType<String>(json, r'decisionDefinitionId'),
        decisionDefinitionIdIn: json[r'decisionDefinitionIdIn'] is Iterable
            ? (json[r'decisionDefinitionIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        decisionDefinitionKey: mapValueOfType<String>(json, r'decisionDefinitionKey'),
        decisionDefinitionKeyIn: json[r'decisionDefinitionKeyIn'] is Iterable
            ? (json[r'decisionDefinitionKeyIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        decisionDefinitionName: mapValueOfType<String>(json, r'decisionDefinitionName'),
        decisionDefinitionNameLike: mapValueOfType<String>(json, r'decisionDefinitionNameLike'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        caseDefinitionId: mapValueOfType<String>(json, r'caseDefinitionId'),
        caseDefinitionKey: mapValueOfType<String>(json, r'caseDefinitionKey'),
        caseInstanceId: mapValueOfType<String>(json, r'caseInstanceId'),
        activityIdIn: json[r'activityIdIn'] is Iterable
            ? (json[r'activityIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        activityInstanceIdIn: json[r'activityInstanceIdIn'] is Iterable
            ? (json[r'activityInstanceIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tenantIdIn: json[r'tenantIdIn'] is Iterable
            ? (json[r'tenantIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        withoutTenantId: mapValueOfType<bool>(json, r'withoutTenantId'),
        evaluatedBefore: mapDateTime(json, r'evaluatedBefore', r''),
        evaluatedAfter: mapDateTime(json, r'evaluatedAfter', r''),
        userId: mapValueOfType<String>(json, r'userId'),
        rootDecisionInstanceId: mapValueOfType<String>(json, r'rootDecisionInstanceId'),
        rootDecisionInstancesOnly: mapValueOfType<bool>(json, r'rootDecisionInstancesOnly'),
        decisionRequirementsDefinitionId: mapValueOfType<String>(json, r'decisionRequirementsDefinitionId'),
        decisionRequirementsDefinitionKey: mapValueOfType<String>(json, r'decisionRequirementsDefinitionKey'),
        includeInputs: mapValueOfType<bool>(json, r'includeInputs'),
        includeOutputs: mapValueOfType<bool>(json, r'includeOutputs'),
        disableBinaryFetching: mapValueOfType<bool>(json, r'disableBinaryFetching'),
        disableCustomObjectDeserialization: mapValueOfType<bool>(json, r'disableCustomObjectDeserialization'),
      );
    }
    return null;
  }

  static List<HistoricDecisionInstanceQueryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricDecisionInstanceQueryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricDecisionInstanceQueryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricDecisionInstanceQueryDto> mapFromJson(dynamic json) {
    final map = <String, HistoricDecisionInstanceQueryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricDecisionInstanceQueryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricDecisionInstanceQueryDto-objects as value to a dart map
  static Map<String, List<HistoricDecisionInstanceQueryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricDecisionInstanceQueryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricDecisionInstanceQueryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

