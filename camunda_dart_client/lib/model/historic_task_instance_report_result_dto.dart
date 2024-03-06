//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricTaskInstanceReportResultDto {
  /// Returns a new [HistoricTaskInstanceReportResultDto] instance.
  HistoricTaskInstanceReportResultDto({
    this.taskName,
    this.count,
    this.processDefinitionKey,
    this.processDefinitionId,
    this.processDefinitionName,
    this.period,
    this.periodUnit,
    this.minimum,
    this.maximum,
    this.average,
    this.tenantId,
  });

  /// The name of the task. It is only available when the `groupBy` parameter is set to `taskName`. Else the value is `null`.  **Note:** This property is only set for a historic task report object. In these cases, the value of the `reportType` query parameter is `count`.
  String? taskName;

  /// The number of tasks which have the given definition.  **Note:** This property is only set for a historic task report object. In these cases, the value of the `reportType` query parameter is `count`.
  int? count;

  /// The key of the process definition.  **Note:** This property is only set for a historic task report object. In these cases, the value of the `reportType` query parameter is `count`.
  String? processDefinitionKey;

  /// The id of the process definition.  **Note:** This property is only set for a historic task report object. In these cases, the value of the `reportType` query parameter is `count`.
  String? processDefinitionId;

  /// The name of the process definition.  **Note:** This property is only set for a historic task report object. In these cases, the value of the `reportType` query parameter is `count`.
  String? processDefinitionName;

  /// Specifies a span of time within a year. **Note:** The period must be interpreted in conjunction with the returned `periodUnit`.  **Note:** This property is only set for a duration report object. In these cases, the value of the `reportType` query parameter is `duration`.
  int? period;

  /// The unit of the given period. Possible values are `MONTH` and `QUARTER`.  **Note:** This property is only set for a duration report object. In these cases, the value of the `reportType` query parameter is `duration`.
  HistoricTaskInstanceReportResultDtoPeriodUnitEnum? periodUnit;

  /// The smallest duration in milliseconds of all completed process instances which were started in the given period.  **Note:** This property is only set for a duration report object. In these cases, the value of the `reportType` query parameter is `duration`.
  int? minimum;

  /// The greatest duration in milliseconds of all completed process instances which were started in the given period.  **Note:** This property is only set for a duration report object. In these cases, the value of the `reportType` query parameter is `duration`.
  int? maximum;

  /// The average duration in milliseconds of all completed process instances which were started in the given period.  **Note:** This property is only set for a duration report object. In these cases, the value of the `reportType` query parameter is `duration`.
  int? average;

  /// The id of the tenant.
  String? tenantId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricTaskInstanceReportResultDto &&
    other.taskName == taskName &&
    other.count == count &&
    other.processDefinitionKey == processDefinitionKey &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionName == processDefinitionName &&
    other.period == period &&
    other.periodUnit == periodUnit &&
    other.minimum == minimum &&
    other.maximum == maximum &&
    other.average == average &&
    other.tenantId == tenantId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (taskName == null ? 0 : taskName!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionName == null ? 0 : processDefinitionName!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (periodUnit == null ? 0 : periodUnit!.hashCode) +
    (minimum == null ? 0 : minimum!.hashCode) +
    (maximum == null ? 0 : maximum!.hashCode) +
    (average == null ? 0 : average!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode);

  @override
  String toString() => 'HistoricTaskInstanceReportResultDto[taskName=$taskName, count=$count, processDefinitionKey=$processDefinitionKey, processDefinitionId=$processDefinitionId, processDefinitionName=$processDefinitionName, period=$period, periodUnit=$periodUnit, minimum=$minimum, maximum=$maximum, average=$average, tenantId=$tenantId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.taskName != null) {
      json[r'taskName'] = this.taskName;
    } else {
      json[r'taskName'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.processDefinitionKey != null) {
      json[r'processDefinitionKey'] = this.processDefinitionKey;
    } else {
      json[r'processDefinitionKey'] = null;
    }
    if (this.processDefinitionId != null) {
      json[r'processDefinitionId'] = this.processDefinitionId;
    } else {
      json[r'processDefinitionId'] = null;
    }
    if (this.processDefinitionName != null) {
      json[r'processDefinitionName'] = this.processDefinitionName;
    } else {
      json[r'processDefinitionName'] = null;
    }
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
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    return json;
  }

  /// Returns a new [HistoricTaskInstanceReportResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricTaskInstanceReportResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricTaskInstanceReportResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricTaskInstanceReportResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricTaskInstanceReportResultDto(
        taskName: mapValueOfType<String>(json, r'taskName'),
        count: mapValueOfType<int>(json, r'count'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionName: mapValueOfType<String>(json, r'processDefinitionName'),
        period: mapValueOfType<int>(json, r'period'),
        periodUnit: HistoricTaskInstanceReportResultDtoPeriodUnitEnum.fromJson(json[r'periodUnit']),
        minimum: mapValueOfType<int>(json, r'minimum'),
        maximum: mapValueOfType<int>(json, r'maximum'),
        average: mapValueOfType<int>(json, r'average'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
      );
    }
    return null;
  }

  static List<HistoricTaskInstanceReportResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricTaskInstanceReportResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricTaskInstanceReportResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricTaskInstanceReportResultDto> mapFromJson(dynamic json) {
    final map = <String, HistoricTaskInstanceReportResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricTaskInstanceReportResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricTaskInstanceReportResultDto-objects as value to a dart map
  static Map<String, List<HistoricTaskInstanceReportResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricTaskInstanceReportResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricTaskInstanceReportResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// The unit of the given period. Possible values are `MONTH` and `QUARTER`.  **Note:** This property is only set for a duration report object. In these cases, the value of the `reportType` query parameter is `duration`.
class HistoricTaskInstanceReportResultDtoPeriodUnitEnum {
  /// Instantiate a new enum with the provided [value].
  const HistoricTaskInstanceReportResultDtoPeriodUnitEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MONTH = HistoricTaskInstanceReportResultDtoPeriodUnitEnum._(r'MONTH');
  static const QUARTER = HistoricTaskInstanceReportResultDtoPeriodUnitEnum._(r'QUARTER');

  /// List of all possible values in this [enum][HistoricTaskInstanceReportResultDtoPeriodUnitEnum].
  static const values = <HistoricTaskInstanceReportResultDtoPeriodUnitEnum>[
    MONTH,
    QUARTER,
  ];

  static HistoricTaskInstanceReportResultDtoPeriodUnitEnum? fromJson(dynamic value) => HistoricTaskInstanceReportResultDtoPeriodUnitEnumTypeTransformer().decode(value);

  static List<HistoricTaskInstanceReportResultDtoPeriodUnitEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricTaskInstanceReportResultDtoPeriodUnitEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricTaskInstanceReportResultDtoPeriodUnitEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HistoricTaskInstanceReportResultDtoPeriodUnitEnum] to String,
/// and [decode] dynamic data back to [HistoricTaskInstanceReportResultDtoPeriodUnitEnum].
class HistoricTaskInstanceReportResultDtoPeriodUnitEnumTypeTransformer {
  factory HistoricTaskInstanceReportResultDtoPeriodUnitEnumTypeTransformer() => _instance ??= const HistoricTaskInstanceReportResultDtoPeriodUnitEnumTypeTransformer._();

  const HistoricTaskInstanceReportResultDtoPeriodUnitEnumTypeTransformer._();

  String encode(HistoricTaskInstanceReportResultDtoPeriodUnitEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HistoricTaskInstanceReportResultDtoPeriodUnitEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HistoricTaskInstanceReportResultDtoPeriodUnitEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MONTH': return HistoricTaskInstanceReportResultDtoPeriodUnitEnum.MONTH;
        case r'QUARTER': return HistoricTaskInstanceReportResultDtoPeriodUnitEnum.QUARTER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HistoricTaskInstanceReportResultDtoPeriodUnitEnumTypeTransformer] instance.
  static HistoricTaskInstanceReportResultDtoPeriodUnitEnumTypeTransformer? _instance;
}


