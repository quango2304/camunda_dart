//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateIncidentDto {
  /// Returns a new [CreateIncidentDto] instance.
  CreateIncidentDto({
    this.incidentType,
    this.configuration,
    this.message,
  });

  /// A type of the new incident.
  String? incidentType;

  /// A configuration for the new incident.
  String? configuration;

  /// A message for the new incident.
  String? message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateIncidentDto &&
    other.incidentType == incidentType &&
    other.configuration == configuration &&
    other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (incidentType == null ? 0 : incidentType!.hashCode) +
    (configuration == null ? 0 : configuration!.hashCode) +
    (message == null ? 0 : message!.hashCode);

  @override
  String toString() => 'CreateIncidentDto[incidentType=$incidentType, configuration=$configuration, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.incidentType != null) {
      json[r'incidentType'] = this.incidentType;
    } else {
      json[r'incidentType'] = null;
    }
    if (this.configuration != null) {
      json[r'configuration'] = this.configuration;
    } else {
      json[r'configuration'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    return json;
  }

  /// Returns a new [CreateIncidentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateIncidentDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateIncidentDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateIncidentDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateIncidentDto(
        incidentType: mapValueOfType<String>(json, r'incidentType'),
        configuration: mapValueOfType<String>(json, r'configuration'),
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<CreateIncidentDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateIncidentDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateIncidentDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateIncidentDto> mapFromJson(dynamic json) {
    final map = <String, CreateIncidentDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateIncidentDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateIncidentDto-objects as value to a dart map
  static Map<String, List<CreateIncidentDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateIncidentDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateIncidentDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

