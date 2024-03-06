//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricProcessInstanceDto {
  /// Returns a new [HistoricProcessInstanceDto] instance.
  HistoricProcessInstanceDto({
    this.id,
    this.rootProcessInstanceId,
    this.superProcessInstanceId,
    this.superCaseInstanceId,
    this.caseInstanceId,
    this.processDefinitionName,
    this.processDefinitionKey,
    this.processDefinitionVersion,
    this.processDefinitionId,
    this.businessKey,
    this.startTime,
    this.endTime,
    this.removalTime,
    this.durationInMillis,
    this.startUserId,
    this.startActivityId,
    this.deleteReason,
    this.tenantId,
    this.state,
  });

  /// The id of the process instance.
  String? id;

  /// The process instance id of the root process instance that initiated the process.
  String? rootProcessInstanceId;

  /// The id of the parent process instance, if it exists.
  String? superProcessInstanceId;

  /// The id of the parent case instance, if it exists.
  String? superCaseInstanceId;

  /// The id of the parent case instance, if it exists.
  String? caseInstanceId;

  /// The name of the process definition that this process instance belongs to.
  String? processDefinitionName;

  /// The key of the process definition that this process instance belongs to.
  String? processDefinitionKey;

  /// The version of the process definition that this process instance belongs to.
  int? processDefinitionVersion;

  /// The id of the process definition that this process instance belongs to.
  String? processDefinitionId;

  /// The business key of the process instance.
  String? businessKey;

  /// The time the instance was started. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? startTime;

  /// The time the instance ended. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? endTime;

  /// The time after which the instance should be removed by the History Cleanup job. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? removalTime;

  /// The time the instance took to finish (in milliseconds).
  int? durationInMillis;

  /// The id of the user who started the process instance.
  String? startUserId;

  /// The id of the initial activity that was executed (e.g., a start event).
  String? startActivityId;

  /// The provided delete reason in case the process instance was canceled during execution.
  String? deleteReason;

  /// The tenant id of the process instance.
  String? tenantId;

  /// Last state of the process instance, possible values are:  `ACTIVE` - running process instance  `SUSPENDED` - suspended process instances  `COMPLETED` - completed through normal end event  `EXTERNALLY_TERMINATED` - terminated externally, for instance through REST API  `INTERNALLY_TERMINATED` - terminated internally, for instance by terminating boundary event
  HistoricProcessInstanceDtoStateEnum? state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricProcessInstanceDto &&
    other.id == id &&
    other.rootProcessInstanceId == rootProcessInstanceId &&
    other.superProcessInstanceId == superProcessInstanceId &&
    other.superCaseInstanceId == superCaseInstanceId &&
    other.caseInstanceId == caseInstanceId &&
    other.processDefinitionName == processDefinitionName &&
    other.processDefinitionKey == processDefinitionKey &&
    other.processDefinitionVersion == processDefinitionVersion &&
    other.processDefinitionId == processDefinitionId &&
    other.businessKey == businessKey &&
    other.startTime == startTime &&
    other.endTime == endTime &&
    other.removalTime == removalTime &&
    other.durationInMillis == durationInMillis &&
    other.startUserId == startUserId &&
    other.startActivityId == startActivityId &&
    other.deleteReason == deleteReason &&
    other.tenantId == tenantId &&
    other.state == state;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (rootProcessInstanceId == null ? 0 : rootProcessInstanceId!.hashCode) +
    (superProcessInstanceId == null ? 0 : superProcessInstanceId!.hashCode) +
    (superCaseInstanceId == null ? 0 : superCaseInstanceId!.hashCode) +
    (caseInstanceId == null ? 0 : caseInstanceId!.hashCode) +
    (processDefinitionName == null ? 0 : processDefinitionName!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (processDefinitionVersion == null ? 0 : processDefinitionVersion!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (businessKey == null ? 0 : businessKey!.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode) +
    (endTime == null ? 0 : endTime!.hashCode) +
    (removalTime == null ? 0 : removalTime!.hashCode) +
    (durationInMillis == null ? 0 : durationInMillis!.hashCode) +
    (startUserId == null ? 0 : startUserId!.hashCode) +
    (startActivityId == null ? 0 : startActivityId!.hashCode) +
    (deleteReason == null ? 0 : deleteReason!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (state == null ? 0 : state!.hashCode);

  @override
  String toString() => 'HistoricProcessInstanceDto[id=$id, rootProcessInstanceId=$rootProcessInstanceId, superProcessInstanceId=$superProcessInstanceId, superCaseInstanceId=$superCaseInstanceId, caseInstanceId=$caseInstanceId, processDefinitionName=$processDefinitionName, processDefinitionKey=$processDefinitionKey, processDefinitionVersion=$processDefinitionVersion, processDefinitionId=$processDefinitionId, businessKey=$businessKey, startTime=$startTime, endTime=$endTime, removalTime=$removalTime, durationInMillis=$durationInMillis, startUserId=$startUserId, startActivityId=$startActivityId, deleteReason=$deleteReason, tenantId=$tenantId, state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.rootProcessInstanceId != null) {
      json[r'rootProcessInstanceId'] = this.rootProcessInstanceId;
    } else {
      json[r'rootProcessInstanceId'] = null;
    }
    if (this.superProcessInstanceId != null) {
      json[r'superProcessInstanceId'] = this.superProcessInstanceId;
    } else {
      json[r'superProcessInstanceId'] = null;
    }
    if (this.superCaseInstanceId != null) {
      json[r'superCaseInstanceId'] = this.superCaseInstanceId;
    } else {
      json[r'superCaseInstanceId'] = null;
    }
    if (this.caseInstanceId != null) {
      json[r'caseInstanceId'] = this.caseInstanceId;
    } else {
      json[r'caseInstanceId'] = null;
    }
    if (this.processDefinitionName != null) {
      json[r'processDefinitionName'] = this.processDefinitionName;
    } else {
      json[r'processDefinitionName'] = null;
    }
    if (this.processDefinitionKey != null) {
      json[r'processDefinitionKey'] = this.processDefinitionKey;
    } else {
      json[r'processDefinitionKey'] = null;
    }
    if (this.processDefinitionVersion != null) {
      json[r'processDefinitionVersion'] = this.processDefinitionVersion;
    } else {
      json[r'processDefinitionVersion'] = null;
    }
    if (this.processDefinitionId != null) {
      json[r'processDefinitionId'] = this.processDefinitionId;
    } else {
      json[r'processDefinitionId'] = null;
    }
    if (this.businessKey != null) {
      json[r'businessKey'] = this.businessKey;
    } else {
      json[r'businessKey'] = null;
    }
    if (this.startTime != null) {
      json[r'startTime'] = this.startTime!.toUtc().toIso8601String();
    } else {
      json[r'startTime'] = null;
    }
    if (this.endTime != null) {
      json[r'endTime'] = this.endTime!.toUtc().toIso8601String();
    } else {
      json[r'endTime'] = null;
    }
    if (this.removalTime != null) {
      json[r'removalTime'] = this.removalTime!.toUtc().toIso8601String();
    } else {
      json[r'removalTime'] = null;
    }
    if (this.durationInMillis != null) {
      json[r'durationInMillis'] = this.durationInMillis;
    } else {
      json[r'durationInMillis'] = null;
    }
    if (this.startUserId != null) {
      json[r'startUserId'] = this.startUserId;
    } else {
      json[r'startUserId'] = null;
    }
    if (this.startActivityId != null) {
      json[r'startActivityId'] = this.startActivityId;
    } else {
      json[r'startActivityId'] = null;
    }
    if (this.deleteReason != null) {
      json[r'deleteReason'] = this.deleteReason;
    } else {
      json[r'deleteReason'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    return json;
  }

  /// Returns a new [HistoricProcessInstanceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricProcessInstanceDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricProcessInstanceDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricProcessInstanceDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricProcessInstanceDto(
        id: mapValueOfType<String>(json, r'id'),
        rootProcessInstanceId: mapValueOfType<String>(json, r'rootProcessInstanceId'),
        superProcessInstanceId: mapValueOfType<String>(json, r'superProcessInstanceId'),
        superCaseInstanceId: mapValueOfType<String>(json, r'superCaseInstanceId'),
        caseInstanceId: mapValueOfType<String>(json, r'caseInstanceId'),
        processDefinitionName: mapValueOfType<String>(json, r'processDefinitionName'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        processDefinitionVersion: mapValueOfType<int>(json, r'processDefinitionVersion'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        businessKey: mapValueOfType<String>(json, r'businessKey'),
        startTime: mapDateTime(json, r'startTime', r''),
        endTime: mapDateTime(json, r'endTime', r''),
        removalTime: mapDateTime(json, r'removalTime', r''),
        durationInMillis: mapValueOfType<int>(json, r'durationInMillis'),
        startUserId: mapValueOfType<String>(json, r'startUserId'),
        startActivityId: mapValueOfType<String>(json, r'startActivityId'),
        deleteReason: mapValueOfType<String>(json, r'deleteReason'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        state: HistoricProcessInstanceDtoStateEnum.fromJson(json[r'state']),
      );
    }
    return null;
  }

  static List<HistoricProcessInstanceDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricProcessInstanceDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricProcessInstanceDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricProcessInstanceDto> mapFromJson(dynamic json) {
    final map = <String, HistoricProcessInstanceDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricProcessInstanceDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricProcessInstanceDto-objects as value to a dart map
  static Map<String, List<HistoricProcessInstanceDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricProcessInstanceDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricProcessInstanceDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Last state of the process instance, possible values are:  `ACTIVE` - running process instance  `SUSPENDED` - suspended process instances  `COMPLETED` - completed through normal end event  `EXTERNALLY_TERMINATED` - terminated externally, for instance through REST API  `INTERNALLY_TERMINATED` - terminated internally, for instance by terminating boundary event
class HistoricProcessInstanceDtoStateEnum {
  /// Instantiate a new enum with the provided [value].
  const HistoricProcessInstanceDtoStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACTIVE = HistoricProcessInstanceDtoStateEnum._(r'ACTIVE');
  static const SUSPENDED = HistoricProcessInstanceDtoStateEnum._(r'SUSPENDED');
  static const COMPLETED = HistoricProcessInstanceDtoStateEnum._(r'COMPLETED');
  static const EXTERNALLY_TERMINATED = HistoricProcessInstanceDtoStateEnum._(r'EXTERNALLY_TERMINATED');
  static const INTERNALLY_TERMINATED = HistoricProcessInstanceDtoStateEnum._(r'INTERNALLY_TERMINATED');

  /// List of all possible values in this [enum][HistoricProcessInstanceDtoStateEnum].
  static const values = <HistoricProcessInstanceDtoStateEnum>[
    ACTIVE,
    SUSPENDED,
    COMPLETED,
    EXTERNALLY_TERMINATED,
    INTERNALLY_TERMINATED,
  ];

  static HistoricProcessInstanceDtoStateEnum? fromJson(dynamic value) => HistoricProcessInstanceDtoStateEnumTypeTransformer().decode(value);

  static List<HistoricProcessInstanceDtoStateEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricProcessInstanceDtoStateEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricProcessInstanceDtoStateEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HistoricProcessInstanceDtoStateEnum] to String,
/// and [decode] dynamic data back to [HistoricProcessInstanceDtoStateEnum].
class HistoricProcessInstanceDtoStateEnumTypeTransformer {
  factory HistoricProcessInstanceDtoStateEnumTypeTransformer() => _instance ??= const HistoricProcessInstanceDtoStateEnumTypeTransformer._();

  const HistoricProcessInstanceDtoStateEnumTypeTransformer._();

  String encode(HistoricProcessInstanceDtoStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HistoricProcessInstanceDtoStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HistoricProcessInstanceDtoStateEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ACTIVE': return HistoricProcessInstanceDtoStateEnum.ACTIVE;
        case r'SUSPENDED': return HistoricProcessInstanceDtoStateEnum.SUSPENDED;
        case r'COMPLETED': return HistoricProcessInstanceDtoStateEnum.COMPLETED;
        case r'EXTERNALLY_TERMINATED': return HistoricProcessInstanceDtoStateEnum.EXTERNALLY_TERMINATED;
        case r'INTERNALLY_TERMINATED': return HistoricProcessInstanceDtoStateEnum.INTERNALLY_TERMINATED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HistoricProcessInstanceDtoStateEnumTypeTransformer] instance.
  static HistoricProcessInstanceDtoStateEnumTypeTransformer? _instance;
}


