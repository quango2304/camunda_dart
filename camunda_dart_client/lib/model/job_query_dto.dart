//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JobQueryDto {
  /// Returns a new [JobQueryDto] instance.
  JobQueryDto({
    this.jobId,
    this.jobIds = const [],
    this.jobDefinitionId,
    this.processInstanceId,
    this.processInstanceIds = const [],
    this.executionId,
    this.processDefinitionId,
    this.processDefinitionKey,
    this.activityId,
    this.withRetriesLeft,
    this.executable,
    this.timers,
    this.messages,
    this.dueDates = const [],
    this.createTimes = const [],
    this.withException,
    this.exceptionMessage,
    this.failedActivityId,
    this.noRetriesLeft,
    this.active,
    this.suspended,
    this.priorityLowerThanOrEquals,
    this.priorityHigherThanOrEquals,
    this.tenantIdIn = const [],
    this.withoutTenantId,
    this.includeJobsWithoutTenantId,
    this.sorting = const [],
  });

  /// Filter by job id.
  String? jobId;

  /// Filter by a  list of job ids.
  List<String>? jobIds;

  /// Only select jobs which exist for the given job definition.
  String? jobDefinitionId;

  /// Only select jobs which exist for the given process instance.
  String? processInstanceId;

  /// Only select jobs which exist for the given  list of process instance ids.
  List<String>? processInstanceIds;

  /// Only select jobs which exist for the given execution.
  String? executionId;

  /// Filter by the id of the process definition the jobs run on.
  String? processDefinitionId;

  /// Filter by the key of the process definition the jobs run on.
  String? processDefinitionKey;

  /// Only select jobs which exist for an activity with the given id.
  String? activityId;

  /// Only select jobs which have retries left. Value may only be `true`, as `false` is the default behavior.
  bool? withRetriesLeft;

  /// Only select jobs which are executable, i.e., retries > 0 and due date is `null` or due date is in the past. Value may only be `true`, as `false` is the default behavior.
  bool? executable;

  /// Only select jobs that are timers. Cannot be used together with `messages`. Value may only be `true`, as `false` is the default behavior.
  bool? timers;

  /// Only select jobs that are messages. Cannot be used together with `timers`. Value may only be `true`, as `false` is the default behavior.
  bool? messages;

  /// Only select jobs where the due date is lower or higher than the given date. 
  List<JobConditionQueryParameterDto>? dueDates;

  /// Only select jobs created before or after the given date. 
  List<JobConditionQueryParameterDto>? createTimes;

  /// Only select jobs that failed due to an exception. Value may only be `true`, as `false` is the default behavior.
  bool? withException;

  /// Only select jobs that failed due to an exception with the given message.
  String? exceptionMessage;

  /// Only select jobs that failed due to an exception at an activity with the given id.
  String? failedActivityId;

  /// Only select jobs which have no retries left. Value may only be `true`, as `false` is the default behavior.
  bool? noRetriesLeft;

  /// Only include active jobs. Value may only be `true`, as `false` is the default behavior.
  bool? active;

  /// Only include suspended jobs. Value may only be `true`, as `false` is the default behavior.
  bool? suspended;

  /// Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value.
  int? priorityLowerThanOrEquals;

  /// Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value.
  int? priorityHigherThanOrEquals;

  /// Only include jobs which belong to one of the passed  tenant ids.
  List<String>? tenantIdIn;

  /// Only include jobs which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  bool? withoutTenantId;

  /// Include jobs which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  bool? includeJobsWithoutTenantId;

  /// An array of criteria to sort the result by. Each element of the array is                        an object that specifies one ordering. The position in the array                        identifies the rank of an ordering, i.e., whether it is primary, secondary,                        etc. Does not have an effect for the `count` endpoint.
  List<JobQueryDtoSortingInner>? sorting;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobQueryDto &&
    other.jobId == jobId &&
    _deepEquality.equals(other.jobIds, jobIds) &&
    other.jobDefinitionId == jobDefinitionId &&
    other.processInstanceId == processInstanceId &&
    _deepEquality.equals(other.processInstanceIds, processInstanceIds) &&
    other.executionId == executionId &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    other.activityId == activityId &&
    other.withRetriesLeft == withRetriesLeft &&
    other.executable == executable &&
    other.timers == timers &&
    other.messages == messages &&
    _deepEquality.equals(other.dueDates, dueDates) &&
    _deepEquality.equals(other.createTimes, createTimes) &&
    other.withException == withException &&
    other.exceptionMessage == exceptionMessage &&
    other.failedActivityId == failedActivityId &&
    other.noRetriesLeft == noRetriesLeft &&
    other.active == active &&
    other.suspended == suspended &&
    other.priorityLowerThanOrEquals == priorityLowerThanOrEquals &&
    other.priorityHigherThanOrEquals == priorityHigherThanOrEquals &&
    _deepEquality.equals(other.tenantIdIn, tenantIdIn) &&
    other.withoutTenantId == withoutTenantId &&
    other.includeJobsWithoutTenantId == includeJobsWithoutTenantId &&
    _deepEquality.equals(other.sorting, sorting);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (jobId == null ? 0 : jobId!.hashCode) +
    (jobIds == null ? 0 : jobIds!.hashCode) +
    (jobDefinitionId == null ? 0 : jobDefinitionId!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (processInstanceIds == null ? 0 : processInstanceIds!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (activityId == null ? 0 : activityId!.hashCode) +
    (withRetriesLeft == null ? 0 : withRetriesLeft!.hashCode) +
    (executable == null ? 0 : executable!.hashCode) +
    (timers == null ? 0 : timers!.hashCode) +
    (messages == null ? 0 : messages!.hashCode) +
    (dueDates == null ? 0 : dueDates!.hashCode) +
    (createTimes == null ? 0 : createTimes!.hashCode) +
    (withException == null ? 0 : withException!.hashCode) +
    (exceptionMessage == null ? 0 : exceptionMessage!.hashCode) +
    (failedActivityId == null ? 0 : failedActivityId!.hashCode) +
    (noRetriesLeft == null ? 0 : noRetriesLeft!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (suspended == null ? 0 : suspended!.hashCode) +
    (priorityLowerThanOrEquals == null ? 0 : priorityLowerThanOrEquals!.hashCode) +
    (priorityHigherThanOrEquals == null ? 0 : priorityHigherThanOrEquals!.hashCode) +
    (tenantIdIn == null ? 0 : tenantIdIn!.hashCode) +
    (withoutTenantId == null ? 0 : withoutTenantId!.hashCode) +
    (includeJobsWithoutTenantId == null ? 0 : includeJobsWithoutTenantId!.hashCode) +
    (sorting == null ? 0 : sorting!.hashCode);

  @override
  String toString() => 'JobQueryDto[jobId=$jobId, jobIds=$jobIds, jobDefinitionId=$jobDefinitionId, processInstanceId=$processInstanceId, processInstanceIds=$processInstanceIds, executionId=$executionId, processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, activityId=$activityId, withRetriesLeft=$withRetriesLeft, executable=$executable, timers=$timers, messages=$messages, dueDates=$dueDates, createTimes=$createTimes, withException=$withException, exceptionMessage=$exceptionMessage, failedActivityId=$failedActivityId, noRetriesLeft=$noRetriesLeft, active=$active, suspended=$suspended, priorityLowerThanOrEquals=$priorityLowerThanOrEquals, priorityHigherThanOrEquals=$priorityHigherThanOrEquals, tenantIdIn=$tenantIdIn, withoutTenantId=$withoutTenantId, includeJobsWithoutTenantId=$includeJobsWithoutTenantId, sorting=$sorting]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.jobId != null) {
      json[r'jobId'] = this.jobId;
    } else {
      json[r'jobId'] = null;
    }
    if (this.jobIds != null) {
      json[r'jobIds'] = this.jobIds;
    } else {
      json[r'jobIds'] = null;
    }
    if (this.jobDefinitionId != null) {
      json[r'jobDefinitionId'] = this.jobDefinitionId;
    } else {
      json[r'jobDefinitionId'] = null;
    }
    if (this.processInstanceId != null) {
      json[r'processInstanceId'] = this.processInstanceId;
    } else {
      json[r'processInstanceId'] = null;
    }
    if (this.processInstanceIds != null) {
      json[r'processInstanceIds'] = this.processInstanceIds;
    } else {
      json[r'processInstanceIds'] = null;
    }
    if (this.executionId != null) {
      json[r'executionId'] = this.executionId;
    } else {
      json[r'executionId'] = null;
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
    if (this.activityId != null) {
      json[r'activityId'] = this.activityId;
    } else {
      json[r'activityId'] = null;
    }
    if (this.withRetriesLeft != null) {
      json[r'withRetriesLeft'] = this.withRetriesLeft;
    } else {
      json[r'withRetriesLeft'] = null;
    }
    if (this.executable != null) {
      json[r'executable'] = this.executable;
    } else {
      json[r'executable'] = null;
    }
    if (this.timers != null) {
      json[r'timers'] = this.timers;
    } else {
      json[r'timers'] = null;
    }
    if (this.messages != null) {
      json[r'messages'] = this.messages;
    } else {
      json[r'messages'] = null;
    }
    if (this.dueDates != null) {
      json[r'dueDates'] = this.dueDates;
    } else {
      json[r'dueDates'] = null;
    }
    if (this.createTimes != null) {
      json[r'createTimes'] = this.createTimes;
    } else {
      json[r'createTimes'] = null;
    }
    if (this.withException != null) {
      json[r'withException'] = this.withException;
    } else {
      json[r'withException'] = null;
    }
    if (this.exceptionMessage != null) {
      json[r'exceptionMessage'] = this.exceptionMessage;
    } else {
      json[r'exceptionMessage'] = null;
    }
    if (this.failedActivityId != null) {
      json[r'failedActivityId'] = this.failedActivityId;
    } else {
      json[r'failedActivityId'] = null;
    }
    if (this.noRetriesLeft != null) {
      json[r'noRetriesLeft'] = this.noRetriesLeft;
    } else {
      json[r'noRetriesLeft'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.suspended != null) {
      json[r'suspended'] = this.suspended;
    } else {
      json[r'suspended'] = null;
    }
    if (this.priorityLowerThanOrEquals != null) {
      json[r'priorityLowerThanOrEquals'] = this.priorityLowerThanOrEquals;
    } else {
      json[r'priorityLowerThanOrEquals'] = null;
    }
    if (this.priorityHigherThanOrEquals != null) {
      json[r'priorityHigherThanOrEquals'] = this.priorityHigherThanOrEquals;
    } else {
      json[r'priorityHigherThanOrEquals'] = null;
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
    if (this.includeJobsWithoutTenantId != null) {
      json[r'includeJobsWithoutTenantId'] = this.includeJobsWithoutTenantId;
    } else {
      json[r'includeJobsWithoutTenantId'] = null;
    }
    if (this.sorting != null) {
      json[r'sorting'] = this.sorting;
    } else {
      json[r'sorting'] = null;
    }
    return json;
  }

  /// Returns a new [JobQueryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobQueryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobQueryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobQueryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobQueryDto(
        jobId: mapValueOfType<String>(json, r'jobId'),
        jobIds: json[r'jobIds'] is Iterable
            ? (json[r'jobIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        jobDefinitionId: mapValueOfType<String>(json, r'jobDefinitionId'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        processInstanceIds: json[r'processInstanceIds'] is Iterable
            ? (json[r'processInstanceIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        executionId: mapValueOfType<String>(json, r'executionId'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        activityId: mapValueOfType<String>(json, r'activityId'),
        withRetriesLeft: mapValueOfType<bool>(json, r'withRetriesLeft'),
        executable: mapValueOfType<bool>(json, r'executable'),
        timers: mapValueOfType<bool>(json, r'timers'),
        messages: mapValueOfType<bool>(json, r'messages'),
        dueDates: JobConditionQueryParameterDto.listFromJson(json[r'dueDates']),
        createTimes: JobConditionQueryParameterDto.listFromJson(json[r'createTimes']),
        withException: mapValueOfType<bool>(json, r'withException'),
        exceptionMessage: mapValueOfType<String>(json, r'exceptionMessage'),
        failedActivityId: mapValueOfType<String>(json, r'failedActivityId'),
        noRetriesLeft: mapValueOfType<bool>(json, r'noRetriesLeft'),
        active: mapValueOfType<bool>(json, r'active'),
        suspended: mapValueOfType<bool>(json, r'suspended'),
        priorityLowerThanOrEquals: mapValueOfType<int>(json, r'priorityLowerThanOrEquals'),
        priorityHigherThanOrEquals: mapValueOfType<int>(json, r'priorityHigherThanOrEquals'),
        tenantIdIn: json[r'tenantIdIn'] is Iterable
            ? (json[r'tenantIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        withoutTenantId: mapValueOfType<bool>(json, r'withoutTenantId'),
        includeJobsWithoutTenantId: mapValueOfType<bool>(json, r'includeJobsWithoutTenantId'),
        sorting: JobQueryDtoSortingInner.listFromJson(json[r'sorting']),
      );
    }
    return null;
  }

  static List<JobQueryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobQueryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobQueryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobQueryDto> mapFromJson(dynamic json) {
    final map = <String, JobQueryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobQueryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobQueryDto-objects as value to a dart map
  static Map<String, List<JobQueryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobQueryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobQueryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

