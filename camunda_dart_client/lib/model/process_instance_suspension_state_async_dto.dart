//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProcessInstanceSuspensionStateAsyncDto {
  /// Returns a new [ProcessInstanceSuspensionStateAsyncDto] instance.
  ProcessInstanceSuspensionStateAsyncDto({
    this.suspended,
    this.processInstanceIds = const [],
    this.processInstanceQuery,
    this.historicProcessInstanceQuery,
  });

  /// A Boolean value which indicates whether to activate or suspend a given instance  (e.g. process instance, job, job definition, or batch). When the value is set to true,  the given instance will be suspended and when the value is set to false,  the given instance will be activated.
  bool? suspended;

  /// A list of process instance ids which defines a group of process instances which will be activated or suspended by the operation.
  List<String>? processInstanceIds;

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
  bool operator ==(Object other) => identical(this, other) || other is ProcessInstanceSuspensionStateAsyncDto &&
    other.suspended == suspended &&
    _deepEquality.equals(other.processInstanceIds, processInstanceIds) &&
    other.processInstanceQuery == processInstanceQuery &&
    other.historicProcessInstanceQuery == historicProcessInstanceQuery;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (suspended == null ? 0 : suspended!.hashCode) +
    (processInstanceIds == null ? 0 : processInstanceIds!.hashCode) +
    (processInstanceQuery == null ? 0 : processInstanceQuery!.hashCode) +
    (historicProcessInstanceQuery == null ? 0 : historicProcessInstanceQuery!.hashCode);

  @override
  String toString() => 'ProcessInstanceSuspensionStateAsyncDto[suspended=$suspended, processInstanceIds=$processInstanceIds, processInstanceQuery=$processInstanceQuery, historicProcessInstanceQuery=$historicProcessInstanceQuery]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.suspended != null) {
      json[r'suspended'] = this.suspended;
    } else {
      json[r'suspended'] = null;
    }
    if (this.processInstanceIds != null) {
      json[r'processInstanceIds'] = this.processInstanceIds;
    } else {
      json[r'processInstanceIds'] = null;
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

  /// Returns a new [ProcessInstanceSuspensionStateAsyncDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProcessInstanceSuspensionStateAsyncDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProcessInstanceSuspensionStateAsyncDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProcessInstanceSuspensionStateAsyncDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProcessInstanceSuspensionStateAsyncDto(
        suspended: mapValueOfType<bool>(json, r'suspended'),
        processInstanceIds: json[r'processInstanceIds'] is Iterable
            ? (json[r'processInstanceIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processInstanceQuery: ProcessInstanceQueryDto.fromJson(json[r'processInstanceQuery']),
        historicProcessInstanceQuery: HistoricProcessInstanceQueryDto.fromJson(json[r'historicProcessInstanceQuery']),
      );
    }
    return null;
  }

  static List<ProcessInstanceSuspensionStateAsyncDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProcessInstanceSuspensionStateAsyncDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProcessInstanceSuspensionStateAsyncDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProcessInstanceSuspensionStateAsyncDto> mapFromJson(dynamic json) {
    final map = <String, ProcessInstanceSuspensionStateAsyncDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProcessInstanceSuspensionStateAsyncDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProcessInstanceSuspensionStateAsyncDto-objects as value to a dart map
  static Map<String, List<ProcessInstanceSuspensionStateAsyncDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProcessInstanceSuspensionStateAsyncDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProcessInstanceSuspensionStateAsyncDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

