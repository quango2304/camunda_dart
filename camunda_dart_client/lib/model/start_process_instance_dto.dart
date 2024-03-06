//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StartProcessInstanceDto {
  /// Returns a new [StartProcessInstanceDto] instance.
  StartProcessInstanceDto({
    this.businessKey,
    this.variables = const {},
    this.caseInstanceId,
    this.startInstructions = const [],
    this.skipCustomListeners,
    this.skipIoMappings,
    this.withVariablesInReturn,
  });

  /// The business key of the process instance.
  String? businessKey;

  /// 
  Map<String, VariableValueDto>? variables;

  /// The case instance id the process instance is to be initialized with.
  String? caseInstanceId;

  /// **Optional**. A JSON array of instructions that specify which activities to start the process instance at. If this property is omitted, the process instance starts at its default blank start event.
  List<ProcessInstanceModificationInstructionDto>? startInstructions;

  /// Skip execution listener invocation for activities that are started or ended as part of this request. **Note**: This option is currently only respected when start instructions are submitted via the `startInstructions` property.
  bool? skipCustomListeners;

  /// Skip execution of [input/output variable mappings](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#input-output-variable-mapping) for activities that are started or ended as part of this request. **Note**: This option is currently only respected when start instructions are submitted via the `startInstructions` property.
  bool? skipIoMappings;

  /// Indicates if the variables, which was used by the process instance during execution, should be returned. Default value: `false`
  bool? withVariablesInReturn;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StartProcessInstanceDto &&
    other.businessKey == businessKey &&
    _deepEquality.equals(other.variables, variables) &&
    other.caseInstanceId == caseInstanceId &&
    _deepEquality.equals(other.startInstructions, startInstructions) &&
    other.skipCustomListeners == skipCustomListeners &&
    other.skipIoMappings == skipIoMappings &&
    other.withVariablesInReturn == withVariablesInReturn;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (businessKey == null ? 0 : businessKey!.hashCode) +
    (variables == null ? 0 : variables!.hashCode) +
    (caseInstanceId == null ? 0 : caseInstanceId!.hashCode) +
    (startInstructions == null ? 0 : startInstructions!.hashCode) +
    (skipCustomListeners == null ? 0 : skipCustomListeners!.hashCode) +
    (skipIoMappings == null ? 0 : skipIoMappings!.hashCode) +
    (withVariablesInReturn == null ? 0 : withVariablesInReturn!.hashCode);

  @override
  String toString() => 'StartProcessInstanceDto[businessKey=$businessKey, variables=$variables, caseInstanceId=$caseInstanceId, startInstructions=$startInstructions, skipCustomListeners=$skipCustomListeners, skipIoMappings=$skipIoMappings, withVariablesInReturn=$withVariablesInReturn]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.businessKey != null) {
      json[r'businessKey'] = this.businessKey;
    } else {
      json[r'businessKey'] = null;
    }
    if (this.variables != null) {
      json[r'variables'] = this.variables;
    } else {
      json[r'variables'] = null;
    }
    if (this.caseInstanceId != null) {
      json[r'caseInstanceId'] = this.caseInstanceId;
    } else {
      json[r'caseInstanceId'] = null;
    }
    if (this.startInstructions != null) {
      json[r'startInstructions'] = this.startInstructions;
    } else {
      json[r'startInstructions'] = null;
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
    if (this.withVariablesInReturn != null) {
      json[r'withVariablesInReturn'] = this.withVariablesInReturn;
    } else {
      json[r'withVariablesInReturn'] = null;
    }
    return json;
  }

  /// Returns a new [StartProcessInstanceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StartProcessInstanceDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StartProcessInstanceDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StartProcessInstanceDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StartProcessInstanceDto(
        businessKey: mapValueOfType<String>(json, r'businessKey'),
        variables: VariableValueDto.mapFromJson(json[r'variables']),
        caseInstanceId: mapValueOfType<String>(json, r'caseInstanceId'),
        startInstructions: ProcessInstanceModificationInstructionDto.listFromJson(json[r'startInstructions']),
        skipCustomListeners: mapValueOfType<bool>(json, r'skipCustomListeners'),
        skipIoMappings: mapValueOfType<bool>(json, r'skipIoMappings'),
        withVariablesInReturn: mapValueOfType<bool>(json, r'withVariablesInReturn'),
      );
    }
    return null;
  }

  static List<StartProcessInstanceDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StartProcessInstanceDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StartProcessInstanceDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StartProcessInstanceDto> mapFromJson(dynamic json) {
    final map = <String, StartProcessInstanceDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StartProcessInstanceDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StartProcessInstanceDto-objects as value to a dart map
  static Map<String, List<StartProcessInstanceDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StartProcessInstanceDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StartProcessInstanceDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

