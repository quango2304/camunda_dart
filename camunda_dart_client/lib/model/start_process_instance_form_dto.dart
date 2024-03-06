//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StartProcessInstanceFormDto {
  /// Returns a new [StartProcessInstanceFormDto] instance.
  StartProcessInstanceFormDto({
    this.variables = const {},
    this.businessKey,
  });

  /// 
  Map<String, VariableValueDto>? variables;

  /// The business key the process instance is to be initialized with. The business key uniquely identifies the process instance in the context of the given process definition.
  String? businessKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StartProcessInstanceFormDto &&
    _deepEquality.equals(other.variables, variables) &&
    other.businessKey == businessKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (variables == null ? 0 : variables!.hashCode) +
    (businessKey == null ? 0 : businessKey!.hashCode);

  @override
  String toString() => 'StartProcessInstanceFormDto[variables=$variables, businessKey=$businessKey]';

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
    return json;
  }

  /// Returns a new [StartProcessInstanceFormDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StartProcessInstanceFormDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StartProcessInstanceFormDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StartProcessInstanceFormDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StartProcessInstanceFormDto(
        variables: VariableValueDto.mapFromJson(json[r'variables']),
        businessKey: mapValueOfType<String>(json, r'businessKey'),
      );
    }
    return null;
  }

  static List<StartProcessInstanceFormDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StartProcessInstanceFormDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StartProcessInstanceFormDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StartProcessInstanceFormDto> mapFromJson(dynamic json) {
    final map = <String, StartProcessInstanceFormDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StartProcessInstanceFormDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StartProcessInstanceFormDto-objects as value to a dart map
  static Map<String, List<StartProcessInstanceFormDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StartProcessInstanceFormDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StartProcessInstanceFormDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

