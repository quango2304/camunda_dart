//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoryCleanupConfigurationDto {
  /// Returns a new [HistoryCleanupConfigurationDto] instance.
  HistoryCleanupConfigurationDto({
    this.batchWindowStartTime,
    this.batchWindowEndTime,
    this.enabled,
  });

  /// Start time of the current or next batch window. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? batchWindowStartTime;

  /// End time of the current or next batch window. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? batchWindowEndTime;

  /// Indicates whether the engine node participates in history cleanup or not. The default is `true`. Participation can be disabled via [Process Engine Configuration](https://docs.camunda.org/manual/7.20/reference/deployment-descriptors/tags/process-engine/#history-cleanup-enabled).  For more details, see [Cleanup Execution Participation per Node](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#cleanup-execution-participation-per-node).
  bool? enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoryCleanupConfigurationDto &&
    other.batchWindowStartTime == batchWindowStartTime &&
    other.batchWindowEndTime == batchWindowEndTime &&
    other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (batchWindowStartTime == null ? 0 : batchWindowStartTime!.hashCode) +
    (batchWindowEndTime == null ? 0 : batchWindowEndTime!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode);

  @override
  String toString() => 'HistoryCleanupConfigurationDto[batchWindowStartTime=$batchWindowStartTime, batchWindowEndTime=$batchWindowEndTime, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.batchWindowStartTime != null) {
      json[r'batchWindowStartTime'] = this.batchWindowStartTime!.toUtc().toIso8601String();
    } else {
      json[r'batchWindowStartTime'] = null;
    }
    if (this.batchWindowEndTime != null) {
      json[r'batchWindowEndTime'] = this.batchWindowEndTime!.toUtc().toIso8601String();
    } else {
      json[r'batchWindowEndTime'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    return json;
  }

  /// Returns a new [HistoryCleanupConfigurationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoryCleanupConfigurationDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoryCleanupConfigurationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoryCleanupConfigurationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoryCleanupConfigurationDto(
        batchWindowStartTime: mapDateTime(json, r'batchWindowStartTime', r''),
        batchWindowEndTime: mapDateTime(json, r'batchWindowEndTime', r''),
        enabled: mapValueOfType<bool>(json, r'enabled'),
      );
    }
    return null;
  }

  static List<HistoryCleanupConfigurationDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoryCleanupConfigurationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoryCleanupConfigurationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoryCleanupConfigurationDto> mapFromJson(dynamic json) {
    final map = <String, HistoryCleanupConfigurationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoryCleanupConfigurationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoryCleanupConfigurationDto-objects as value to a dart map
  static Map<String, List<HistoryCleanupConfigurationDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoryCleanupConfigurationDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoryCleanupConfigurationDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

