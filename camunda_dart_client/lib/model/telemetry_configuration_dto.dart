//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TelemetryConfigurationDto {
  /// Returns a new [TelemetryConfigurationDto] instance.
  TelemetryConfigurationDto({
    this.enableTelemetry,
  });

  /// Specifies if the telemetry data should be sent or not.
  bool? enableTelemetry;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TelemetryConfigurationDto &&
    other.enableTelemetry == enableTelemetry;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enableTelemetry == null ? 0 : enableTelemetry!.hashCode);

  @override
  String toString() => 'TelemetryConfigurationDto[enableTelemetry=$enableTelemetry]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.enableTelemetry != null) {
      json[r'enableTelemetry'] = this.enableTelemetry;
    } else {
      json[r'enableTelemetry'] = null;
    }
    return json;
  }

  /// Returns a new [TelemetryConfigurationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TelemetryConfigurationDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TelemetryConfigurationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TelemetryConfigurationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TelemetryConfigurationDto(
        enableTelemetry: mapValueOfType<bool>(json, r'enableTelemetry'),
      );
    }
    return null;
  }

  static List<TelemetryConfigurationDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TelemetryConfigurationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TelemetryConfigurationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TelemetryConfigurationDto> mapFromJson(dynamic json) {
    final map = <String, TelemetryConfigurationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TelemetryConfigurationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TelemetryConfigurationDto-objects as value to a dart map
  static Map<String, List<TelemetryConfigurationDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TelemetryConfigurationDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TelemetryConfigurationDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

