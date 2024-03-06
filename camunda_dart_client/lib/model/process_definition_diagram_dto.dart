//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProcessDefinitionDiagramDto {
  /// Returns a new [ProcessDefinitionDiagramDto] instance.
  ProcessDefinitionDiagramDto({
    this.id,
    this.bpmn20Xml,
  });

  /// The id of the process definition.
  String? id;

  /// An escaped XML string containing the XML that this definition was deployed with. Carriage returns, line feeds and quotation marks are escaped.
  String? bpmn20Xml;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProcessDefinitionDiagramDto &&
    other.id == id &&
    other.bpmn20Xml == bpmn20Xml;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (bpmn20Xml == null ? 0 : bpmn20Xml!.hashCode);

  @override
  String toString() => 'ProcessDefinitionDiagramDto[id=$id, bpmn20Xml=$bpmn20Xml]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.bpmn20Xml != null) {
      json[r'bpmn20Xml'] = this.bpmn20Xml;
    } else {
      json[r'bpmn20Xml'] = null;
    }
    return json;
  }

  /// Returns a new [ProcessDefinitionDiagramDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProcessDefinitionDiagramDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProcessDefinitionDiagramDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProcessDefinitionDiagramDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProcessDefinitionDiagramDto(
        id: mapValueOfType<String>(json, r'id'),
        bpmn20Xml: mapValueOfType<String>(json, r'bpmn20Xml'),
      );
    }
    return null;
  }

  static List<ProcessDefinitionDiagramDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProcessDefinitionDiagramDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProcessDefinitionDiagramDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProcessDefinitionDiagramDto> mapFromJson(dynamic json) {
    final map = <String, ProcessDefinitionDiagramDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProcessDefinitionDiagramDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProcessDefinitionDiagramDto-objects as value to a dart map
  static Map<String, List<ProcessDefinitionDiagramDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProcessDefinitionDiagramDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProcessDefinitionDiagramDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

