//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EvaluationConditionDto {
  /// Returns a new [EvaluationConditionDto] instance.
  EvaluationConditionDto({
    this.variables = const {},
    this.businessKey,
    this.tenantId,
    this.withoutTenantId,
    this.processDefinitionId,
  });

  /// A map of variables which are used for evaluation of the conditions and are injected into the process instances which have been triggered. Each key is a variable name and each value a JSON variable value object with the following properties.
  Map<String, VariableValueDto>? variables;

  /// Used for the process instances that have been triggered after the evaluation.
  String? businessKey;

  /// Used to evaluate a condition for a tenant with the given id. Will only evaluate conditions of process definitions which belong to the tenant.
  String? tenantId;

  /// A Boolean value that indicates whether the conditions should only be evaluated of process definitions which belong to no tenant or not. Value may only be true, as false is the default behavior.
  bool? withoutTenantId;

  /// Used to evaluate conditions of the process definition with the given id.
  String? processDefinitionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EvaluationConditionDto &&
    _deepEquality.equals(other.variables, variables) &&
    other.businessKey == businessKey &&
    other.tenantId == tenantId &&
    other.withoutTenantId == withoutTenantId &&
    other.processDefinitionId == processDefinitionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (variables == null ? 0 : variables!.hashCode) +
    (businessKey == null ? 0 : businessKey!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (withoutTenantId == null ? 0 : withoutTenantId!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode);

  @override
  String toString() => 'EvaluationConditionDto[variables=$variables, businessKey=$businessKey, tenantId=$tenantId, withoutTenantId=$withoutTenantId, processDefinitionId=$processDefinitionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.variables != null) {
      json[r'variables'] = this.variables;
    } else {
      json[r'variables'] = null;
    }
    if (this.businessKey != null) {
      json[r'businessKey'] = this.businessKey;
    } else {
      json[r'businessKey'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    if (this.withoutTenantId != null) {
      json[r'withoutTenantId'] = this.withoutTenantId;
    } else {
      json[r'withoutTenantId'] = null;
    }
    if (this.processDefinitionId != null) {
      json[r'processDefinitionId'] = this.processDefinitionId;
    } else {
      json[r'processDefinitionId'] = null;
    }
    return json;
  }

  /// Returns a new [EvaluationConditionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EvaluationConditionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EvaluationConditionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EvaluationConditionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EvaluationConditionDto(
        variables: VariableValueDto.mapFromJson(json[r'variables']),
        businessKey: mapValueOfType<String>(json, r'businessKey'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        withoutTenantId: mapValueOfType<bool>(json, r'withoutTenantId'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
      );
    }
    return null;
  }

  static List<EvaluationConditionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EvaluationConditionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EvaluationConditionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EvaluationConditionDto> mapFromJson(dynamic json) {
    final map = <String, EvaluationConditionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EvaluationConditionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EvaluationConditionDto-objects as value to a dart map
  static Map<String, List<EvaluationConditionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EvaluationConditionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EvaluationConditionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

