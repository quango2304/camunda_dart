//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EvaluateDecisionDto {
  /// Returns a new [EvaluateDecisionDto] instance.
  EvaluateDecisionDto({
    this.variables = const {},
  });

  /// 
  Map<String, VariableValueDto>? variables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EvaluateDecisionDto &&
    _deepEquality.equals(other.variables, variables);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (variables == null ? 0 : variables!.hashCode);

  @override
  String toString() => 'EvaluateDecisionDto[variables=$variables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.variables != null) {
      json[r'variables'] = this.variables;
    } else {
      json[r'variables'] = null;
    }
    return json;
  }

  /// Returns a new [EvaluateDecisionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EvaluateDecisionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EvaluateDecisionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EvaluateDecisionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EvaluateDecisionDto(
        variables: VariableValueDto.mapFromJson(json[r'variables']),
      );
    }
    return null;
  }

  static List<EvaluateDecisionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EvaluateDecisionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EvaluateDecisionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EvaluateDecisionDto> mapFromJson(dynamic json) {
    final map = <String, EvaluateDecisionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EvaluateDecisionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EvaluateDecisionDto-objects as value to a dart map
  static Map<String, List<EvaluateDecisionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EvaluateDecisionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EvaluateDecisionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

