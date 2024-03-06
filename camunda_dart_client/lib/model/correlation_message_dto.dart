//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CorrelationMessageDto {
  /// Returns a new [CorrelationMessageDto] instance.
  CorrelationMessageDto({
    this.messageName,
    this.businessKey,
    this.tenantId,
    this.withoutTenantId = false,
    this.processInstanceId,
    this.correlationKeys = const {},
    this.localCorrelationKeys = const {},
    this.processVariables = const {},
    this.processVariablesLocal = const {},
    this.processVariablesToTriggeredScope = const {},
    this.all = false,
    this.resultEnabled = false,
    this.variablesInResultEnabled = false,
  });

  /// The name of the message to deliver.
  String? messageName;

  /// Used for correlation of process instances that wait for incoming messages. Will only correlate to executions that belong to a process instance with the provided business key.
  String? businessKey;

  /// Used to correlate the message for a tenant with the given id. Will only correlate to executions and process definitions which belong to the tenant. Must not be supplied in conjunction with a `withoutTenantId`.
  String? tenantId;

  /// A Boolean value that indicates whether the message should only be correlated to executions and process definitions which belong to no tenant or not. Value may only be `true`, as `false` is the default behavior. Must not be supplied in conjunction with a `tenantId`.
  bool? withoutTenantId;

  /// Used to correlate the message to the process instance with the given id.
  String? processInstanceId;

  /// Used for correlation of process instances that wait for incoming messages. Has to be a JSON object containing key-value pairs that are matched against process instance variables during correlation. Each key is a variable name and each value a JSON variable value object with the following properties.
  Map<String, VariableValueDto>? correlationKeys;

  /// Local variables used for correlation of executions (process instances) that wait for incoming messages. Has to be a JSON object containing key-value pairs that are matched against local variables during correlation. Each key is a variable name and each value a JSON variable value object with the following properties.
  Map<String, VariableValueDto>? localCorrelationKeys;

  /// A map of variables that is injected into the triggered execution or process instance after the message has been delivered. Each key is a variable name and each value a JSON variable value object with the following properties.
  Map<String, VariableValueDto>? processVariables;

  /// A map of local variables that is injected into the execution waiting on the message. Each key is a variable name and each value a JSON variable value object with the following properties.
  Map<String, VariableValueDto>? processVariablesLocal;

  /// A map of variables that is injected into the new scope triggered by message correlation. Each key is a variable name and each value a JSON variable value object with the following properties.
  Map<String, VariableValueDto>? processVariablesToTriggeredScope;

  /// A Boolean value that indicates whether the message should be correlated to exactly one entity or multiple entities. If the value is set to `false`, the message will be correlated to exactly one entity (execution or process definition). If the value is set to `true`, the message will be correlated to multiple executions and a process definition that can be instantiated by this message in one go.
  bool? all;

  /// A Boolean value that indicates whether the result of the correlation should be returned or not. If this property is set to `true`, there will be returned a list of message correlation result objects. Depending on the all property, there will be either one ore more returned results in the list.  The default value is `false`, which means no result will be returned.
  bool? resultEnabled;

  /// A Boolean value that indicates whether the result of the correlation should contain process variables or not. The parameter resultEnabled should be set to `true` in order to use this it.  The default value is `false`, which means the variables will not be returned.
  bool? variablesInResultEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CorrelationMessageDto &&
    other.messageName == messageName &&
    other.businessKey == businessKey &&
    other.tenantId == tenantId &&
    other.withoutTenantId == withoutTenantId &&
    other.processInstanceId == processInstanceId &&
    _deepEquality.equals(other.correlationKeys, correlationKeys) &&
    _deepEquality.equals(other.localCorrelationKeys, localCorrelationKeys) &&
    _deepEquality.equals(other.processVariables, processVariables) &&
    _deepEquality.equals(other.processVariablesLocal, processVariablesLocal) &&
    _deepEquality.equals(other.processVariablesToTriggeredScope, processVariablesToTriggeredScope) &&
    other.all == all &&
    other.resultEnabled == resultEnabled &&
    other.variablesInResultEnabled == variablesInResultEnabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (messageName == null ? 0 : messageName!.hashCode) +
    (businessKey == null ? 0 : businessKey!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (withoutTenantId == null ? 0 : withoutTenantId!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (correlationKeys == null ? 0 : correlationKeys!.hashCode) +
    (localCorrelationKeys == null ? 0 : localCorrelationKeys!.hashCode) +
    (processVariables == null ? 0 : processVariables!.hashCode) +
    (processVariablesLocal == null ? 0 : processVariablesLocal!.hashCode) +
    (processVariablesToTriggeredScope == null ? 0 : processVariablesToTriggeredScope!.hashCode) +
    (all == null ? 0 : all!.hashCode) +
    (resultEnabled == null ? 0 : resultEnabled!.hashCode) +
    (variablesInResultEnabled == null ? 0 : variablesInResultEnabled!.hashCode);

  @override
  String toString() => 'CorrelationMessageDto[messageName=$messageName, businessKey=$businessKey, tenantId=$tenantId, withoutTenantId=$withoutTenantId, processInstanceId=$processInstanceId, correlationKeys=$correlationKeys, localCorrelationKeys=$localCorrelationKeys, processVariables=$processVariables, processVariablesLocal=$processVariablesLocal, processVariablesToTriggeredScope=$processVariablesToTriggeredScope, all=$all, resultEnabled=$resultEnabled, variablesInResultEnabled=$variablesInResultEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.messageName != null) {
      json[r'messageName'] = this.messageName;
    } else {
      json[r'messageName'] = null;
    }
    if (this.businessKey != null) {
      json[r'businessKey'] = this.businessKey;
    } else {
      json[r'businessKey'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    if (this.withoutTenantId != null) {
      json[r'withoutTenantId'] = this.withoutTenantId;
    } else {
      json[r'withoutTenantId'] = null;
    }
    if (this.processInstanceId != null) {
      json[r'processInstanceId'] = this.processInstanceId;
    } else {
      json[r'processInstanceId'] = null;
    }
    if (this.correlationKeys != null) {
      json[r'correlationKeys'] = this.correlationKeys;
    } else {
      json[r'correlationKeys'] = null;
    }
    if (this.localCorrelationKeys != null) {
      json[r'localCorrelationKeys'] = this.localCorrelationKeys;
    } else {
      json[r'localCorrelationKeys'] = null;
    }
    if (this.processVariables != null) {
      json[r'processVariables'] = this.processVariables;
    } else {
      json[r'processVariables'] = null;
    }
    if (this.processVariablesLocal != null) {
      json[r'processVariablesLocal'] = this.processVariablesLocal;
    } else {
      json[r'processVariablesLocal'] = null;
    }
    if (this.processVariablesToTriggeredScope != null) {
      json[r'processVariablesToTriggeredScope'] = this.processVariablesToTriggeredScope;
    } else {
      json[r'processVariablesToTriggeredScope'] = null;
    }
    if (this.all != null) {
      json[r'all'] = this.all;
    } else {
      json[r'all'] = null;
    }
    if (this.resultEnabled != null) {
      json[r'resultEnabled'] = this.resultEnabled;
    } else {
      json[r'resultEnabled'] = null;
    }
    if (this.variablesInResultEnabled != null) {
      json[r'variablesInResultEnabled'] = this.variablesInResultEnabled;
    } else {
      json[r'variablesInResultEnabled'] = null;
    }
    return json;
  }

  /// Returns a new [CorrelationMessageDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CorrelationMessageDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CorrelationMessageDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CorrelationMessageDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CorrelationMessageDto(
        messageName: mapValueOfType<String>(json, r'messageName'),
        businessKey: mapValueOfType<String>(json, r'businessKey'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        withoutTenantId: mapValueOfType<bool>(json, r'withoutTenantId') ?? false,
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        correlationKeys: VariableValueDto.mapFromJson(json[r'correlationKeys']),
        localCorrelationKeys: VariableValueDto.mapFromJson(json[r'localCorrelationKeys']),
        processVariables: VariableValueDto.mapFromJson(json[r'processVariables']),
        processVariablesLocal: VariableValueDto.mapFromJson(json[r'processVariablesLocal']),
        processVariablesToTriggeredScope: VariableValueDto.mapFromJson(json[r'processVariablesToTriggeredScope']),
        all: mapValueOfType<bool>(json, r'all') ?? false,
        resultEnabled: mapValueOfType<bool>(json, r'resultEnabled') ?? false,
        variablesInResultEnabled: mapValueOfType<bool>(json, r'variablesInResultEnabled') ?? false,
      );
    }
    return null;
  }

  static List<CorrelationMessageDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CorrelationMessageDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CorrelationMessageDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CorrelationMessageDto> mapFromJson(dynamic json) {
    final map = <String, CorrelationMessageDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CorrelationMessageDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CorrelationMessageDto-objects as value to a dart map
  static Map<String, List<CorrelationMessageDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CorrelationMessageDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CorrelationMessageDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

