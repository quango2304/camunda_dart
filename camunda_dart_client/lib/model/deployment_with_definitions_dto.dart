//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeploymentWithDefinitionsDto {
  /// Returns a new [DeploymentWithDefinitionsDto] instance.
  DeploymentWithDefinitionsDto({
    this.id,
    this.tenantId,
    this.deploymentTime,
    this.source_,
    this.name,
    this.links = const [],
    this.deployedProcessDefinitions = const {},
    this.deployedDecisionDefinitions = const {},
    this.deployedDecisionRequirementsDefinitions = const {},
    this.deployedCaseDefinitions = const {},
  });

  /// The id of the deployment.
  String? id;

  /// The tenant id of the deployment.
  String? tenantId;

  /// The time when the deployment was created.
  DateTime? deploymentTime;

  /// The source of the deployment.
  String? source_;

  /// The name of the deployment.
  String? name;

  /// The links associated to this resource, with `method`, `href` and `rel`.
  List<AtomLink>? links;

  /// A JSON Object containing a property for each of the process definitions, which are successfully deployed with that deployment. The key is the process definition id, the value is a JSON Object corresponding to the process definition.
  Map<String, ProcessDefinitionDto>? deployedProcessDefinitions;

  /// A JSON Object containing a property for each of the decision definitions, which are successfully deployed with that deployment. The key is the decision definition id, the value is a JSON Object corresponding to the decision definition.
  Map<String, DecisionDefinitionDto>? deployedDecisionDefinitions;

  /// A JSON Object containing a property for each of the decision requirements definitions, which are successfully deployed with that deployment. The key is the decision requirements definition id, the value is a JSON Object corresponding to the decision requirements definition.
  Map<String, DecisionRequirementsDefinitionDto>? deployedDecisionRequirementsDefinitions;

  /// A JSON Object containing a property for each of the case definitions, which are successfully deployed with that deployment. The key is the case definition id, the value is a JSON Object corresponding to the case definition.
  Map<String, CaseDefinitionDto>? deployedCaseDefinitions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeploymentWithDefinitionsDto &&
    other.id == id &&
    other.tenantId == tenantId &&
    other.deploymentTime == deploymentTime &&
    other.source_ == source_ &&
    other.name == name &&
    _deepEquality.equals(other.links, links) &&
    _deepEquality.equals(other.deployedProcessDefinitions, deployedProcessDefinitions) &&
    _deepEquality.equals(other.deployedDecisionDefinitions, deployedDecisionDefinitions) &&
    _deepEquality.equals(other.deployedDecisionRequirementsDefinitions, deployedDecisionRequirementsDefinitions) &&
    _deepEquality.equals(other.deployedCaseDefinitions, deployedCaseDefinitions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (deploymentTime == null ? 0 : deploymentTime!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (links == null ? 0 : links!.hashCode) +
    (deployedProcessDefinitions == null ? 0 : deployedProcessDefinitions!.hashCode) +
    (deployedDecisionDefinitions == null ? 0 : deployedDecisionDefinitions!.hashCode) +
    (deployedDecisionRequirementsDefinitions == null ? 0 : deployedDecisionRequirementsDefinitions!.hashCode) +
    (deployedCaseDefinitions == null ? 0 : deployedCaseDefinitions!.hashCode);

  @override
  String toString() => 'DeploymentWithDefinitionsDto[id=$id, tenantId=$tenantId, deploymentTime=$deploymentTime, source_=$source_, name=$name, links=$links, deployedProcessDefinitions=$deployedProcessDefinitions, deployedDecisionDefinitions=$deployedDecisionDefinitions, deployedDecisionRequirementsDefinitions=$deployedDecisionRequirementsDefinitions, deployedCaseDefinitions=$deployedCaseDefinitions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    if (this.deploymentTime != null) {
      json[r'deploymentTime'] = this.deploymentTime!.toUtc().toIso8601String();
    } else {
      json[r'deploymentTime'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.links != null) {
      json[r'links'] = this.links;
    } else {
      json[r'links'] = null;
    }
    if (this.deployedProcessDefinitions != null) {
      json[r'deployedProcessDefinitions'] = this.deployedProcessDefinitions;
    } else {
      json[r'deployedProcessDefinitions'] = null;
    }
    if (this.deployedDecisionDefinitions != null) {
      json[r'deployedDecisionDefinitions'] = this.deployedDecisionDefinitions;
    } else {
      json[r'deployedDecisionDefinitions'] = null;
    }
    if (this.deployedDecisionRequirementsDefinitions != null) {
      json[r'deployedDecisionRequirementsDefinitions'] = this.deployedDecisionRequirementsDefinitions;
    } else {
      json[r'deployedDecisionRequirementsDefinitions'] = null;
    }
    if (this.deployedCaseDefinitions != null) {
      json[r'deployedCaseDefinitions'] = this.deployedCaseDefinitions;
    } else {
      json[r'deployedCaseDefinitions'] = null;
    }
    return json;
  }

  /// Returns a new [DeploymentWithDefinitionsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeploymentWithDefinitionsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeploymentWithDefinitionsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeploymentWithDefinitionsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeploymentWithDefinitionsDto(
        id: mapValueOfType<String>(json, r'id'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        deploymentTime: mapDateTime(json, r'deploymentTime', r''),
        source_: mapValueOfType<String>(json, r'source'),
        name: mapValueOfType<String>(json, r'name'),
        links: AtomLink.listFromJson(json[r'links']),
        deployedProcessDefinitions: ProcessDefinitionDto.mapFromJson(json[r'deployedProcessDefinitions']),
        deployedDecisionDefinitions: DecisionDefinitionDto.mapFromJson(json[r'deployedDecisionDefinitions']),
        deployedDecisionRequirementsDefinitions: DecisionRequirementsDefinitionDto.mapFromJson(json[r'deployedDecisionRequirementsDefinitions']),
        deployedCaseDefinitions: CaseDefinitionDto.mapFromJson(json[r'deployedCaseDefinitions']),
      );
    }
    return null;
  }

  static List<DeploymentWithDefinitionsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeploymentWithDefinitionsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeploymentWithDefinitionsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeploymentWithDefinitionsDto> mapFromJson(dynamic json) {
    final map = <String, DeploymentWithDefinitionsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeploymentWithDefinitionsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeploymentWithDefinitionsDto-objects as value to a dart map
  static Map<String, List<DeploymentWithDefinitionsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeploymentWithDefinitionsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeploymentWithDefinitionsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

