//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConditionQueryParameterDto {
  /// Returns a new [ConditionQueryParameterDto] instance.
  ConditionQueryParameterDto({
    this.operator_,
    this.value,
  });

  /// Comparison operator to be used. `notLike` is not supported by all endpoints.
  ConditionQueryParameterDtoOperator_Enum? operator_;

  /// Can be any value - string, number, boolean, array or object.  **Note**: Not every endpoint supports every type.
  Object? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConditionQueryParameterDto &&
    other.operator_ == operator_ &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (operator_ == null ? 0 : operator_!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'ConditionQueryParameterDto[operator_=$operator_, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.operator_ != null) {
      json[r'operator'] = this.operator_;
    } else {
      json[r'operator'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [ConditionQueryParameterDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConditionQueryParameterDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConditionQueryParameterDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConditionQueryParameterDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConditionQueryParameterDto(
        operator_: ConditionQueryParameterDtoOperator_Enum.fromJson(json[r'operator']),
        value: mapValueOfType<Object>(json, r'value'),
      );
    }
    return null;
  }

  static List<ConditionQueryParameterDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConditionQueryParameterDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConditionQueryParameterDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConditionQueryParameterDto> mapFromJson(dynamic json) {
    final map = <String, ConditionQueryParameterDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConditionQueryParameterDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConditionQueryParameterDto-objects as value to a dart map
  static Map<String, List<ConditionQueryParameterDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConditionQueryParameterDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConditionQueryParameterDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Comparison operator to be used. `notLike` is not supported by all endpoints.
class ConditionQueryParameterDtoOperator_Enum {
  /// Instantiate a new enum with the provided [value].
  const ConditionQueryParameterDtoOperator_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const eq = ConditionQueryParameterDtoOperator_Enum._(r'eq');
  static const neq = ConditionQueryParameterDtoOperator_Enum._(r'neq');
  static const gt = ConditionQueryParameterDtoOperator_Enum._(r'gt');
  static const gteq = ConditionQueryParameterDtoOperator_Enum._(r'gteq');
  static const lt = ConditionQueryParameterDtoOperator_Enum._(r'lt');
  static const lteq = ConditionQueryParameterDtoOperator_Enum._(r'lteq');
  static const like = ConditionQueryParameterDtoOperator_Enum._(r'like');
  static const notLike = ConditionQueryParameterDtoOperator_Enum._(r'notLike');

  /// List of all possible values in this [enum][ConditionQueryParameterDtoOperator_Enum].
  static const values = <ConditionQueryParameterDtoOperator_Enum>[
    eq,
    neq,
    gt,
    gteq,
    lt,
    lteq,
    like,
    notLike,
  ];

  static ConditionQueryParameterDtoOperator_Enum? fromJson(dynamic value) => ConditionQueryParameterDtoOperator_EnumTypeTransformer().decode(value);

  static List<ConditionQueryParameterDtoOperator_Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConditionQueryParameterDtoOperator_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConditionQueryParameterDtoOperator_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConditionQueryParameterDtoOperator_Enum] to String,
/// and [decode] dynamic data back to [ConditionQueryParameterDtoOperator_Enum].
class ConditionQueryParameterDtoOperator_EnumTypeTransformer {
  factory ConditionQueryParameterDtoOperator_EnumTypeTransformer() => _instance ??= const ConditionQueryParameterDtoOperator_EnumTypeTransformer._();

  const ConditionQueryParameterDtoOperator_EnumTypeTransformer._();

  String encode(ConditionQueryParameterDtoOperator_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConditionQueryParameterDtoOperator_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConditionQueryParameterDtoOperator_Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'eq': return ConditionQueryParameterDtoOperator_Enum.eq;
        case r'neq': return ConditionQueryParameterDtoOperator_Enum.neq;
        case r'gt': return ConditionQueryParameterDtoOperator_Enum.gt;
        case r'gteq': return ConditionQueryParameterDtoOperator_Enum.gteq;
        case r'lt': return ConditionQueryParameterDtoOperator_Enum.lt;
        case r'lteq': return ConditionQueryParameterDtoOperator_Enum.lteq;
        case r'like': return ConditionQueryParameterDtoOperator_Enum.like;
        case r'notLike': return ConditionQueryParameterDtoOperator_Enum.notLike;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConditionQueryParameterDtoOperator_EnumTypeTransformer] instance.
  static ConditionQueryParameterDtoOperator_EnumTypeTransformer? _instance;
}


