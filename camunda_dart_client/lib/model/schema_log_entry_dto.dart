//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SchemaLogEntryDto {
  /// Returns a new [SchemaLogEntryDto] instance.
  SchemaLogEntryDto({
    this.id,
    this.timestamp,
    this.version,
  });

  /// The id of the schema log entry.
  String? id;

  /// The date and time of the schema update.
  DateTime? timestamp;

  /// The version of the schema.
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SchemaLogEntryDto &&
    other.id == id &&
    other.timestamp == timestamp &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'SchemaLogEntryDto[id=$id, timestamp=$timestamp, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [SchemaLogEntryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SchemaLogEntryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SchemaLogEntryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SchemaLogEntryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SchemaLogEntryDto(
        id: mapValueOfType<String>(json, r'id'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<SchemaLogEntryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SchemaLogEntryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SchemaLogEntryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SchemaLogEntryDto> mapFromJson(dynamic json) {
    final map = <String, SchemaLogEntryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SchemaLogEntryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SchemaLogEntryDto-objects as value to a dart map
  static Map<String, List<SchemaLogEntryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SchemaLogEntryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SchemaLogEntryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

