//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JobConditionQueryParameterDto {
  /// Returns a new [JobConditionQueryParameterDto] instance.
  JobConditionQueryParameterDto({
    this.operator_,
    this.value,
  });

  /// Comparison operator to be used.
  JobConditionQueryParameterDtoOperator_Enum? operator_;

  /// Date value to compare with.
  DateTime? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobConditionQueryParameterDto &&
    other.operator_ == operator_ &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (operator_ == null ? 0 : operator_!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'JobConditionQueryParameterDto[operator_=$operator_, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.operator_ != null) {
      json[r'operator'] = this.operator_;
    } else {
      json[r'operator'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value!.toUtc().toIso8601String();
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [JobConditionQueryParameterDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobConditionQueryParameterDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobConditionQueryParameterDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobConditionQueryParameterDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobConditionQueryParameterDto(
        operator_: JobConditionQueryParameterDtoOperator_Enum.fromJson(json[r'operator']),
        value: mapDateTime(json, r'value', r''),
      );
    }
    return null;
  }

  static List<JobConditionQueryParameterDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobConditionQueryParameterDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobConditionQueryParameterDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobConditionQueryParameterDto> mapFromJson(dynamic json) {
    final map = <String, JobConditionQueryParameterDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobConditionQueryParameterDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobConditionQueryParameterDto-objects as value to a dart map
  static Map<String, List<JobConditionQueryParameterDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobConditionQueryParameterDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobConditionQueryParameterDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Comparison operator to be used.
class JobConditionQueryParameterDtoOperator_Enum {
  /// Instantiate a new enum with the provided [value].
  const JobConditionQueryParameterDtoOperator_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const gt = JobConditionQueryParameterDtoOperator_Enum._(r'gt');
  static const lt = JobConditionQueryParameterDtoOperator_Enum._(r'lt');

  /// List of all possible values in this [enum][JobConditionQueryParameterDtoOperator_Enum].
  static const values = <JobConditionQueryParameterDtoOperator_Enum>[
    gt,
    lt,
  ];

  static JobConditionQueryParameterDtoOperator_Enum? fromJson(dynamic value) => JobConditionQueryParameterDtoOperator_EnumTypeTransformer().decode(value);

  static List<JobConditionQueryParameterDtoOperator_Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobConditionQueryParameterDtoOperator_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobConditionQueryParameterDtoOperator_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [JobConditionQueryParameterDtoOperator_Enum] to String,
/// and [decode] dynamic data back to [JobConditionQueryParameterDtoOperator_Enum].
class JobConditionQueryParameterDtoOperator_EnumTypeTransformer {
  factory JobConditionQueryParameterDtoOperator_EnumTypeTransformer() => _instance ??= const JobConditionQueryParameterDtoOperator_EnumTypeTransformer._();

  const JobConditionQueryParameterDtoOperator_EnumTypeTransformer._();

  String encode(JobConditionQueryParameterDtoOperator_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a JobConditionQueryParameterDtoOperator_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  JobConditionQueryParameterDtoOperator_Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'gt': return JobConditionQueryParameterDtoOperator_Enum.gt;
        case r'lt': return JobConditionQueryParameterDtoOperator_Enum.lt;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [JobConditionQueryParameterDtoOperator_EnumTypeTransformer] instance.
  static JobConditionQueryParameterDtoOperator_EnumTypeTransformer? _instance;
}


