//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MigrationInstructionDto {
  /// Returns a new [MigrationInstructionDto] instance.
  MigrationInstructionDto({
    this.sourceActivityIds = const [],
    this.targetActivityIds = const [],
    this.updateEventTrigger,
  });

  /// The activity ids from the source process definition being mapped.
  List<String>? sourceActivityIds;

  /// The activity ids from the target process definition being mapped.
  List<String>? targetActivityIds;

  /// Configuration flag whether event triggers defined are going to be updated during migration.
  bool? updateEventTrigger;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MigrationInstructionDto &&
    _deepEquality.equals(other.sourceActivityIds, sourceActivityIds) &&
    _deepEquality.equals(other.targetActivityIds, targetActivityIds) &&
    other.updateEventTrigger == updateEventTrigger;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sourceActivityIds == null ? 0 : sourceActivityIds!.hashCode) +
    (targetActivityIds == null ? 0 : targetActivityIds!.hashCode) +
    (updateEventTrigger == null ? 0 : updateEventTrigger!.hashCode);

  @override
  String toString() => 'MigrationInstructionDto[sourceActivityIds=$sourceActivityIds, targetActivityIds=$targetActivityIds, updateEventTrigger=$updateEventTrigger]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sourceActivityIds != null) {
      json[r'sourceActivityIds'] = this.sourceActivityIds;
    } else {
      json[r'sourceActivityIds'] = null;
    }
    if (this.targetActivityIds != null) {
      json[r'targetActivityIds'] = this.targetActivityIds;
    } else {
      json[r'targetActivityIds'] = null;
    }
    if (this.updateEventTrigger != null) {
      json[r'updateEventTrigger'] = this.updateEventTrigger;
    } else {
      json[r'updateEventTrigger'] = null;
    }
    return json;
  }

  /// Returns a new [MigrationInstructionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MigrationInstructionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MigrationInstructionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MigrationInstructionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MigrationInstructionDto(
        sourceActivityIds: json[r'sourceActivityIds'] is Iterable
            ? (json[r'sourceActivityIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        targetActivityIds: json[r'targetActivityIds'] is Iterable
            ? (json[r'targetActivityIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        updateEventTrigger: mapValueOfType<bool>(json, r'updateEventTrigger'),
      );
    }
    return null;
  }

  static List<MigrationInstructionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MigrationInstructionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MigrationInstructionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MigrationInstructionDto> mapFromJson(dynamic json) {
    final map = <String, MigrationInstructionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MigrationInstructionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MigrationInstructionDto-objects as value to a dart map
  static Map<String, List<MigrationInstructionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MigrationInstructionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MigrationInstructionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

