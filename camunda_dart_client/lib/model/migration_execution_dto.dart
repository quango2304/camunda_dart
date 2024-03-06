//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MigrationExecutionDto {
  /// Returns a new [MigrationExecutionDto] instance.
  MigrationExecutionDto({
    this.migrationPlan,
    this.processInstanceIds = const [],
    this.processInstanceQuery,
    this.skipCustomListeners,
    this.skipIoMappings,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MigrationPlanDto? migrationPlan;

  /// A list of process instance ids to migrate.
  List<String>? processInstanceIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProcessInstanceQueryDto? processInstanceQuery;

  /// A boolean value to control whether execution listeners should be invoked during migration.
  bool? skipCustomListeners;

  /// A boolean value to control whether input/output mappings should be executed during migration.
  bool? skipIoMappings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MigrationExecutionDto &&
    other.migrationPlan == migrationPlan &&
    _deepEquality.equals(other.processInstanceIds, processInstanceIds) &&
    other.processInstanceQuery == processInstanceQuery &&
    other.skipCustomListeners == skipCustomListeners &&
    other.skipIoMappings == skipIoMappings;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (migrationPlan == null ? 0 : migrationPlan!.hashCode) +
    (processInstanceIds == null ? 0 : processInstanceIds!.hashCode) +
    (processInstanceQuery == null ? 0 : processInstanceQuery!.hashCode) +
    (skipCustomListeners == null ? 0 : skipCustomListeners!.hashCode) +
    (skipIoMappings == null ? 0 : skipIoMappings!.hashCode);

  @override
  String toString() => 'MigrationExecutionDto[migrationPlan=$migrationPlan, processInstanceIds=$processInstanceIds, processInstanceQuery=$processInstanceQuery, skipCustomListeners=$skipCustomListeners, skipIoMappings=$skipIoMappings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.migrationPlan != null) {
      json[r'migrationPlan'] = this.migrationPlan;
    } else {
      json[r'migrationPlan'] = null;
    }
    if (this.processInstanceIds != null) {
      json[r'processInstanceIds'] = this.processInstanceIds;
    } else {
      json[r'processInstanceIds'] = null;
    }
    if (this.processInstanceQuery != null) {
      json[r'processInstanceQuery'] = this.processInstanceQuery;
    } else {
      json[r'processInstanceQuery'] = null;
    }
    if (this.skipCustomListeners != null) {
      json[r'skipCustomListeners'] = this.skipCustomListeners;
    } else {
      json[r'skipCustomListeners'] = null;
    }
    if (this.skipIoMappings != null) {
      json[r'skipIoMappings'] = this.skipIoMappings;
    } else {
      json[r'skipIoMappings'] = null;
    }
    return json;
  }

  /// Returns a new [MigrationExecutionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MigrationExecutionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MigrationExecutionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MigrationExecutionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MigrationExecutionDto(
        migrationPlan: MigrationPlanDto.fromJson(json[r'migrationPlan']),
        processInstanceIds: json[r'processInstanceIds'] is Iterable
            ? (json[r'processInstanceIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processInstanceQuery: ProcessInstanceQueryDto.fromJson(json[r'processInstanceQuery']),
        skipCustomListeners: mapValueOfType<bool>(json, r'skipCustomListeners'),
        skipIoMappings: mapValueOfType<bool>(json, r'skipIoMappings'),
      );
    }
    return null;
  }

  static List<MigrationExecutionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MigrationExecutionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MigrationExecutionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MigrationExecutionDto> mapFromJson(dynamic json) {
    final map = <String, MigrationExecutionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MigrationExecutionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MigrationExecutionDto-objects as value to a dart map
  static Map<String, List<MigrationExecutionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MigrationExecutionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MigrationExecutionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

