//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SetRemovalTimeToHistoricDecisionInstancesDto {
  /// Returns a new [SetRemovalTimeToHistoricDecisionInstancesDto] instance.
  SetRemovalTimeToHistoricDecisionInstancesDto({
    this.absoluteRemovalTime,
    this.clearedRemovalTime,
    this.calculatedRemovalTime,
    this.hierarchical,
    this.historicDecisionInstanceQuery,
    this.historicDecisionInstanceIds = const [],
  });

  /// The date for which the instances shall be removed. Value may not be `null`.  **Note:** Cannot be set in conjunction with `clearedRemovalTime` or `calculatedRemovalTime`.
  DateTime? absoluteRemovalTime;

  /// Sets the removal time to `null`. Value may only be `true`, as `false` is the default behavior.  **Note:** Cannot be set in conjunction with `absoluteRemovalTime` or `calculatedRemovalTime`.
  bool? clearedRemovalTime;

  /// The removal time is calculated based on the engine's configuration settings. Value may only be `true`, as `false` is the default behavior.  **Note:** Cannot be set in conjunction with `absoluteRemovalTime` or `clearedRemovalTime`.
  bool? calculatedRemovalTime;

  /// Sets the removal time to all historic decision instances in the hierarchy. Value may only be `true`, as `false` is the default behavior.
  bool? hierarchical;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HistoricDecisionInstanceQueryDto? historicDecisionInstanceQuery;

  /// The ids of the historic decision instances to set the removal time for.
  List<String>? historicDecisionInstanceIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetRemovalTimeToHistoricDecisionInstancesDto &&
    other.absoluteRemovalTime == absoluteRemovalTime &&
    other.clearedRemovalTime == clearedRemovalTime &&
    other.calculatedRemovalTime == calculatedRemovalTime &&
    other.hierarchical == hierarchical &&
    other.historicDecisionInstanceQuery == historicDecisionInstanceQuery &&
    _deepEquality.equals(other.historicDecisionInstanceIds, historicDecisionInstanceIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (absoluteRemovalTime == null ? 0 : absoluteRemovalTime!.hashCode) +
    (clearedRemovalTime == null ? 0 : clearedRemovalTime!.hashCode) +
    (calculatedRemovalTime == null ? 0 : calculatedRemovalTime!.hashCode) +
    (hierarchical == null ? 0 : hierarchical!.hashCode) +
    (historicDecisionInstanceQuery == null ? 0 : historicDecisionInstanceQuery!.hashCode) +
    (historicDecisionInstanceIds == null ? 0 : historicDecisionInstanceIds!.hashCode);

  @override
  String toString() => 'SetRemovalTimeToHistoricDecisionInstancesDto[absoluteRemovalTime=$absoluteRemovalTime, clearedRemovalTime=$clearedRemovalTime, calculatedRemovalTime=$calculatedRemovalTime, hierarchical=$hierarchical, historicDecisionInstanceQuery=$historicDecisionInstanceQuery, historicDecisionInstanceIds=$historicDecisionInstanceIds]';

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
    if (this.hierarchical != null) {
      json[r'hierarchical'] = this.hierarchical;
    } else {
      json[r'hierarchical'] = null;
    }
    if (this.historicDecisionInstanceQuery != null) {
      json[r'historicDecisionInstanceQuery'] = this.historicDecisionInstanceQuery;
    } else {
      json[r'historicDecisionInstanceQuery'] = null;
    }
    if (this.historicDecisionInstanceIds != null) {
      json[r'historicDecisionInstanceIds'] = this.historicDecisionInstanceIds;
    } else {
      json[r'historicDecisionInstanceIds'] = null;
    }
    return json;
  }

  /// Returns a new [SetRemovalTimeToHistoricDecisionInstancesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SetRemovalTimeToHistoricDecisionInstancesDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SetRemovalTimeToHistoricDecisionInstancesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SetRemovalTimeToHistoricDecisionInstancesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SetRemovalTimeToHistoricDecisionInstancesDto(
        absoluteRemovalTime: mapDateTime(json, r'absoluteRemovalTime', r''),
        clearedRemovalTime: mapValueOfType<bool>(json, r'clearedRemovalTime'),
        calculatedRemovalTime: mapValueOfType<bool>(json, r'calculatedRemovalTime'),
        hierarchical: mapValueOfType<bool>(json, r'hierarchical'),
        historicDecisionInstanceQuery: HistoricDecisionInstanceQueryDto.fromJson(json[r'historicDecisionInstanceQuery']),
        historicDecisionInstanceIds: json[r'historicDecisionInstanceIds'] is Iterable
            ? (json[r'historicDecisionInstanceIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<SetRemovalTimeToHistoricDecisionInstancesDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SetRemovalTimeToHistoricDecisionInstancesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetRemovalTimeToHistoricDecisionInstancesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SetRemovalTimeToHistoricDecisionInstancesDto> mapFromJson(dynamic json) {
    final map = <String, SetRemovalTimeToHistoricDecisionInstancesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetRemovalTimeToHistoricDecisionInstancesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SetRemovalTimeToHistoricDecisionInstancesDto-objects as value to a dart map
  static Map<String, List<SetRemovalTimeToHistoricDecisionInstancesDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SetRemovalTimeToHistoricDecisionInstancesDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SetRemovalTimeToHistoricDecisionInstancesDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

