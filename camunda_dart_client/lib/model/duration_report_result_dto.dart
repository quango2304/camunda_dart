//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DurationReportResultDto {
  /// Returns a new [DurationReportResultDto] instance.
  DurationReportResultDto({
    this.period,
    this.periodUnit,
    this.minimum,
    this.maximum,
    this.average,
  });

  /// Specifies a timespan within a year. **Note:** The period must be interpreted in conjunction with the returned `periodUnit`.
  int? period;

  /// The unit of the given period. Possible values are `MONTH` and `QUARTER`.
  DurationReportResultDtoPeriodUnitEnum? periodUnit;

  /// The smallest duration in milliseconds of all completed process instances which were started in the given period.
  int? minimum;

  /// The greatest duration in milliseconds of all completed process instances which were started in the given period.
  int? maximum;

  /// The average duration in milliseconds of all completed process instances which were started in the given period.
  int? average;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DurationReportResultDto &&
    other.period == period &&
    other.periodUnit == periodUnit &&
    other.minimum == minimum &&
    other.maximum == maximum &&
    other.average == average;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (period == null ? 0 : period!.hashCode) +
    (periodUnit == null ? 0 : periodUnit!.hashCode) +
    (minimum == null ? 0 : minimum!.hashCode) +
    (maximum == null ? 0 : maximum!.hashCode) +
    (average == null ? 0 : average!.hashCode);

  @override
  String toString() => 'DurationReportResultDto[period=$period, periodUnit=$periodUnit, minimum=$minimum, maximum=$maximum, average=$average]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    if (this.periodUnit != null) {
      json[r'periodUnit'] = this.periodUnit;
    } else {
      json[r'periodUnit'] = null;
    }
    if (this.minimum != null) {
      json[r'minimum'] = this.minimum;
    } else {
      json[r'minimum'] = null;
    }
    if (this.maximum != null) {
      json[r'maximum'] = this.maximum;
    } else {
      json[r'maximum'] = null;
    }
    if (this.average != null) {
      json[r'average'] = this.average;
    } else {
      json[r'average'] = null;
    }
    return json;
  }

  /// Returns a new [DurationReportResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DurationReportResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DurationReportResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DurationReportResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DurationReportResultDto(
        period: mapValueOfType<int>(json, r'period'),
        periodUnit: DurationReportResultDtoPeriodUnitEnum.fromJson(json[r'periodUnit']),
        minimum: mapValueOfType<int>(json, r'minimum'),
        maximum: mapValueOfType<int>(json, r'maximum'),
        average: mapValueOfType<int>(json, r'average'),
      );
    }
    return null;
  }

  static List<DurationReportResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DurationReportResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DurationReportResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DurationReportResultDto> mapFromJson(dynamic json) {
    final map = <String, DurationReportResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DurationReportResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DurationReportResultDto-objects as value to a dart map
  static Map<String, List<DurationReportResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DurationReportResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DurationReportResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// The unit of the given period. Possible values are `MONTH` and `QUARTER`.
class DurationReportResultDtoPeriodUnitEnum {
  /// Instantiate a new enum with the provided [value].
  const DurationReportResultDtoPeriodUnitEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MONTH = DurationReportResultDtoPeriodUnitEnum._(r'MONTH');
  static const QUARTER = DurationReportResultDtoPeriodUnitEnum._(r'QUARTER');

  /// List of all possible values in this [enum][DurationReportResultDtoPeriodUnitEnum].
  static const values = <DurationReportResultDtoPeriodUnitEnum>[
    MONTH,
    QUARTER,
  ];

  static DurationReportResultDtoPeriodUnitEnum? fromJson(dynamic value) => DurationReportResultDtoPeriodUnitEnumTypeTransformer().decode(value);

  static List<DurationReportResultDtoPeriodUnitEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DurationReportResultDtoPeriodUnitEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DurationReportResultDtoPeriodUnitEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DurationReportResultDtoPeriodUnitEnum] to String,
/// and [decode] dynamic data back to [DurationReportResultDtoPeriodUnitEnum].
class DurationReportResultDtoPeriodUnitEnumTypeTransformer {
  factory DurationReportResultDtoPeriodUnitEnumTypeTransformer() => _instance ??= const DurationReportResultDtoPeriodUnitEnumTypeTransformer._();

  const DurationReportResultDtoPeriodUnitEnumTypeTransformer._();

  String encode(DurationReportResultDtoPeriodUnitEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DurationReportResultDtoPeriodUnitEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DurationReportResultDtoPeriodUnitEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MONTH': return DurationReportResultDtoPeriodUnitEnum.MONTH;
        case r'QUARTER': return DurationReportResultDtoPeriodUnitEnum.QUARTER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DurationReportResultDtoPeriodUnitEnumTypeTransformer] instance.
  static DurationReportResultDtoPeriodUnitEnumTypeTransformer? _instance;
}


