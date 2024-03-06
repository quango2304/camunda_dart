//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResourceReportDto {
  /// Returns a new [ResourceReportDto] instance.
  ResourceReportDto({
    this.errors = const [],
    this.warnings = const [],
  });

  /// A list of errors occurred during parsing.
  List<ProblemDto>? errors;

  /// A list of warnings occurred during parsing.
  List<ProblemDto>? warnings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResourceReportDto &&
    _deepEquality.equals(other.errors, errors) &&
    _deepEquality.equals(other.warnings, warnings);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (errors == null ? 0 : errors!.hashCode) +
    (warnings == null ? 0 : warnings!.hashCode);

  @override
  String toString() => 'ResourceReportDto[errors=$errors, warnings=$warnings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.errors != null) {
      json[r'errors'] = this.errors;
    } else {
      json[r'errors'] = null;
    }
    if (this.warnings != null) {
      json[r'warnings'] = this.warnings;
    } else {
      json[r'warnings'] = null;
    }
    return json;
  }

  /// Returns a new [ResourceReportDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResourceReportDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ResourceReportDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ResourceReportDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ResourceReportDto(
        errors: ProblemDto.listFromJson(json[r'errors']),
        warnings: ProblemDto.listFromJson(json[r'warnings']),
      );
    }
    return null;
  }

  static List<ResourceReportDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResourceReportDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResourceReportDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResourceReportDto> mapFromJson(dynamic json) {
    final map = <String, ResourceReportDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResourceReportDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResourceReportDto-objects as value to a dart map
  static Map<String, List<ResourceReportDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResourceReportDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResourceReportDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

