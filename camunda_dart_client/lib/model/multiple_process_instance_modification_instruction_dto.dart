//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MultipleProcessInstanceModificationInstructionDto {
  /// Returns a new [MultipleProcessInstanceModificationInstructionDto] instance.
  MultipleProcessInstanceModificationInstructionDto({
    required this.type,
    this.activityId,
    this.transitionId,
    this.cancelCurrentActiveActivityInstances,
  });

  /// **Mandatory**. One of the following values: `cancel`, `startBeforeActivity`, `startAfterActivity`, `startTransition`.  * A cancel instruction requests cancellation of a single activity instance or all instances of one activity. * A startBeforeActivity instruction requests to enter a given activity. * A startAfterActivity instruction requests to execute the single outgoing sequence flow of a given activity. * A startTransition instruction requests to execute a specific sequence flow.
  MultipleProcessInstanceModificationInstructionDtoTypeEnum type;

  /// Can be used with instructions of types `startTransition`. Specifies the sequence flow to start.
  String? activityId;

  /// Can be used with instructions of types `startTransition`. Specifies the sequence flow to start.
  String? transitionId;

  /// Can be used with instructions of type cancel. Prevents the deletion of new created activity instances.
  bool? cancelCurrentActiveActivityInstances;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MultipleProcessInstanceModificationInstructionDto &&
    other.type == type &&
    other.activityId == activityId &&
    other.transitionId == transitionId &&
    other.cancelCurrentActiveActivityInstances == cancelCurrentActiveActivityInstances;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (activityId == null ? 0 : activityId!.hashCode) +
    (transitionId == null ? 0 : transitionId!.hashCode) +
    (cancelCurrentActiveActivityInstances == null ? 0 : cancelCurrentActiveActivityInstances!.hashCode);

  @override
  String toString() => 'MultipleProcessInstanceModificationInstructionDto[type=$type, activityId=$activityId, transitionId=$transitionId, cancelCurrentActiveActivityInstances=$cancelCurrentActiveActivityInstances]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
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
    if (this.cancelCurrentActiveActivityInstances != null) {
      json[r'cancelCurrentActiveActivityInstances'] = this.cancelCurrentActiveActivityInstances;
    } else {
      json[r'cancelCurrentActiveActivityInstances'] = null;
    }
    return json;
  }

  /// Returns a new [MultipleProcessInstanceModificationInstructionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MultipleProcessInstanceModificationInstructionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MultipleProcessInstanceModificationInstructionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MultipleProcessInstanceModificationInstructionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MultipleProcessInstanceModificationInstructionDto(
        type: MultipleProcessInstanceModificationInstructionDtoTypeEnum.fromJson(json[r'type'])!,
        activityId: mapValueOfType<String>(json, r'activityId'),
        transitionId: mapValueOfType<String>(json, r'transitionId'),
        cancelCurrentActiveActivityInstances: mapValueOfType<bool>(json, r'cancelCurrentActiveActivityInstances'),
      );
    }
    return null;
  }

  static List<MultipleProcessInstanceModificationInstructionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MultipleProcessInstanceModificationInstructionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MultipleProcessInstanceModificationInstructionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MultipleProcessInstanceModificationInstructionDto> mapFromJson(dynamic json) {
    final map = <String, MultipleProcessInstanceModificationInstructionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MultipleProcessInstanceModificationInstructionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MultipleProcessInstanceModificationInstructionDto-objects as value to a dart map
  static Map<String, List<MultipleProcessInstanceModificationInstructionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MultipleProcessInstanceModificationInstructionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MultipleProcessInstanceModificationInstructionDto.listFromJson(entry.value, growable: growable,);
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
class MultipleProcessInstanceModificationInstructionDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MultipleProcessInstanceModificationInstructionDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const cancel = MultipleProcessInstanceModificationInstructionDtoTypeEnum._(r'cancel');
  static const startBeforeActivity = MultipleProcessInstanceModificationInstructionDtoTypeEnum._(r'startBeforeActivity');
  static const startAfterActivity = MultipleProcessInstanceModificationInstructionDtoTypeEnum._(r'startAfterActivity');
  static const startTransition = MultipleProcessInstanceModificationInstructionDtoTypeEnum._(r'startTransition');

  /// List of all possible values in this [enum][MultipleProcessInstanceModificationInstructionDtoTypeEnum].
  static const values = <MultipleProcessInstanceModificationInstructionDtoTypeEnum>[
    cancel,
    startBeforeActivity,
    startAfterActivity,
    startTransition,
  ];

  static MultipleProcessInstanceModificationInstructionDtoTypeEnum? fromJson(dynamic value) => MultipleProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer().decode(value);

  static List<MultipleProcessInstanceModificationInstructionDtoTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MultipleProcessInstanceModificationInstructionDtoTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MultipleProcessInstanceModificationInstructionDtoTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MultipleProcessInstanceModificationInstructionDtoTypeEnum] to String,
/// and [decode] dynamic data back to [MultipleProcessInstanceModificationInstructionDtoTypeEnum].
class MultipleProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer {
  factory MultipleProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer() => _instance ??= const MultipleProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer._();

  const MultipleProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer._();

  String encode(MultipleProcessInstanceModificationInstructionDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MultipleProcessInstanceModificationInstructionDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MultipleProcessInstanceModificationInstructionDtoTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'cancel': return MultipleProcessInstanceModificationInstructionDtoTypeEnum.cancel;
        case r'startBeforeActivity': return MultipleProcessInstanceModificationInstructionDtoTypeEnum.startBeforeActivity;
        case r'startAfterActivity': return MultipleProcessInstanceModificationInstructionDtoTypeEnum.startAfterActivity;
        case r'startTransition': return MultipleProcessInstanceModificationInstructionDtoTypeEnum.startTransition;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MultipleProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer] instance.
  static MultipleProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer? _instance;
}


