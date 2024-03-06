//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricJobLogQueryDto {
  /// Returns a new [HistoricJobLogQueryDto] instance.
  HistoricJobLogQueryDto({
    this.logId,
    this.jobId,
    this.jobExceptionMessage,
    this.jobDefinitionId,
    this.jobDefinitionType,
    this.jobDefinitionConfiguration,
    this.activityIdIn = const [],
    this.failedActivityIdIn = const [],
    this.executionIdIn = const [],
    this.processInstanceId,
    this.processDefinitionId,
    this.processDefinitionKey,
    this.deploymentId,
    this.tenantIdIn = const [],
    this.withoutTenantId,
    this.hostname,
    this.jobPriorityLowerThanOrEquals,
    this.jobPriorityHigherThanOrEquals,
    this.creationLog,
    this.failureLog,
    this.successLog,
    this.deletionLog,
    this.sorting = const [],
  });

  /// Filter by historic job log id.
  String? logId;

  /// Filter by job id.
  String? jobId;

  /// Filter by job exception message.
  String? jobExceptionMessage;

  /// Filter by job definition id.
  String? jobDefinitionId;

  /// Filter by job definition type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job definition types.
  String? jobDefinitionType;

  /// Filter by job definition configuration.
  String? jobDefinitionConfiguration;

  /// Only include historic job logs which belong to one of the passed activity ids.
  List<String>? activityIdIn;

  /// Only include historic job logs which belong to failures of one of the passed activity ids.
  List<String>? failedActivityIdIn;

  /// Only include historic job logs which belong to one of the passed execution ids.
  List<String>? executionIdIn;

  /// Filter by process instance id.
  String? processInstanceId;

  /// Filter by process definition id.
  String? processDefinitionId;

  /// Filter by process definition key.
  String? processDefinitionKey;

  /// Filter by deployment id.
  String? deploymentId;

  /// Only include historic job log entries which belong to one of the passed and comma- separated tenant ids.
  List<String>? tenantIdIn;

  /// Only include historic job log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  bool? withoutTenantId;

  /// Filter by hostname.
  String? hostname;

  /// Only include logs for which the associated job had a priority lower than or equal to the given value. Value must be a valid `long` value.
  int? jobPriorityLowerThanOrEquals;

  /// Only include logs for which the associated job had a priority higher than or equal to the given value. Value must be a valid `long` value.
  int? jobPriorityHigherThanOrEquals;

  /// Only include creation logs. Value may only be `true`, as `false` is the default behavior.
  bool? creationLog;

  /// Only include failure logs. Value may only be `true`, as `false` is the default behavior.
  bool? failureLog;

  /// Only include success logs. Value may only be `true`, as `false` is the default behavior.
  bool? successLog;

  /// Only include deletion logs. Value may only be `true`, as `false` is the default behavior.
  bool? deletionLog;

  /// An array of criteria to sort the result by. Each element of the array is                        an object that specifies one ordering. The position in the array                        identifies the rank of an ordering, i.e., whether it is primary, secondary,                        etc. Sorting has no effect for `count` endpoints
  List<HistoricJobLogQueryDtoSortingInner>? sorting;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricJobLogQueryDto &&
    other.logId == logId &&
    other.jobId == jobId &&
    other.jobExceptionMessage == jobExceptionMessage &&
    other.jobDefinitionId == jobDefinitionId &&
    other.jobDefinitionType == jobDefinitionType &&
    other.jobDefinitionConfiguration == jobDefinitionConfiguration &&
    _deepEquality.equals(other.activityIdIn, activityIdIn) &&
    _deepEquality.equals(other.failedActivityIdIn, failedActivityIdIn) &&
    _deepEquality.equals(other.executionIdIn, executionIdIn) &&
    other.processInstanceId == processInstanceId &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    other.deploymentId == deploymentId &&
    _deepEquality.equals(other.tenantIdIn, tenantIdIn) &&
    other.withoutTenantId == withoutTenantId &&
    other.hostname == hostname &&
    other.jobPriorityLowerThanOrEquals == jobPriorityLowerThanOrEquals &&
    other.jobPriorityHigherThanOrEquals == jobPriorityHigherThanOrEquals &&
    other.creationLog == creationLog &&
    other.failureLog == failureLog &&
    other.successLog == successLog &&
    other.deletionLog == deletionLog &&
    _deepEquality.equals(other.sorting, sorting);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (logId == null ? 0 : logId!.hashCode) +
    (jobId == null ? 0 : jobId!.hashCode) +
    (jobExceptionMessage == null ? 0 : jobExceptionMessage!.hashCode) +
    (jobDefinitionId == null ? 0 : jobDefinitionId!.hashCode) +
    (jobDefinitionType == null ? 0 : jobDefinitionType!.hashCode) +
    (jobDefinitionConfiguration == null ? 0 : jobDefinitionConfiguration!.hashCode) +
    (activityIdIn == null ? 0 : activityIdIn!.hashCode) +
    (failedActivityIdIn == null ? 0 : failedActivityIdIn!.hashCode) +
    (executionIdIn == null ? 0 : executionIdIn!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (deploymentId == null ? 0 : deploymentId!.hashCode) +
    (tenantIdIn == null ? 0 : tenantIdIn!.hashCode) +
    (withoutTenantId == null ? 0 : withoutTenantId!.hashCode) +
    (hostname == null ? 0 : hostname!.hashCode) +
    (jobPriorityLowerThanOrEquals == null ? 0 : jobPriorityLowerThanOrEquals!.hashCode) +
    (jobPriorityHigherThanOrEquals == null ? 0 : jobPriorityHigherThanOrEquals!.hashCode) +
    (creationLog == null ? 0 : creationLog!.hashCode) +
    (failureLog == null ? 0 : failureLog!.hashCode) +
    (successLog == null ? 0 : successLog!.hashCode) +
    (deletionLog == null ? 0 : deletionLog!.hashCode) +
    (sorting == null ? 0 : sorting!.hashCode);

  @override
  String toString() => 'HistoricJobLogQueryDto[logId=$logId, jobId=$jobId, jobExceptionMessage=$jobExceptionMessage, jobDefinitionId=$jobDefinitionId, jobDefinitionType=$jobDefinitionType, jobDefinitionConfiguration=$jobDefinitionConfiguration, activityIdIn=$activityIdIn, failedActivityIdIn=$failedActivityIdIn, executionIdIn=$executionIdIn, processInstanceId=$processInstanceId, processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, deploymentId=$deploymentId, tenantIdIn=$tenantIdIn, withoutTenantId=$withoutTenantId, hostname=$hostname, jobPriorityLowerThanOrEquals=$jobPriorityLowerThanOrEquals, jobPriorityHigherThanOrEquals=$jobPriorityHigherThanOrEquals, creationLog=$creationLog, failureLog=$failureLog, successLog=$successLog, deletionLog=$deletionLog, sorting=$sorting]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.logId != null) {
      json[r'logId'] = this.logId;
    } else {
      json[r'logId'] = null;
    }
    if (this.jobId != null) {
      json[r'jobId'] = this.jobId;
    } else {
      json[r'jobId'] = null;
    }
    if (this.jobExceptionMessage != null) {
      json[r'jobExceptionMessage'] = this.jobExceptionMessage;
    } else {
      json[r'jobExceptionMessage'] = null;
    }
    if (this.jobDefinitionId != null) {
      json[r'jobDefinitionId'] = this.jobDefinitionId;
    } else {
      json[r'jobDefinitionId'] = null;
    }
    if (this.jobDefinitionType != null) {
      json[r'jobDefinitionType'] = this.jobDefinitionType;
    } else {
      json[r'jobDefinitionType'] = null;
    }
    if (this.jobDefinitionConfiguration != null) {
      json[r'jobDefinitionConfiguration'] = this.jobDefinitionConfiguration;
    } else {
      json[r'jobDefinitionConfiguration'] = null;
    }
    if (this.activityIdIn != null) {
      json[r'activityIdIn'] = this.activityIdIn;
    } else {
      json[r'activityIdIn'] = null;
    }
    if (this.failedActivityIdIn != null) {
      json[r'failedActivityIdIn'] = this.failedActivityIdIn;
    } else {
      json[r'failedActivityIdIn'] = null;
    }
    if (this.executionIdIn != null) {
      json[r'executionIdIn'] = this.executionIdIn;
    } else {
      json[r'executionIdIn'] = null;
    }
    if (this.processInstanceId != null) {
      json[r'processInstanceId'] = this.processInstanceId;
    } else {
      json[r'processInstanceId'] = null;
    }
    if (this.processDefinitionId != null) {
      json[r'processDefinitionId'] = this.processDefinitionId;
    } else {
      json[r'processDefinitionId'] = null;
    }
    if (this.processDefinitionKey != null) {
      json[r'processDefinitionKey'] = this.processDefinitionKey;
    } else {
      json[r'processDefinitionKey'] = null;
    }
    if (this.deploymentId != null) {
      json[r'deploymentId'] = this.deploymentId;
    } else {
      json[r'deploymentId'] = null;
    }
    if (this.tenantIdIn != null) {
      json[r'tenantIdIn'] = this.tenantIdIn;
    } else {
      json[r'tenantIdIn'] = null;
    }
    if (this.withoutTenantId != null) {
      json[r'withoutTenantId'] = this.withoutTenantId;
    } else {
      json[r'withoutTenantId'] = null;
    }
    if (this.hostname != null) {
      json[r'hostname'] = this.hostname;
    } else {
      json[r'hostname'] = null;
    }
    if (this.jobPriorityLowerThanOrEquals != null) {
      json[r'jobPriorityLowerThanOrEquals'] = this.jobPriorityLowerThanOrEquals;
    } else {
      json[r'jobPriorityLowerThanOrEquals'] = null;
    }
    if (this.jobPriorityHigherThanOrEquals != null) {
      json[r'jobPriorityHigherThanOrEquals'] = this.jobPriorityHigherThanOrEquals;
    } else {
      json[r'jobPriorityHigherThanOrEquals'] = null;
    }
    if (this.creationLog != null) {
      json[r'creationLog'] = this.creationLog;
    } else {
      json[r'creationLog'] = null;
    }
    if (this.failureLog != null) {
      json[r'failureLog'] = this.failureLog;
    } else {
      json[r'failureLog'] = null;
    }
    if (this.successLog != null) {
      json[r'successLog'] = this.successLog;
    } else {
      json[r'successLog'] = null;
    }
    if (this.deletionLog != null) {
      json[r'deletionLog'] = this.deletionLog;
    } else {
      json[r'deletionLog'] = null;
    }
    if (this.sorting != null) {
      json[r'sorting'] = this.sorting;
    } else {
      json[r'sorting'] = null;
    }
    return json;
  }

  /// Returns a new [HistoricJobLogQueryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricJobLogQueryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricJobLogQueryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricJobLogQueryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricJobLogQueryDto(
        logId: mapValueOfType<String>(json, r'logId'),
        jobId: mapValueOfType<String>(json, r'jobId'),
        jobExceptionMessage: mapValueOfType<String>(json, r'jobExceptionMessage'),
        jobDefinitionId: mapValueOfType<String>(json, r'jobDefinitionId'),
        jobDefinitionType: mapValueOfType<String>(json, r'jobDefinitionType'),
        jobDefinitionConfiguration: mapValueOfType<String>(json, r'jobDefinitionConfiguration'),
        activityIdIn: json[r'activityIdIn'] is Iterable
            ? (json[r'activityIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        failedActivityIdIn: json[r'failedActivityIdIn'] is Iterable
            ? (json[r'failedActivityIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        executionIdIn: json[r'executionIdIn'] is Iterable
            ? (json[r'executionIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        deploymentId: mapValueOfType<String>(json, r'deploymentId'),
        tenantIdIn: json[r'tenantIdIn'] is Iterable
            ? (json[r'tenantIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        withoutTenantId: mapValueOfType<bool>(json, r'withoutTenantId'),
        hostname: mapValueOfType<String>(json, r'hostname'),
        jobPriorityLowerThanOrEquals: mapValueOfType<int>(json, r'jobPriorityLowerThanOrEquals'),
        jobPriorityHigherThanOrEquals: mapValueOfType<int>(json, r'jobPriorityHigherThanOrEquals'),
        creationLog: mapValueOfType<bool>(json, r'creationLog'),
        failureLog: mapValueOfType<bool>(json, r'failureLog'),
        successLog: mapValueOfType<bool>(json, r'successLog'),
        deletionLog: mapValueOfType<bool>(json, r'deletionLog'),
        sorting: HistoricJobLogQueryDtoSortingInner.listFromJson(json[r'sorting']),
      );
    }
    return null;
  }

  static List<HistoricJobLogQueryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricJobLogQueryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricJobLogQueryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricJobLogQueryDto> mapFromJson(dynamic json) {
    final map = <String, HistoricJobLogQueryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricJobLogQueryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricJobLogQueryDto-objects as value to a dart map
  static Map<String, List<HistoricJobLogQueryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricJobLogQueryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricJobLogQueryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

