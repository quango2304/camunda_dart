//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RestartProcessInstanceModificationInstructionDto {
  /// Returns a new [RestartProcessInstanceModificationInstructionDto] instance.
  RestartProcessInstanceModificationInstructionDto({
    required this.type,
    this.activityId,
    this.transitionId,
  });

  /// **Mandatory**. One of the following values: `startBeforeActivity`, `startAfterActivity`, `startTransition`.  * A `startBeforeActivity` instruction requests to enter a given activity. * A `startAfterActivity` instruction requests to execute the single outgoing sequence flow of a given activity. * A `startTransition` instruction requests to execute a specific sequence flow.
  RestartProcessInstanceModificationInstructionDtoTypeEnum type;

  /// **Can be used with instructions of types** `startBeforeActivity` and `startAfterActivity`. Specifies the sequence flow to start.
  String? activityId;

  /// **Can be used with instructions of types** `startTransition`. Specifies the sequence flow to start.
  String? transitionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RestartProcessInstanceModificationInstructionDto &&
    other.type == type &&
    other.activityId == activityId &&
    other.transitionId == transitionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (activityId == null ? 0 : activityId!.hashCode) +
    (transitionId == null ? 0 : transitionId!.hashCode);

  @override
  String toString() => 'RestartProcessInstanceModificationInstructionDto[type=$type, activityId=$activityId, transitionId=$transitionId]';

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
    return json;
  }

  /// Returns a new [RestartProcessInstanceModificationInstructionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RestartProcessInstanceModificationInstructionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RestartProcessInstanceModificationInstructionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RestartProcessInstanceModificationInstructionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RestartProcessInstanceModificationInstructionDto(
        type: RestartProcessInstanceModificationInstructionDtoTypeEnum.fromJson(json[r'type'])!,
        activityId: mapValueOfType<String>(json, r'activityId'),
        transitionId: mapValueOfType<String>(json, r'transitionId'),
      );
    }
    return null;
  }

  static List<RestartProcessInstanceModificationInstructionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RestartProcessInstanceModificationInstructionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RestartProcessInstanceModificationInstructionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RestartProcessInstanceModificationInstructionDto> mapFromJson(dynamic json) {
    final map = <String, RestartProcessInstanceModificationInstructionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RestartProcessInstanceModificationInstructionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RestartProcessInstanceModificationInstructionDto-objects as value to a dart map
  static Map<String, List<RestartProcessInstanceModificationInstructionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RestartProcessInstanceModificationInstructionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RestartProcessInstanceModificationInstructionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
  };
}

/// **Mandatory**. One of the following values: `startBeforeActivity`, `startAfterActivity`, `startTransition`.  * A `startBeforeActivity` instruction requests to enter a given activity. * A `startAfterActivity` instruction requests to execute the single outgoing sequence flow of a given activity. * A `startTransition` instruction requests to execute a specific sequence flow.
class RestartProcessInstanceModificationInstructionDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const RestartProcessInstanceModificationInstructionDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const startBeforeActivity = RestartProcessInstanceModificationInstructionDtoTypeEnum._(r'startBeforeActivity');
  static const startAfterActivity = RestartProcessInstanceModificationInstructionDtoTypeEnum._(r'startAfterActivity');
  static const startTransition = RestartProcessInstanceModificationInstructionDtoTypeEnum._(r'startTransition');

  /// List of all possible values in this [enum][RestartProcessInstanceModificationInstructionDtoTypeEnum].
  static const values = <RestartProcessInstanceModificationInstructionDtoTypeEnum>[
    startBeforeActivity,
    startAfterActivity,
    startTransition,
  ];

  static RestartProcessInstanceModificationInstructionDtoTypeEnum? fromJson(dynamic value) => RestartProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer().decode(value);

  static List<RestartProcessInstanceModificationInstructionDtoTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RestartProcessInstanceModificationInstructionDtoTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RestartProcessInstanceModificationInstructionDtoTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RestartProcessInstanceModificationInstructionDtoTypeEnum] to String,
/// and [decode] dynamic data back to [RestartProcessInstanceModificationInstructionDtoTypeEnum].
class RestartProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer {
  factory RestartProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer() => _instance ??= const RestartProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer._();

  const RestartProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer._();

  String encode(RestartProcessInstanceModificationInstructionDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RestartProcessInstanceModificationInstructionDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RestartProcessInstanceModificationInstructionDtoTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'startBeforeActivity': return RestartProcessInstanceModificationInstructionDtoTypeEnum.startBeforeActivity;
        case r'startAfterActivity': return RestartProcessInstanceModificationInstructionDtoTypeEnum.startAfterActivity;
        case r'startTransition': return RestartProcessInstanceModificationInstructionDtoTypeEnum.startTransition;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RestartProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer] instance.
  static RestartProcessInstanceModificationInstructionDtoTypeEnumTypeTransformer? _instance;
}


