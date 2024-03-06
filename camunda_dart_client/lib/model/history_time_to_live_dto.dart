//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoryTimeToLiveDto {
  /// Returns a new [HistoryTimeToLiveDto] instance.
  HistoryTimeToLiveDto({
    this.historyTimeToLive,
  });

  /// New value for historyTimeToLive field of the definition. Can be `null` if `enforceHistoryTimeToLive` is configured to `false`. Cannot be negative.
  ///
  /// Minimum value: 0
  int? historyTimeToLive;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoryTimeToLiveDto &&
    other.historyTimeToLive == historyTimeToLive;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (historyTimeToLive == null ? 0 : historyTimeToLive!.hashCode);

  @override
  String toString() => 'HistoryTimeToLiveDto[historyTimeToLive=$historyTimeToLive]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.historyTimeToLive != null) {
      json[r'historyTimeToLive'] = this.historyTimeToLive;
    } else {
      json[r'historyTimeToLive'] = null;
    }
    return json;
  }

  /// Returns a new [HistoryTimeToLiveDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoryTimeToLiveDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoryTimeToLiveDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoryTimeToLiveDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoryTimeToLiveDto(
        historyTimeToLive: mapValueOfType<int>(json, r'historyTimeToLive'),
      );
    }
    return null;
  }

  static List<HistoryTimeToLiveDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoryTimeToLiveDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoryTimeToLiveDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoryTimeToLiveDto> mapFromJson(dynamic json) {
    final map = <String, HistoryTimeToLiveDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoryTimeToLiveDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoryTimeToLiveDto-objects as value to a dart map
  static Map<String, List<HistoryTimeToLiveDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoryTimeToLiveDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoryTimeToLiveDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

