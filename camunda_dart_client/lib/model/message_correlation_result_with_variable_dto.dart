//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MessageCorrelationResultWithVariableDto {
  /// Returns a new [MessageCorrelationResultWithVariableDto] instance.
  MessageCorrelationResultWithVariableDto({
    this.resultType,
    this.processInstance,
    this.execution,
    this.variables = const {},
  });

  /// Indicates if the message was correlated to a message start event or an  intermediate message catching event. In the first case, the resultType is  `ProcessDefinition` and otherwise `Execution`.
  MessageCorrelationResultWithVariableDtoResultTypeEnum? resultType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProcessInstanceDto? processInstance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ExecutionDto? execution;

  /// This property is returned if the `variablesInResultEnabled` is set to `true`. Contains a list of the process variables. 
  Map<String, VariableValueDto>? variables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageCorrelationResultWithVariableDto &&
    other.resultType == resultType &&
    other.processInstance == processInstance &&
    other.execution == execution &&
    _deepEquality.equals(other.variables, variables);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (resultType == null ? 0 : resultType!.hashCode) +
    (processInstance == null ? 0 : processInstance!.hashCode) +
    (execution == null ? 0 : execution!.hashCode) +
    (variables == null ? 0 : variables!.hashCode);

  @override
  String toString() => 'MessageCorrelationResultWithVariableDto[resultType=$resultType, processInstance=$processInstance, execution=$execution, variables=$variables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.resultType != null) {
      json[r'resultType'] = this.resultType;
    } else {
      json[r'resultType'] = null;
    }
    if (this.processInstance != null) {
      json[r'processInstance'] = this.processInstance;
    } else {
      json[r'processInstance'] = null;
    }
    if (this.execution != null) {
      json[r'execution'] = this.execution;
    } else {
      json[r'execution'] = null;
    }
    if (this.variables != null) {
      json[r'variables'] = this.variables;
    } else {
      json[r'variables'] = null;
    }
    return json;
  }

  /// Returns a new [MessageCorrelationResultWithVariableDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MessageCorrelationResultWithVariableDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MessageCorrelationResultWithVariableDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MessageCorrelationResultWithVariableDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MessageCorrelationResultWithVariableDto(
        resultType: MessageCorrelationResultWithVariableDtoResultTypeEnum.fromJson(json[r'resultType']),
        processInstance: ProcessInstanceDto.fromJson(json[r'processInstance']),
        execution: ExecutionDto.fromJson(json[r'execution']),
        variables: VariableValueDto.mapFromJson(json[r'variables']),
      );
    }
    return null;
  }

  static List<MessageCorrelationResultWithVariableDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageCorrelationResultWithVariableDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageCorrelationResultWithVariableDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MessageCorrelationResultWithVariableDto> mapFromJson(dynamic json) {
    final map = <String, MessageCorrelationResultWithVariableDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessageCorrelationResultWithVariableDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MessageCorrelationResultWithVariableDto-objects as value to a dart map
  static Map<String, List<MessageCorrelationResultWithVariableDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MessageCorrelationResultWithVariableDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MessageCorrelationResultWithVariableDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Indicates if the message was correlated to a message start event or an  intermediate message catching event. In the first case, the resultType is  `ProcessDefinition` and otherwise `Execution`.
class MessageCorrelationResultWithVariableDtoResultTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MessageCorrelationResultWithVariableDtoResultTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const execution = MessageCorrelationResultWithVariableDtoResultTypeEnum._(r'Execution');
  static const processDefinition = MessageCorrelationResultWithVariableDtoResultTypeEnum._(r'ProcessDefinition');

  /// List of all possible values in this [enum][MessageCorrelationResultWithVariableDtoResultTypeEnum].
  static const values = <MessageCorrelationResultWithVariableDtoResultTypeEnum>[
    execution,
    processDefinition,
  ];

  static MessageCorrelationResultWithVariableDtoResultTypeEnum? fromJson(dynamic value) => MessageCorrelationResultWithVariableDtoResultTypeEnumTypeTransformer().decode(value);

  static List<MessageCorrelationResultWithVariableDtoResultTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageCorrelationResultWithVariableDtoResultTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageCorrelationResultWithVariableDtoResultTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MessageCorrelationResultWithVariableDtoResultTypeEnum] to String,
/// and [decode] dynamic data back to [MessageCorrelationResultWithVariableDtoResultTypeEnum].
class MessageCorrelationResultWithVariableDtoResultTypeEnumTypeTransformer {
  factory MessageCorrelationResultWithVariableDtoResultTypeEnumTypeTransformer() => _instance ??= const MessageCorrelationResultWithVariableDtoResultTypeEnumTypeTransformer._();

  const MessageCorrelationResultWithVariableDtoResultTypeEnumTypeTransformer._();

  String encode(MessageCorrelationResultWithVariableDtoResultTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MessageCorrelationResultWithVariableDtoResultTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MessageCorrelationResultWithVariableDtoResultTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Execution': return MessageCorrelationResultWithVariableDtoResultTypeEnum.execution;
        case r'ProcessDefinition': return MessageCorrelationResultWithVariableDtoResultTypeEnum.processDefinition;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MessageCorrelationResultWithVariableDtoResultTypeEnumTypeTransformer] instance.
  static MessageCorrelationResultWithVariableDtoResultTypeEnumTypeTransformer? _instance;
}


