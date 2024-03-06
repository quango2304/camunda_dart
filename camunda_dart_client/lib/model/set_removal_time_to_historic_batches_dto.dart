//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SetRemovalTimeToHistoricBatchesDto {
  /// Returns a new [SetRemovalTimeToHistoricBatchesDto] instance.
  SetRemovalTimeToHistoricBatchesDto({
    this.absoluteRemovalTime,
    this.clearedRemovalTime,
    this.calculatedRemovalTime,
    this.historicBatchQuery,
    this.historicBatchIds = const [],
  });

  /// The date for which the instances shall be removed. Value may not be `null`.  **Note:** Cannot be set in conjunction with `clearedRemovalTime` or `calculatedRemovalTime`.
  DateTime? absoluteRemovalTime;

  /// Sets the removal time to `null`. Value may only be `true`, as `false` is the default behavior.  **Note:** Cannot be set in conjunction with `absoluteRemovalTime` or `calculatedRemovalTime`.
  bool? clearedRemovalTime;

  /// The removal time is calculated based on the engine's configuration settings. Value may only be `true`, as `false` is the default behavior.  **Note:** Cannot be set in conjunction with `absoluteRemovalTime` or `clearedRemovalTime`.
  bool? calculatedRemovalTime;

  /// Query for the historic batches to set the removal time for.
  Object? historicBatchQuery;

  /// The ids of the historic batches to set the removal time for.
  List<String>? historicBatchIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetRemovalTimeToHistoricBatchesDto &&
    other.absoluteRemovalTime == absoluteRemovalTime &&
    other.clearedRemovalTime == clearedRemovalTime &&
    other.calculatedRemovalTime == calculatedRemovalTime &&
    other.historicBatchQuery == historicBatchQuery &&
    _deepEquality.equals(other.historicBatchIds, historicBatchIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (absoluteRemovalTime == null ? 0 : absoluteRemovalTime!.hashCode) +
    (clearedRemovalTime == null ? 0 : clearedRemovalTime!.hashCode) +
    (calculatedRemovalTime == null ? 0 : calculatedRemovalTime!.hashCode) +
    (historicBatchQuery == null ? 0 : historicBatchQuery!.hashCode) +
    (historicBatchIds == null ? 0 : historicBatchIds!.hashCode);

  @override
  String toString() => 'SetRemovalTimeToHistoricBatchesDto[absoluteRemovalTime=$absoluteRemovalTime, clearedRemovalTime=$clearedRemovalTime, calculatedRemovalTime=$calculatedRemovalTime, historicBatchQuery=$historicBatchQuery, historicBatchIds=$historicBatchIds]';

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
    if (this.historicBatchQuery != null) {
      json[r'historicBatchQuery'] = this.historicBatchQuery;
    } else {
      json[r'historicBatchQuery'] = null;
    }
    if (this.historicBatchIds != null) {
      json[r'historicBatchIds'] = this.historicBatchIds;
    } else {
      json[r'historicBatchIds'] = null;
    }
    return json;
  }

  /// Returns a new [SetRemovalTimeToHistoricBatchesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SetRemovalTimeToHistoricBatchesDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SetRemovalTimeToHistoricBatchesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SetRemovalTimeToHistoricBatchesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SetRemovalTimeToHistoricBatchesDto(
        absoluteRemovalTime: mapDateTime(json, r'absoluteRemovalTime', r''),
        clearedRemovalTime: mapValueOfType<bool>(json, r'clearedRemovalTime'),
        calculatedRemovalTime: mapValueOfType<bool>(json, r'calculatedRemovalTime'),
        historicBatchQuery: mapValueOfType<Object>(json, r'historicBatchQuery'),
        historicBatchIds: json[r'historicBatchIds'] is Iterable
            ? (json[r'historicBatchIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<SetRemovalTimeToHistoricBatchesDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SetRemovalTimeToHistoricBatchesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetRemovalTimeToHistoricBatchesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SetRemovalTimeToHistoricBatchesDto> mapFromJson(dynamic json) {
    final map = <String, SetRemovalTimeToHistoricBatchesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetRemovalTimeToHistoricBatchesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SetRemovalTimeToHistoricBatchesDto-objects as value to a dart map
  static Map<String, List<SetRemovalTimeToHistoricBatchesDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SetRemovalTimeToHistoricBatchesDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SetRemovalTimeToHistoricBatchesDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

