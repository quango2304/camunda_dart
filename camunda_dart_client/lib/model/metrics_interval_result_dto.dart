//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MetricsIntervalResultDto {
  /// Returns a new [MetricsIntervalResultDto] instance.
  MetricsIntervalResultDto({
    this.timestamp,
    this.name,
    this.reporter,
    this.value,
  });

  /// The interval timestamp.
  DateTime? timestamp;

  /// The name of the metric.
  String? name;

  /// The reporter of the metric. `null` if the metrics are aggregated by reporter.
  String? reporter;

  /// The value of the metric aggregated by the interval.
  int? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MetricsIntervalResultDto &&
    other.timestamp == timestamp &&
    other.name == name &&
    other.reporter == reporter &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (reporter == null ? 0 : reporter!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'MetricsIntervalResultDto[timestamp=$timestamp, name=$name, reporter=$reporter, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.reporter != null) {
      json[r'reporter'] = this.reporter;
    } else {
      json[r'reporter'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [MetricsIntervalResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MetricsIntervalResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MetricsIntervalResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MetricsIntervalResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MetricsIntervalResultDto(
        timestamp: mapDateTime(json, r'timestamp', r''),
        name: mapValueOfType<String>(json, r'name'),
        reporter: mapValueOfType<String>(json, r'reporter'),
        value: mapValueOfType<int>(json, r'value'),
      );
    }
    return null;
  }

  static List<MetricsIntervalResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MetricsIntervalResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MetricsIntervalResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MetricsIntervalResultDto> mapFromJson(dynamic json) {
    final map = <String, MetricsIntervalResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MetricsIntervalResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MetricsIntervalResultDto-objects as value to a dart map
  static Map<String, List<MetricsIntervalResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MetricsIntervalResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MetricsIntervalResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

