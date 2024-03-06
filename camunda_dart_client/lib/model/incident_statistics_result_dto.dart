//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IncidentStatisticsResultDto {
  /// Returns a new [IncidentStatisticsResultDto] instance.
  IncidentStatisticsResultDto({
    this.incidentType,
    this.incidentCount,
  });

  /// The type of the incident the number of incidents is aggregated for. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  String? incidentType;

  /// The total number of incidents for the corresponding incident type.
  int? incidentCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IncidentStatisticsResultDto &&
    other.incidentType == incidentType &&
    other.incidentCount == incidentCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (incidentType == null ? 0 : incidentType!.hashCode) +
    (incidentCount == null ? 0 : incidentCount!.hashCode);

  @override
  String toString() => 'IncidentStatisticsResultDto[incidentType=$incidentType, incidentCount=$incidentCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.incidentType != null) {
      json[r'incidentType'] = this.incidentType;
    } else {
      json[r'incidentType'] = null;
    }
    if (this.incidentCount != null) {
      json[r'incidentCount'] = this.incidentCount;
    } else {
      json[r'incidentCount'] = null;
    }
    return json;
  }

  /// Returns a new [IncidentStatisticsResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IncidentStatisticsResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IncidentStatisticsResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IncidentStatisticsResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IncidentStatisticsResultDto(
        incidentType: mapValueOfType<String>(json, r'incidentType'),
        incidentCount: mapValueOfType<int>(json, r'incidentCount'),
      );
    }
    return null;
  }

  static List<IncidentStatisticsResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IncidentStatisticsResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IncidentStatisticsResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IncidentStatisticsResultDto> mapFromJson(dynamic json) {
    final map = <String, IncidentStatisticsResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IncidentStatisticsResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IncidentStatisticsResultDto-objects as value to a dart map
  static Map<String, List<IncidentStatisticsResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IncidentStatisticsResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IncidentStatisticsResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

