//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetriesDto {
  /// Returns a new [RetriesDto] instance.
  RetriesDto({
    this.retries,
  });

  /// The number of retries to set for the resource.  Must be >= 0. If this is 0, an incident is created and the task, or job, cannot be fetched, or acquired anymore unless the retries are increased again. Can not be null.
  int? retries;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetriesDto &&
    other.retries == retries;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (retries == null ? 0 : retries!.hashCode);

  @override
  String toString() => 'RetriesDto[retries=$retries]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.retries != null) {
      json[r'retries'] = this.retries;
    } else {
      json[r'retries'] = null;
    }
    return json;
  }

  /// Returns a new [RetriesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetriesDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetriesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetriesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetriesDto(
        retries: mapValueOfType<int>(json, r'retries'),
      );
    }
    return null;
  }

  static List<RetriesDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetriesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetriesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetriesDto> mapFromJson(dynamic json) {
    final map = <String, RetriesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetriesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetriesDto-objects as value to a dart map
  static Map<String, List<RetriesDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetriesDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetriesDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

