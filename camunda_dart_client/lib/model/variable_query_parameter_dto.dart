//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VariableQueryParameterDto {
  /// Returns a new [VariableQueryParameterDto] instance.
  VariableQueryParameterDto({
    this.operator_,
    this.value,
    this.name,
  });

  /// Comparison operator to be used. `notLike` is not supported by all endpoints.
  VariableQueryParameterDtoOperator_Enum? operator_;

  /// Can be any value - string, number, boolean, array or object.  **Note**: Not every endpoint supports every type.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? value;

  /// Variable name
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VariableQueryParameterDto &&
    other.operator_ == operator_ &&
    other.value == value &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (operator_ == null ? 0 : operator_!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'VariableQueryParameterDto[operator_=$operator_, value=$value, name=$name]';

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
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [VariableQueryParameterDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VariableQueryParameterDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VariableQueryParameterDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VariableQueryParameterDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VariableQueryParameterDto(
        operator_: VariableQueryParameterDtoOperator_Enum.fromJson(json[r'operator']),
        value: mapValueOfType<Object>(json, r'value'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<VariableQueryParameterDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VariableQueryParameterDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VariableQueryParameterDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VariableQueryParameterDto> mapFromJson(dynamic json) {
    final map = <String, VariableQueryParameterDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VariableQueryParameterDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VariableQueryParameterDto-objects as value to a dart map
  static Map<String, List<VariableQueryParameterDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VariableQueryParameterDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VariableQueryParameterDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Comparison operator to be used. `notLike` is not supported by all endpoints.
class VariableQueryParameterDtoOperator_Enum {
  /// Instantiate a new enum with the provided [value].
  const VariableQueryParameterDtoOperator_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const eq = VariableQueryParameterDtoOperator_Enum._(r'eq');
  static const neq = VariableQueryParameterDtoOperator_Enum._(r'neq');
  static const gt = VariableQueryParameterDtoOperator_Enum._(r'gt');
  static const gteq = VariableQueryParameterDtoOperator_Enum._(r'gteq');
  static const lt = VariableQueryParameterDtoOperator_Enum._(r'lt');
  static const lteq = VariableQueryParameterDtoOperator_Enum._(r'lteq');
  static const like = VariableQueryParameterDtoOperator_Enum._(r'like');
  static const notLike = VariableQueryParameterDtoOperator_Enum._(r'notLike');

  /// List of all possible values in this [enum][VariableQueryParameterDtoOperator_Enum].
  static const values = <VariableQueryParameterDtoOperator_Enum>[
    eq,
    neq,
    gt,
    gteq,
    lt,
    lteq,
    like,
    notLike,
  ];

  static VariableQueryParameterDtoOperator_Enum? fromJson(dynamic value) => VariableQueryParameterDtoOperator_EnumTypeTransformer().decode(value);

  static List<VariableQueryParameterDtoOperator_Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VariableQueryParameterDtoOperator_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VariableQueryParameterDtoOperator_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VariableQueryParameterDtoOperator_Enum] to String,
/// and [decode] dynamic data back to [VariableQueryParameterDtoOperator_Enum].
class VariableQueryParameterDtoOperator_EnumTypeTransformer {
  factory VariableQueryParameterDtoOperator_EnumTypeTransformer() => _instance ??= const VariableQueryParameterDtoOperator_EnumTypeTransformer._();

  const VariableQueryParameterDtoOperator_EnumTypeTransformer._();

  String encode(VariableQueryParameterDtoOperator_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a VariableQueryParameterDtoOperator_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VariableQueryParameterDtoOperator_Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'eq': return VariableQueryParameterDtoOperator_Enum.eq;
        case r'neq': return VariableQueryParameterDtoOperator_Enum.neq;
        case r'gt': return VariableQueryParameterDtoOperator_Enum.gt;
        case r'gteq': return VariableQueryParameterDtoOperator_Enum.gteq;
        case r'lt': return VariableQueryParameterDtoOperator_Enum.lt;
        case r'lteq': return VariableQueryParameterDtoOperator_Enum.lteq;
        case r'like': return VariableQueryParameterDtoOperator_Enum.like;
        case r'notLike': return VariableQueryParameterDtoOperator_Enum.notLike;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VariableQueryParameterDtoOperator_EnumTypeTransformer] instance.
  static VariableQueryParameterDtoOperator_EnumTypeTransformer? _instance;
}


