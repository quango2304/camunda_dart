//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DecisionRequirementsDefinitionDto {
  /// Returns a new [DecisionRequirementsDefinitionDto] instance.
  DecisionRequirementsDefinitionDto({
    this.id,
    this.key,
    this.category,
    this.name,
    this.version,
    this.resource,
    this.deploymentId,
    this.tenantId,
  });

  /// The id of the decision requirements definition.
  String? id;

  /// The key of the decision requirements definition.
  String? key;

  /// The category of the decision requirements definition.
  String? category;

  /// The name of the decision requirements definition.
  String? name;

  /// The version of the decision requirements definition that the engine assigned to it.
  int? version;

  /// The file name of the decision requirements definition.
  String? resource;

  /// The deployment id of the decision requirements definition.
  String? deploymentId;

  /// The tenant id of the decision requirements definition.
  String? tenantId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DecisionRequirementsDefinitionDto &&
    other.id == id &&
    other.key == key &&
    other.category == category &&
    other.name == name &&
    other.version == version &&
    other.resource == resource &&
    other.deploymentId == deploymentId &&
    other.tenantId == tenantId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (resource == null ? 0 : resource!.hashCode) +
    (deploymentId == null ? 0 : deploymentId!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode);

  @override
  String toString() => 'DecisionRequirementsDefinitionDto[id=$id, key=$key, category=$category, name=$name, version=$version, resource=$resource, deploymentId=$deploymentId, tenantId=$tenantId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.resource != null) {
      json[r'resource'] = this.resource;
    } else {
      json[r'resource'] = null;
    }
    if (this.deploymentId != null) {
      json[r'deploymentId'] = this.deploymentId;
    } else {
      json[r'deploymentId'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    return json;
  }

  /// Returns a new [DecisionRequirementsDefinitionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DecisionRequirementsDefinitionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DecisionRequirementsDefinitionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DecisionRequirementsDefinitionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DecisionRequirementsDefinitionDto(
        id: mapValueOfType<String>(json, r'id'),
        key: mapValueOfType<String>(json, r'key'),
        category: mapValueOfType<String>(json, r'category'),
        name: mapValueOfType<String>(json, r'name'),
        version: mapValueOfType<int>(json, r'version'),
        resource: mapValueOfType<String>(json, r'resource'),
        deploymentId: mapValueOfType<String>(json, r'deploymentId'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
      );
    }
    return null;
  }

  static List<DecisionRequirementsDefinitionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DecisionRequirementsDefinitionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DecisionRequirementsDefinitionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DecisionRequirementsDefinitionDto> mapFromJson(dynamic json) {
    final map = <String, DecisionRequirementsDefinitionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DecisionRequirementsDefinitionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DecisionRequirementsDefinitionDto-objects as value to a dart map
  static Map<String, List<DecisionRequirementsDefinitionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DecisionRequirementsDefinitionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DecisionRequirementsDefinitionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

