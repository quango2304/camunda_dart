//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MigrationPlanReportDto {
  /// Returns a new [MigrationPlanReportDto] instance.
  MigrationPlanReportDto({
    this.instructionReports = const [],
    this.variableReports = const {},
  });

  /// The list of instruction validation reports. If no validation errors are detected it is an empty list.
  List<MigrationInstructionValidationReportDto>? instructionReports;

  /// A map of variable reports. Each key is a variable name and each value a JSON object consisting of the variable's type, value, value info object and a list of failures.
  Map<String, MigrationVariableValidationReportDto>? variableReports;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MigrationPlanReportDto &&
    _deepEquality.equals(other.instructionReports, instructionReports) &&
    _deepEquality.equals(other.variableReports, variableReports);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (instructionReports == null ? 0 : instructionReports!.hashCode) +
    (variableReports == null ? 0 : variableReports!.hashCode);

  @override
  String toString() => 'MigrationPlanReportDto[instructionReports=$instructionReports, variableReports=$variableReports]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.instructionReports != null) {
      json[r'instructionReports'] = this.instructionReports;
    } else {
      json[r'instructionReports'] = null;
    }
    if (this.variableReports != null) {
      json[r'variableReports'] = this.variableReports;
    } else {
      json[r'variableReports'] = null;
    }
    return json;
  }

  /// Returns a new [MigrationPlanReportDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MigrationPlanReportDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MigrationPlanReportDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MigrationPlanReportDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MigrationPlanReportDto(
        instructionReports: MigrationInstructionValidationReportDto.listFromJson(json[r'instructionReports']),
        variableReports: MigrationVariableValidationReportDto.mapFromJson(json[r'variableReports']),
      );
    }
    return null;
  }

  static List<MigrationPlanReportDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MigrationPlanReportDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MigrationPlanReportDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MigrationPlanReportDto> mapFromJson(dynamic json) {
    final map = <String, MigrationPlanReportDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MigrationPlanReportDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MigrationPlanReportDto-objects as value to a dart map
  static Map<String, List<MigrationPlanReportDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MigrationPlanReportDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MigrationPlanReportDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

