//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProcessInstanceModificationDto {
  /// Returns a new [ProcessInstanceModificationDto] instance.
  ProcessInstanceModificationDto({
    this.skipCustomListeners,
    this.skipIoMappings,
    this.instructions = const [],
    this.annotation,
  });

  /// Skip execution listener invocation for activities that are started or ended as part of this request.
  bool? skipCustomListeners;

  /// Skip execution of [input/output variable mappings](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#input-output-variable-mapping) for activities that are started or ended as part of this request.
  bool? skipIoMappings;

  /// JSON array of modification instructions. The instructions are executed in the order they are in.
  List<ProcessInstanceModificationInstructionDto>? instructions;

  /// An arbitrary text annotation set by a user for auditing reasons.
  String? annotation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProcessInstanceModificationDto &&
    other.skipCustomListeners == skipCustomListeners &&
    other.skipIoMappings == skipIoMappings &&
    _deepEquality.equals(other.instructions, instructions) &&
    other.annotation == annotation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (skipCustomListeners == null ? 0 : skipCustomListeners!.hashCode) +
    (skipIoMappings == null ? 0 : skipIoMappings!.hashCode) +
    (instructions == null ? 0 : instructions!.hashCode) +
    (annotation == null ? 0 : annotation!.hashCode);

  @override
  String toString() => 'ProcessInstanceModificationDto[skipCustomListeners=$skipCustomListeners, skipIoMappings=$skipIoMappings, instructions=$instructions, annotation=$annotation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.instructions != null) {
      json[r'instructions'] = this.instructions;
    } else {
      json[r'instructions'] = null;
    }
    if (this.annotation != null) {
      json[r'annotation'] = this.annotation;
    } else {
      json[r'annotation'] = null;
    }
    return json;
  }

  /// Returns a new [ProcessInstanceModificationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProcessInstanceModificationDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProcessInstanceModificationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProcessInstanceModificationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProcessInstanceModificationDto(
        skipCustomListeners: mapValueOfType<bool>(json, r'skipCustomListeners'),
        skipIoMappings: mapValueOfType<bool>(json, r'skipIoMappings'),
        instructions: ProcessInstanceModificationInstructionDto.listFromJson(json[r'instructions']),
        annotation: mapValueOfType<String>(json, r'annotation'),
      );
    }
    return null;
  }

  static List<ProcessInstanceModificationDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProcessInstanceModificationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProcessInstanceModificationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProcessInstanceModificationDto> mapFromJson(dynamic json) {
    final map = <String, ProcessInstanceModificationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProcessInstanceModificationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProcessInstanceModificationDto-objects as value to a dart map
  static Map<String, List<ProcessInstanceModificationDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProcessInstanceModificationDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProcessInstanceModificationDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

