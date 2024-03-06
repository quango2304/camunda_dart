//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RestartProcessInstanceDto {
  /// Returns a new [RestartProcessInstanceDto] instance.
  RestartProcessInstanceDto({
    this.processInstanceIds = const [],
    this.historicProcessInstanceQuery,
    this.skipCustomListeners,
    this.skipIoMappings,
    this.initialVariables,
    this.withoutBusinessKey,
    this.instructions = const [],
  });

  /// A list of process instance ids to restart.
  List<String>? processInstanceIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HistoricProcessInstanceQueryDto? historicProcessInstanceQuery;

  /// Skip execution listener invocation for activities that are started as part of this request.
  bool? skipCustomListeners;

  /// Skip execution of [input/output variable mappings](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#input-output-variable-mapping) for activities that are started as part of this request.
  bool? skipIoMappings;

  /// Set the initial set of variables during restart. By default, the last set of variables is used.
  bool? initialVariables;

  /// Do not take over the business key of the historic process instance.
  bool? withoutBusinessKey;

  /// **Optional**. A JSON array of instructions that specify which activities to start the process instance at. If this property is omitted, the process instance starts at its default blank start event.
  List<RestartProcessInstanceModificationInstructionDto>? instructions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RestartProcessInstanceDto &&
    _deepEquality.equals(other.processInstanceIds, processInstanceIds) &&
    other.historicProcessInstanceQuery == historicProcessInstanceQuery &&
    other.skipCustomListeners == skipCustomListeners &&
    other.skipIoMappings == skipIoMappings &&
    other.initialVariables == initialVariables &&
    other.withoutBusinessKey == withoutBusinessKey &&
    _deepEquality.equals(other.instructions, instructions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (processInstanceIds == null ? 0 : processInstanceIds!.hashCode) +
    (historicProcessInstanceQuery == null ? 0 : historicProcessInstanceQuery!.hashCode) +
    (skipCustomListeners == null ? 0 : skipCustomListeners!.hashCode) +
    (skipIoMappings == null ? 0 : skipIoMappings!.hashCode) +
    (initialVariables == null ? 0 : initialVariables!.hashCode) +
    (withoutBusinessKey == null ? 0 : withoutBusinessKey!.hashCode) +
    (instructions == null ? 0 : instructions!.hashCode);

  @override
  String toString() => 'RestartProcessInstanceDto[processInstanceIds=$processInstanceIds, historicProcessInstanceQuery=$historicProcessInstanceQuery, skipCustomListeners=$skipCustomListeners, skipIoMappings=$skipIoMappings, initialVariables=$initialVariables, withoutBusinessKey=$withoutBusinessKey, instructions=$instructions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.processInstanceIds != null) {
      json[r'processInstanceIds'] = this.processInstanceIds;
    } else {
      json[r'processInstanceIds'] = null;
    }
    if (this.historicProcessInstanceQuery != null) {
      json[r'historicProcessInstanceQuery'] = this.historicProcessInstanceQuery;
    } else {
      json[r'historicProcessInstanceQuery'] = null;
    }
    if (this.skipCustomListeners != null) {
      json[r'skipCustomListeners'] = this.skipCustomListeners;
    } else {
      json[r'skipCustomListeners'] = null;
    }
    if (this.skipIoMappings != null) {
      json[r'skipIoMappings'] = this.skipIoMappings;
    } else {
      json[r'skipIoMappings'] = null;
    }
    if (this.initialVariables != null) {
      json[r'initialVariables'] = this.initialVariables;
    } else {
      json[r'initialVariables'] = null;
    }
    if (this.withoutBusinessKey != null) {
      json[r'withoutBusinessKey'] = this.withoutBusinessKey;
    } else {
      json[r'withoutBusinessKey'] = null;
    }
    if (this.instructions != null) {
      json[r'instructions'] = this.instructions;
    } else {
      json[r'instructions'] = null;
    }
    return json;
  }

  /// Returns a new [RestartProcessInstanceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RestartProcessInstanceDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RestartProcessInstanceDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RestartProcessInstanceDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RestartProcessInstanceDto(
        processInstanceIds: json[r'processInstanceIds'] is Iterable
            ? (json[r'processInstanceIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        historicProcessInstanceQuery: HistoricProcessInstanceQueryDto.fromJson(json[r'historicProcessInstanceQuery']),
        skipCustomListeners: mapValueOfType<bool>(json, r'skipCustomListeners'),
        skipIoMappings: mapValueOfType<bool>(json, r'skipIoMappings'),
        initialVariables: mapValueOfType<bool>(json, r'initialVariables'),
        withoutBusinessKey: mapValueOfType<bool>(json, r'withoutBusinessKey'),
        instructions: RestartProcessInstanceModificationInstructionDto.listFromJson(json[r'instructions']),
      );
    }
    return null;
  }

  static List<RestartProcessInstanceDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RestartProcessInstanceDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RestartProcessInstanceDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RestartProcessInstanceDto> mapFromJson(dynamic json) {
    final map = <String, RestartProcessInstanceDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RestartProcessInstanceDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RestartProcessInstanceDto-objects as value to a dart map
  static Map<String, List<RestartProcessInstanceDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RestartProcessInstanceDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RestartProcessInstanceDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

