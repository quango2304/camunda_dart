//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TelemetryProductDto {
  /// Returns a new [TelemetryProductDto] instance.
  TelemetryProductDto({
    this.name,
    this.version,
    this.edition,
    this.internals,
  });

  /// The name of the product (i.e., Camunda BPM Runtime).
  String? name;

  /// The version of the process engine (i.e., 7.X.Y).
  String? version;

  /// The edition of the product (i.e., either community or enterprise).
  String? edition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TelemetryInternalsDto? internals;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TelemetryProductDto &&
    other.name == name &&
    other.version == version &&
    other.edition == edition &&
    other.internals == internals;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (edition == null ? 0 : edition!.hashCode) +
    (internals == null ? 0 : internals!.hashCode);

  @override
  String toString() => 'TelemetryProductDto[name=$name, version=$version, edition=$edition, internals=$internals]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.edition != null) {
      json[r'edition'] = this.edition;
    } else {
      json[r'edition'] = null;
    }
    if (this.internals != null) {
      json[r'internals'] = this.internals;
    } else {
      json[r'internals'] = null;
    }
    return json;
  }

  /// Returns a new [TelemetryProductDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TelemetryProductDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TelemetryProductDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TelemetryProductDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TelemetryProductDto(
        name: mapValueOfType<String>(json, r'name'),
        version: mapValueOfType<String>(json, r'version'),
        edition: mapValueOfType<String>(json, r'edition'),
        internals: TelemetryInternalsDto.fromJson(json[r'internals']),
      );
    }
    return null;
  }

  static List<TelemetryProductDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TelemetryProductDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TelemetryProductDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TelemetryProductDto> mapFromJson(dynamic json) {
    final map = <String, TelemetryProductDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TelemetryProductDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TelemetryProductDto-objects as value to a dart map
  static Map<String, List<TelemetryProductDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TelemetryProductDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TelemetryProductDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

