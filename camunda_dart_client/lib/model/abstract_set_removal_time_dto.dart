//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AbstractSetRemovalTimeDto {
  /// Returns a new [AbstractSetRemovalTimeDto] instance.
  AbstractSetRemovalTimeDto({
    this.absoluteRemovalTime,
    this.clearedRemovalTime,
    this.calculatedRemovalTime,
  });

  /// The date for which the instances shall be removed. Value may not be `null`.  **Note:** Cannot be set in conjunction with `clearedRemovalTime` or `calculatedRemovalTime`.
  DateTime? absoluteRemovalTime;

  /// Sets the removal time to `null`. Value may only be `true`, as `false` is the default behavior.  **Note:** Cannot be set in conjunction with `absoluteRemovalTime` or `calculatedRemovalTime`.
  bool? clearedRemovalTime;

  /// The removal time is calculated based on the engine's configuration settings. Value may only be `true`, as `false` is the default behavior.  **Note:** Cannot be set in conjunction with `absoluteRemovalTime` or `clearedRemovalTime`.
  bool? calculatedRemovalTime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AbstractSetRemovalTimeDto &&
    other.absoluteRemovalTime == absoluteRemovalTime &&
    other.clearedRemovalTime == clearedRemovalTime &&
    other.calculatedRemovalTime == calculatedRemovalTime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (absoluteRemovalTime == null ? 0 : absoluteRemovalTime!.hashCode) +
    (clearedRemovalTime == null ? 0 : clearedRemovalTime!.hashCode) +
    (calculatedRemovalTime == null ? 0 : calculatedRemovalTime!.hashCode);

  @override
  String toString() => 'AbstractSetRemovalTimeDto[absoluteRemovalTime=$absoluteRemovalTime, clearedRemovalTime=$clearedRemovalTime, calculatedRemovalTime=$calculatedRemovalTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.absoluteRemovalTime != null) {
      json[r'absoluteRemovalTime'] = this.absoluteRemovalTime!.toUtc().toIso8601String();
    } else {
      json[r'absoluteRemovalTime'] = null;
    }
    if (this.clearedRemovalTime != null) {
      json[r'clearedRemovalTime'] = this.clearedRemovalTime;
    } else {
      json[r'clearedRemovalTime'] = null;
    }
    if (this.calculatedRemovalTime != null) {
      json[r'calculatedRemovalTime'] = this.calculatedRemovalTime;
    } else {
      json[r'calculatedRemovalTime'] = null;
    }
    return json;
  }

  /// Returns a new [AbstractSetRemovalTimeDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AbstractSetRemovalTimeDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AbstractSetRemovalTimeDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AbstractSetRemovalTimeDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AbstractSetRemovalTimeDto(
        absoluteRemovalTime: mapDateTime(json, r'absoluteRemovalTime', r''),
        clearedRemovalTime: mapValueOfType<bool>(json, r'clearedRemovalTime'),
        calculatedRemovalTime: mapValueOfType<bool>(json, r'calculatedRemovalTime'),
      );
    }
    return null;
  }

  static List<AbstractSetRemovalTimeDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AbstractSetRemovalTimeDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AbstractSetRemovalTimeDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AbstractSetRemovalTimeDto> mapFromJson(dynamic json) {
    final map = <String, AbstractSetRemovalTimeDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AbstractSetRemovalTimeDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AbstractSetRemovalTimeDto-objects as value to a dart map
  static Map<String, List<AbstractSetRemovalTimeDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AbstractSetRemovalTimeDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AbstractSetRemovalTimeDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

