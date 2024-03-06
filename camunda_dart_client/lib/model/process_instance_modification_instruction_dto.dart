//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProcessInstanceModificationInstructionDto {
  /// Returns a new [ProcessInstanceModificationInstructionDto] instance.
  ProcessInstanceModificationInstructionDto({
    required this.type,
    this.variables,
    this.activityId,
    this.transitionId,
    this.activityInstanceId,
    this.transitionInstanceId,
    this.ancestorActivityInstanceId,
    this.cancelCurrentActiveActivityInstances,
  });

  /// **Mandatory**. One of the following values: `cancel`, `startBeforeActivity`, `startAfterActivity`, `startTransition`.  * A cancel instruction requests cancellation of a single activity instance or all instances of one activity. * A startBeforeActivity instruction requests to enter a given activity. * A startAfterActivity instruction requests to execute the single outgoing sequence flow of a given activity. * A startTransition instruction requests to execute a specific sequence flow.
  ProcessInstanceModificationInstructionDtoTypeEnum type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TriggerVariableValueDto? variables;

  /// Can be used with instructions of types `startTransition`. Specifies the sequence flow to start.
  String? activityId;

  /// Can be used with instructions of types `startTransition`. Specifies the sequence flow to start.
  String? transitionId;

  /// Can be used with instructions of type `cancel`. Specifies the activity instance to cancel. Valid values are the activity instance IDs supplied by the [Get Activity Instance request](https://docs.camunda.org/manual/7.20/reference/rest/process-instance/get-activity-instances/).
  String? activityInstanceId;

  /// Can be used with instructions of type `cancel`. Specifies the transition instance to cancel. Valid values are the transition instance IDs supplied by the [Get Activity Instance request](https://docs.camunda.org/manual/7.20/reference/rest/process-instance/get-activity-instances/).
  String? transitionInstanceId;

  /// Can be used with instructions of type `startBeforeActivity`, `startAfterActivity`, and `startTransition`. Valid values are the activity instance IDs supplied by the Get Activity Instance request. If there are multiple parent activity instances of the targeted activity, this specifies the ancestor scope in which hierarchy the activity/transition is to be instantiated.  Example: When there are two instances of a subprocess and an activity contained in the subprocess is to be started, this parameter allows to specifiy under which subprocess instance the activity should be started.
  String? ancestorActivityInstanceId;

  /// Can be used with instructions of type cancel. Prevents the deletion of new created activity instances.
  bool? cancelCurrentActiveActivityInstances;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProcessInstanceModificationInstructionDto &&
    other.type == type &&
    other.variables == variables &&
    other.activityId == activityId &&
    other.transitionId == transitionId &&
    other.activityInstanceId == activityInstanceId &&
    other.transitionInstanceId == transitionInstanceId &&
    other.ancestorActivityInstanceId == ancestorActivityInstanceId &&
    other.cancelCurrentActiveActivityInstances == cancelCurrentActiveActivityInstances;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (variables == null ? 0 : variables!.hashCode) +
    (activityId == null ? 0 : activityId!.hashCode) +
    (transitionId == null ? 0 : transitionId!.hashCode) +
    (activityInstanceId == null ? 0 : activityInstanceId!.hashCode) +
    (transitionInstanceId == null ? 0 : transitionInstanceId!.hashCode) +
    (ancestorActivityInstanceId == null ? 0 : ancestorActivityInstanceId!.hashCode) +
    (cancelCurrentActiveActivityInstances == null ? 0 : cancelCurrentActiveActivityInstances!.hashCode);

  @override
  String toString() => 'ProcessInstanceModificationInstructionDto[type=$type, variables=$variables, activityId=$activityId, transitionId=$transitionId, activityInstanceId=$activityInstanceId, transitionInstanceId=$transitionInstanceId, ancestorActivityInstanceId=$ancestorActivityInstanceId, cancelCurrentActiveActivityInstances=$cancelCurrentActiveActivityInstances]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
    if (this.variables != null) {
      json[r'variables'] = this.variables;
    } else {
      json[r'variables'] = null;
    }
    if (this.activityId != null) {
      json[r'activityId'] = this.activityId;
    } else {
      json[r'activityId'] = null;
    }
    if (this.transitionId != null) {
      json[r'transitionId'] = this.transitionId;
    } else {
      json[r'transitionId'] = null;
    }
    if (this.activityInstanceId != null) {
      json[r'activityInstanceId'] = this.activityInstanceId;
    } else {
      json[r'activityInstanceId'] = null;
    }
    if (this.transitionInstanceId != null) {
      json[r'transitionInstanceId'] = this.transitionInstanceId;
    } else {
      json[r'transitionInstanceId'] = null;
    }
    if (this.ancestorActivityInstanceId != null) {
      json[r'ancestorActivityInstanceId'] = this.ancestorActivityInstanceId;
    } else {
      json[r'ancestorActivityInstanceId'] = null;
    }
    if (this.cancelCurrentActiveActivityInstances != null) {
      json[r'cancelCurrentActiveActivityInstances'] = this.cancelCurrentActiveActivityInstances;
    } else {
      json[r'cancelCurrentActiveActivityInstances'] = null;
    }
    return json;
  }

  /// Returns a new [ProcessInstanceModificationInstructionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProcessInstanceModificationInstructionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProcessInstanceModificationInstructionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProcessInstanceModificationInstructionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProcessInstanceModificationInstructionDto(
        type: ProcessInstanceModificationInstructionDtoTypeEnum.fromJson(json[r'type'])!,
        variables: TriggerVariableValueDto.fromJson(json[r'variables']),
        activityId: mapValueOfType<String>(json, r'activityId'),
        transitionId: mapValueOfType<String>(json, r'transitionId'),
        activityInstanceId: mapValueOfType<String>(json, r'activityInstanceId'),
        transitionInstanceId: mapValueOfType<String>(json, r'transitionInstanceId'),
        ancestorActivityInstanceId: mapValueOfType<String>(json, r'ancestorActivityInstanceId'),
        cancelCurrentActiveActivityInstances: mapValueOfType<bool>(json, r'cancelCurrentActiveActivityInstances'),
      );
    }
    return null;
  }

  static List<ProcessInstanceModificationInstructionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProcessInstanceModificationInstructionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProcessInstanceModificationInstructionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProcessInstanceModificationInstructionDto> mapFromJson(dynamic json) {
    final map = <String, ProcessInstanceModificationInstructionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProcessInstanceModificationInstructionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProcessInstanceModificationInstructionDto-objects as value to a dart map
  static Map<String, List<ProcessInstanceModificationInstructionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProcessInstanceModificationInstructionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProcessInstanceModificationInstructionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
  };
}

/// **Mandatory**. One of the following values: `cancel`, `startBeforeActivity`, `startAfterActivity`, `startTransition`.  * A cancel instruction requests cancellation of a single activity instance or all instances of one activity. * A startBeforeActivity instruction requests to enter a given activity. * A startAfterActivity instruction requests to execute the single outgoing sequence flow of a given activity. * A startTransition instruction requests to execute a specific sequence flow.
class ProcessInstanceModificationInstructionDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ProcessInstanceModificationInstructionDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const cancel = ProcessInstanceModificationInstructionDtoTypeEnum._(r'cancel');
  static const startBeforeActivity = ProcessInstanceModificationInstructionDtoTypeEnum._(r'startBeforeActivity');
  static const startAfterActivity = ProcessInstanceModificationInstructionDtoTypeEnum._(r'startAfterActivity');
  static const startTransition = ProcessInstanceModificationInstructionDtoTypeEnum._(r'startTransition');

  /// List of all possible values in this [enum][ProcessInstanceModificationInstructionDtoTypeEnum].
  static const values = <ProcessInstanceModificationInstructionDtoTypeEnum>[
    cancel,
    startBeforeActivity,
    startAfterActivity,
    startTransition,
  ];

  static ProcessInstanceModificationInstructionDtoTypeEnum? fromJson(dynamic value) => ProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer().decode(value);

  static List<ProcessInstanceModificationInstructionDtoTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProcessInstanceModificationInstructionDtoTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProcessInstanceModificationInstructionDtoTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProcessInstanceModificationInstructionDtoTypeEnum] to String,
/// and [decode] dynamic data back to [ProcessInstanceModificationInstructionDtoTypeEnum].
class ProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer {
  factory ProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer() => _instance ??= const ProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer._();

  const ProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer._();

  String encode(ProcessInstanceModificationInstructionDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProcessInstanceModificationInstructionDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProcessInstanceModificationInstructionDtoTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'cancel': return ProcessInstanceModificationInstructionDtoTypeEnum.cancel;
        case r'startBeforeActivity': return ProcessInstanceModificationInstructionDtoTypeEnum.startBeforeActivity;
        case r'startAfterActivity': return ProcessInstanceModificationInstructionDtoTypeEnum.startAfterActivity;
        case r'startTransition': return ProcessInstanceModificationInstructionDtoTypeEnum.startTransition;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer] instance.
  static ProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer? _instance;
}


