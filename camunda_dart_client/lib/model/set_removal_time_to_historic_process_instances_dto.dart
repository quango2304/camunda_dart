//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SetRemovalTimeToHistoricProcessInstancesDto {
  /// Returns a new [SetRemovalTimeToHistoricProcessInstancesDto] instance.
  SetRemovalTimeToHistoricProcessInstancesDto({
    this.absoluteRemovalTime,
    this.clearedRemovalTime,
    this.calculatedRemovalTime,
    this.historicProcessInstanceIds = const [],
    this.historicProcessInstanceQuery,
    this.hierarchical,
    this.updateInChunks,
    this.updateChunkSize,
  });

  /// The date for which the instances shall be removed. Value may not be `null`.  **Note:** Cannot be set in conjunction with `clearedRemovalTime` or `calculatedRemovalTime`.
  DateTime? absoluteRemovalTime;

  /// Sets the removal time to `null`. Value may only be `true`, as `false` is the default behavior.  **Note:** Cannot be set in conjunction with `absoluteRemovalTime` or `calculatedRemovalTime`.
  bool? clearedRemovalTime;

  /// The removal time is calculated based on the engine's configuration settings. Value may only be `true`, as `false` is the default behavior.  **Note:** Cannot be set in conjunction with `absoluteRemovalTime` or `clearedRemovalTime`.
  bool? calculatedRemovalTime;

  /// The id of the process instance.
  List<String>? historicProcessInstanceIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HistoricProcessInstanceQueryDto? historicProcessInstanceQuery;

  /// Sets the removal time to all historic process instances in the hierarchy. Value may only be `true`, as `false` is the default behavior.
  bool? hierarchical;

  /// Handles removal time updates in chunks, taking into account the defined size in `removalTimeUpdateChunkSize` in the process engine configuration. The size of the  chunks can also be overridden per call with the `updateChunkSize` parameter. Enabling this option can lead to multiple executions of the resulting jobs, preventing the database transaction from timing out by limiting the number of rows to update. Value may only be `true`, as `false` is the default behavior.
  bool? updateInChunks;

  /// Defines the size of the chunks in which removal time updates are processed. The value must be a positive integer between `1` and `500`. This only has an  effect if `updateInChunks` is set to `true`. If undefined, the operation uses the  `removalTimeUpdateChunkSize` defined in the process engine configuration.
  int? updateChunkSize;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetRemovalTimeToHistoricProcessInstancesDto &&
    other.absoluteRemovalTime == absoluteRemovalTime &&
    other.clearedRemovalTime == clearedRemovalTime &&
    other.calculatedRemovalTime == calculatedRemovalTime &&
    _deepEquality.equals(other.historicProcessInstanceIds, historicProcessInstanceIds) &&
    other.historicProcessInstanceQuery == historicProcessInstanceQuery &&
    other.hierarchical == hierarchical &&
    other.updateInChunks == updateInChunks &&
    other.updateChunkSize == updateChunkSize;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (absoluteRemovalTime == null ? 0 : absoluteRemovalTime!.hashCode) +
    (clearedRemovalTime == null ? 0 : clearedRemovalTime!.hashCode) +
    (calculatedRemovalTime == null ? 0 : calculatedRemovalTime!.hashCode) +
    (historicProcessInstanceIds == null ? 0 : historicProcessInstanceIds!.hashCode) +
    (historicProcessInstanceQuery == null ? 0 : historicProcessInstanceQuery!.hashCode) +
    (hierarchical == null ? 0 : hierarchical!.hashCode) +
    (updateInChunks == null ? 0 : updateInChunks!.hashCode) +
    (updateChunkSize == null ? 0 : updateChunkSize!.hashCode);

  @override
  String toString() => 'SetRemovalTimeToHistoricProcessInstancesDto[absoluteRemovalTime=$absoluteRemovalTime, clearedRemovalTime=$clearedRemovalTime, calculatedRemovalTime=$calculatedRemovalTime, historicProcessInstanceIds=$historicProcessInstanceIds, historicProcessInstanceQuery=$historicProcessInstanceQuery, hierarchical=$hierarchical, updateInChunks=$updateInChunks, updateChunkSize=$updateChunkSize]';

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
    if (this.historicProcessInstanceIds != null) {
      json[r'historicProcessInstanceIds'] = this.historicProcessInstanceIds;
    } else {
      json[r'historicProcessInstanceIds'] = null;
    }
    if (this.historicProcessInstanceQuery != null) {
      json[r'historicProcessInstanceQuery'] = this.historicProcessInstanceQuery;
    } else {
      json[r'historicProcessInstanceQuery'] = null;
    }
    if (this.hierarchical != null) {
      json[r'hierarchical'] = this.hierarchical;
    } else {
      json[r'hierarchical'] = null;
    }
    if (this.updateInChunks != null) {
      json[r'updateInChunks'] = this.updateInChunks;
    } else {
      json[r'updateInChunks'] = null;
    }
    if (this.updateChunkSize != null) {
      json[r'updateChunkSize'] = this.updateChunkSize;
    } else {
      json[r'updateChunkSize'] = null;
    }
    return json;
  }

  /// Returns a new [SetRemovalTimeToHistoricProcessInstancesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SetRemovalTimeToHistoricProcessInstancesDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SetRemovalTimeToHistoricProcessInstancesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SetRemovalTimeToHistoricProcessInstancesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SetRemovalTimeToHistoricProcessInstancesDto(
        absoluteRemovalTime: mapDateTime(json, r'absoluteRemovalTime', r''),
        clearedRemovalTime: mapValueOfType<bool>(json, r'clearedRemovalTime'),
        calculatedRemovalTime: mapValueOfType<bool>(json, r'calculatedRemovalTime'),
        historicProcessInstanceIds: json[r'historicProcessInstanceIds'] is Iterable
            ? (json[r'historicProcessInstanceIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        historicProcessInstanceQuery: HistoricProcessInstanceQueryDto.fromJson(json[r'historicProcessInstanceQuery']),
        hierarchical: mapValueOfType<bool>(json, r'hierarchical'),
        updateInChunks: mapValueOfType<bool>(json, r'updateInChunks'),
        updateChunkSize: mapValueOfType<int>(json, r'updateChunkSize'),
      );
    }
    return null;
  }

  static List<SetRemovalTimeToHistoricProcessInstancesDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SetRemovalTimeToHistoricProcessInstancesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetRemovalTimeToHistoricProcessInstancesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SetRemovalTimeToHistoricProcessInstancesDto> mapFromJson(dynamic json) {
    final map = <String, SetRemovalTimeToHistoricProcessInstancesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetRemovalTimeToHistoricProcessInstancesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SetRemovalTimeToHistoricProcessInstancesDto-objects as value to a dart map
  static Map<String, List<SetRemovalTimeToHistoricProcessInstancesDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SetRemovalTimeToHistoricProcessInstancesDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SetRemovalTimeToHistoricProcessInstancesDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

