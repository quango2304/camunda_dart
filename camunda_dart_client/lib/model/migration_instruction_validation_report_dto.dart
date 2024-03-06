//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MigrationInstructionValidationReportDto {
  /// Returns a new [MigrationInstructionValidationReportDto] instance.
  MigrationInstructionValidationReportDto({
    this.instruction,
    this.failures = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MigrationInstructionDto? instruction;

  /// A list of instruction validation report messages.
  List<String>? failures;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MigrationInstructionValidationReportDto &&
    other.instruction == instruction &&
    _deepEquality.equals(other.failures, failures);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (instruction == null ? 0 : instruction!.hashCode) +
    (failures == null ? 0 : failures!.hashCode);

  @override
  String toString() => 'MigrationInstructionValidationReportDto[instruction=$instruction, failures=$failures]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.instruction != null) {
      json[r'instruction'] = this.instruction;
    } else {
      json[r'instruction'] = null;
    }
    if (this.failures != null) {
      json[r'failures'] = this.failures;
    } else {
      json[r'failures'] = null;
    }
    return json;
  }

  /// Returns a new [MigrationInstructionValidationReportDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MigrationInstructionValidationReportDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MigrationInstructionValidationReportDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MigrationInstructionValidationReportDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MigrationInstructionValidationReportDto(
        instruction: MigrationInstructionDto.fromJson(json[r'instruction']),
        failures: json[r'failures'] is Iterable
            ? (json[r'failures'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<MigrationInstructionValidationReportDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MigrationInstructionValidationReportDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MigrationInstructionValidationReportDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MigrationInstructionValidationReportDto> mapFromJson(dynamic json) {
    final map = <String, MigrationInstructionValidationReportDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MigrationInstructionValidationReportDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MigrationInstructionValidationReportDto-objects as value to a dart map
  static Map<String, List<MigrationInstructionValidationReportDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MigrationInstructionValidationReportDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MigrationInstructionValidationReportDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

