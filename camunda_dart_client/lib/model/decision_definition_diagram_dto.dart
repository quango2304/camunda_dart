//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DecisionDefinitionDiagramDto {
  /// Returns a new [DecisionDefinitionDiagramDto] instance.
  DecisionDefinitionDiagramDto({
    this.id,
    this.dmnXml,
  });

  /// The id of the decision definition.
  String? id;

  /// An escaped XML string containing the XML that this decision definition was deployed with. Carriage returns, line feeds and quotation marks are escaped.
  String? dmnXml;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DecisionDefinitionDiagramDto &&
    other.id == id &&
    other.dmnXml == dmnXml;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (dmnXml == null ? 0 : dmnXml!.hashCode);

  @override
  String toString() => 'DecisionDefinitionDiagramDto[id=$id, dmnXml=$dmnXml]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.dmnXml != null) {
      json[r'dmnXml'] = this.dmnXml;
    } else {
      json[r'dmnXml'] = null;
    }
    return json;
  }

  /// Returns a new [DecisionDefinitionDiagramDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DecisionDefinitionDiagramDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DecisionDefinitionDiagramDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DecisionDefinitionDiagramDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DecisionDefinitionDiagramDto(
        id: mapValueOfType<String>(json, r'id'),
        dmnXml: mapValueOfType<String>(json, r'dmnXml'),
      );
    }
    return null;
  }

  static List<DecisionDefinitionDiagramDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DecisionDefinitionDiagramDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DecisionDefinitionDiagramDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DecisionDefinitionDiagramDto> mapFromJson(dynamic json) {
    final map = <String, DecisionDefinitionDiagramDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DecisionDefinitionDiagramDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DecisionDefinitionDiagramDto-objects as value to a dart map
  static Map<String, List<DecisionDefinitionDiagramDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DecisionDefinitionDiagramDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DecisionDefinitionDiagramDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

