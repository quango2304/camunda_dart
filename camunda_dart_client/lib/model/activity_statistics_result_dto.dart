//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ActivityStatisticsResultDto {
  /// Returns a new [ActivityStatisticsResultDto] instance.
  ActivityStatisticsResultDto({
    this.id,
    this.instances,
    this.failedJobs,
    this.incidents = const [],
    this.atClass,
  });

  /// The id of the activity the results are aggregated for.
  String? id;

  /// The total number of running process instances of this activity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? instances;

  /// The total number of failed jobs for the running instances. **Note**: Will be `0` (not `null`), if failed jobs were excluded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? failedJobs;

  /// Each item in the resulting array is an object which contains `incidentType` and `incidentCount`. **Note**: Will be an empty array, if `incidents` or `incidentsForType` were excluded. Furthermore, the array will be also empty if no incidents were found.
  List<IncidentStatisticsResultDto>? incidents;

  /// The fully qualified class name of the data transfer object class. The class name might change in future releases.
  String? atClass;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ActivityStatisticsResultDto &&
    other.id == id &&
    other.instances == instances &&
    other.failedJobs == failedJobs &&
    _deepEquality.equals(other.incidents, incidents) &&
    other.atClass == atClass;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (instances == null ? 0 : instances!.hashCode) +
    (failedJobs == null ? 0 : failedJobs!.hashCode) +
    (incidents == null ? 0 : incidents!.hashCode) +
    (atClass == null ? 0 : atClass!.hashCode);

  @override
  String toString() => 'ActivityStatisticsResultDto[id=$id, instances=$instances, failedJobs=$failedJobs, incidents=$incidents, atClass=$atClass]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.instances != null) {
      json[r'instances'] = this.instances;
    } else {
      json[r'instances'] = null;
    }
    if (this.failedJobs != null) {
      json[r'failedJobs'] = this.failedJobs;
    } else {
      json[r'failedJobs'] = null;
    }
    if (this.incidents != null) {
      json[r'incidents'] = this.incidents;
    } else {
      json[r'incidents'] = null;
    }
    if (this.atClass != null) {
      json[r'@class'] = this.atClass;
    } else {
      json[r'@class'] = null;
    }
    return json;
  }

  /// Returns a new [ActivityStatisticsResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActivityStatisticsResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ActivityStatisticsResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ActivityStatisticsResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ActivityStatisticsResultDto(
        id: mapValueOfType<String>(json, r'id'),
        instances: mapValueOfType<int>(json, r'instances'),
        failedJobs: mapValueOfType<int>(json, r'failedJobs'),
        incidents: IncidentStatisticsResultDto.listFromJson(json[r'incidents']),
        atClass: mapValueOfType<String>(json, r'@class'),
      );
    }
    return null;
  }

  static List<ActivityStatisticsResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ActivityStatisticsResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActivityStatisticsResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ActivityStatisticsResultDto> mapFromJson(dynamic json) {
    final map = <String, ActivityStatisticsResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ActivityStatisticsResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ActivityStatisticsResultDto-objects as value to a dart map
  static Map<String, List<ActivityStatisticsResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ActivityStatisticsResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ActivityStatisticsResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

