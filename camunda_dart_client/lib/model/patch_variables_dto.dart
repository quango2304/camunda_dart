//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PatchVariablesDto {
  /// Returns a new [PatchVariablesDto] instance.
  PatchVariablesDto({
    this.modifications = const {},
    this.deletions = const [],
  });

  /// A JSON object containing variable key-value pairs.
  Map<String, VariableValueDto>? modifications;

  /// An array of String keys of variables to be deleted.
  List<String>? deletions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchVariablesDto &&
    _deepEquality.equals(other.modifications, modifications) &&
    _deepEquality.equals(other.deletions, deletions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (modifications == null ? 0 : modifications!.hashCode) +
    (deletions == null ? 0 : deletions!.hashCode);

  @override
  String toString() => 'PatchVariablesDto[modifications=$modifications, deletions=$deletions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.modifications != null) {
      json[r'modifications'] = this.modifications;
    } else {
      json[r'modifications'] = null;
    }
    if (this.deletions != null) {
      json[r'deletions'] = this.deletions;
    } else {
      json[r'deletions'] = null;
    }
    return json;
  }

  /// Returns a new [PatchVariablesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchVariablesDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchVariablesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchVariablesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchVariablesDto(
        modifications: VariableValueDto.mapFromJson(json[r'modifications']),
        deletions: json[r'deletions'] is Iterable
            ? (json[r'deletions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<PatchVariablesDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchVariablesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchVariablesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchVariablesDto> mapFromJson(dynamic json) {
    final map = <String, PatchVariablesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchVariablesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchVariablesDto-objects as value to a dart map
  static Map<String, List<PatchVariablesDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchVariablesDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchVariablesDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

