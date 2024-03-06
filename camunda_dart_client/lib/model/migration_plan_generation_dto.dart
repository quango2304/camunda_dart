//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MigrationPlanGenerationDto {
  /// Returns a new [MigrationPlanGenerationDto] instance.
  MigrationPlanGenerationDto({
    this.sourceProcessDefinitionId,
    this.targetProcessDefinitionId,
    this.updateEventTriggers,
    this.variables = const {},
  });

  /// The id of the source process definition for the migration.
  String? sourceProcessDefinitionId;

  /// The id of the target process definition for the migration.
  String? targetProcessDefinitionId;

  /// A boolean flag indicating whether instructions between events should be configured to update the event triggers.
  bool? updateEventTriggers;

  /// A map of variables which will be set into the process instances' scope. Each key is a variable name and each value a JSON variable value object.
  Map<String, VariableValueDto>? variables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MigrationPlanGenerationDto &&
    other.sourceProcessDefinitionId == sourceProcessDefinitionId &&
    other.targetProcessDefinitionId == targetProcessDefinitionId &&
    other.updateEventTriggers == updateEventTriggers &&
    _deepEquality.equals(other.variables, variables);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sourceProcessDefinitionId == null ? 0 : sourceProcessDefinitionId!.hashCode) +
    (targetProcessDefinitionId == null ? 0 : targetProcessDefinitionId!.hashCode) +
    (updateEventTriggers == null ? 0 : updateEventTriggers!.hashCode) +
    (variables == null ? 0 : variables!.hashCode);

  @override
  String toString() => 'MigrationPlanGenerationDto[sourceProcessDefinitionId=$sourceProcessDefinitionId, targetProcessDefinitionId=$targetProcessDefinitionId, updateEventTriggers=$updateEventTriggers, variables=$variables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sourceProcessDefinitionId != null) {
      json[r'sourceProcessDefinitionId'] = this.sourceProcessDefinitionId;
    } else {
      json[r'sourceProcessDefinitionId'] = null;
    }
    if (this.targetProcessDefinitionId != null) {
      json[r'targetProcessDefinitionId'] = this.targetProcessDefinitionId;
    } else {
      json[r'targetProcessDefinitionId'] = null;
    }
    if (this.updateEventTriggers != null) {
      json[r'updateEventTriggers'] = this.updateEventTriggers;
    } else {
      json[r'updateEventTriggers'] = null;
    }
    if (this.variables != null) {
      json[r'variables'] = this.variables;
    } else {
      json[r'variables'] = null;
    }
    return json;
  }

  /// Returns a new [MigrationPlanGenerationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MigrationPlanGenerationDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MigrationPlanGenerationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MigrationPlanGenerationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MigrationPlanGenerationDto(
        sourceProcessDefinitionId: mapValueOfType<String>(json, r'sourceProcessDefinitionId'),
        targetProcessDefinitionId: mapValueOfType<String>(json, r'targetProcessDefinitionId'),
        updateEventTriggers: mapValueOfType<bool>(json, r'updateEventTriggers'),
        variables: VariableValueDto.mapFromJson(json[r'variables']),
      );
    }
    return null;
  }

  static List<MigrationPlanGenerationDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MigrationPlanGenerationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MigrationPlanGenerationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MigrationPlanGenerationDto> mapFromJson(dynamic json) {
    final map = <String, MigrationPlanGenerationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MigrationPlanGenerationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MigrationPlanGenerationDto-objects as value to a dart map
  static Map<String, List<MigrationPlanGenerationDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MigrationPlanGenerationDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MigrationPlanGenerationDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

