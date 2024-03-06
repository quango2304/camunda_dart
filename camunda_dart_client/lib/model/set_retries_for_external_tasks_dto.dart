//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SetRetriesForExternalTasksDto {
  /// Returns a new [SetRetriesForExternalTasksDto] instance.
  SetRetriesForExternalTasksDto({
    this.retries,
    this.externalTaskIds = const [],
    this.processInstanceIds = const [],
    this.externalTaskQuery,
    this.processInstanceQuery,
    this.historicProcessInstanceQuery,
  });

  /// The number of retries to set for the external task.  Must be >= 0. If this is 0, an incident is created and the task cannot be fetched anymore unless the retries are increased again. Can not be null.
  int? retries;

  /// The ids of the external tasks to set the number of retries for.
  List<String>? externalTaskIds;

  /// The ids of process instances containing the tasks to set the number of retries for.
  List<String>? processInstanceIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ExternalTaskQueryDto? externalTaskQuery;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProcessInstanceQueryDto? processInstanceQuery;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HistoricProcessInstanceQueryDto? historicProcessInstanceQuery;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetRetriesForExternalTasksDto &&
    other.retries == retries &&
    _deepEquality.equals(other.externalTaskIds, externalTaskIds) &&
    _deepEquality.equals(other.processInstanceIds, processInstanceIds) &&
    other.externalTaskQuery == externalTaskQuery &&
    other.processInstanceQuery == processInstanceQuery &&
    other.historicProcessInstanceQuery == historicProcessInstanceQuery;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (retries == null ? 0 : retries!.hashCode) +
    (externalTaskIds == null ? 0 : externalTaskIds!.hashCode) +
    (processInstanceIds == null ? 0 : processInstanceIds!.hashCode) +
    (externalTaskQuery == null ? 0 : externalTaskQuery!.hashCode) +
    (processInstanceQuery == null ? 0 : processInstanceQuery!.hashCode) +
    (historicProcessInstanceQuery == null ? 0 : historicProcessInstanceQuery!.hashCode);

  @override
  String toString() => 'SetRetriesForExternalTasksDto[retries=$retries, externalTaskIds=$externalTaskIds, processInstanceIds=$processInstanceIds, externalTaskQuery=$externalTaskQuery, processInstanceQuery=$processInstanceQuery, historicProcessInstanceQuery=$historicProcessInstanceQuery]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.retries != null) {
      json[r'retries'] = this.retries;
    } else {
      json[r'retries'] = null;
    }
    if (this.externalTaskIds != null) {
      json[r'externalTaskIds'] = this.externalTaskIds;
    } else {
      json[r'externalTaskIds'] = null;
    }
    if (this.processInstanceIds != null) {
      json[r'processInstanceIds'] = this.processInstanceIds;
    } else {
      json[r'processInstanceIds'] = null;
    }
    if (this.externalTaskQuery != null) {
      json[r'externalTaskQuery'] = this.externalTaskQuery;
    } else {
      json[r'externalTaskQuery'] = null;
    }
    if (this.processInstanceQuery != null) {
      json[r'processInstanceQuery'] = this.processInstanceQuery;
    } else {
      json[r'processInstanceQuery'] = null;
    }
    if (this.historicProcessInstanceQuery != null) {
      json[r'historicProcessInstanceQuery'] = this.historicProcessInstanceQuery;
    } else {
      json[r'historicProcessInstanceQuery'] = null;
    }
    return json;
  }

  /// Returns a new [SetRetriesForExternalTasksDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SetRetriesForExternalTasksDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SetRetriesForExternalTasksDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SetRetriesForExternalTasksDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SetRetriesForExternalTasksDto(
        retries: mapValueOfType<int>(json, r'retries'),
        externalTaskIds: json[r'externalTaskIds'] is Iterable
            ? (json[r'externalTaskIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processInstanceIds: json[r'processInstanceIds'] is Iterable
            ? (json[r'processInstanceIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        externalTaskQuery: ExternalTaskQueryDto.fromJson(json[r'externalTaskQuery']),
        processInstanceQuery: ProcessInstanceQueryDto.fromJson(json[r'processInstanceQuery']),
        historicProcessInstanceQuery: HistoricProcessInstanceQueryDto.fromJson(json[r'historicProcessInstanceQuery']),
      );
    }
    return null;
  }

  static List<SetRetriesForExternalTasksDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SetRetriesForExternalTasksDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetRetriesForExternalTasksDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SetRetriesForExternalTasksDto> mapFromJson(dynamic json) {
    final map = <String, SetRetriesForExternalTasksDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetRetriesForExternalTasksDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SetRetriesForExternalTasksDto-objects as value to a dart map
  static Map<String, List<SetRetriesForExternalTasksDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SetRetriesForExternalTasksDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SetRetriesForExternalTasksDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

