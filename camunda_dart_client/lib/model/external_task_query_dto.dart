//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExternalTaskQueryDto {
  /// Returns a new [ExternalTaskQueryDto] instance.
  ExternalTaskQueryDto({
    this.externalTaskId,
    this.externalTaskIdIn = const [],
    this.topicName,
    this.workerId,
    this.locked,
    this.notLocked,
    this.withRetriesLeft,
    this.noRetriesLeft,
    this.lockExpirationAfter,
    this.lockExpirationBefore,
    this.activityId,
    this.activityIdIn = const [],
    this.executionId,
    this.processInstanceId,
    this.processInstanceIdIn = const [],
    this.processDefinitionId,
    this.tenantIdIn = const [],
    this.active,
    this.suspended,
    this.priorityHigherThanOrEquals,
    this.priorityLowerThanOrEquals,
    this.sorting = const [],
  });

  /// Filter by an external task's id.
  String? externalTaskId;

  /// Filter by the comma-separated list of external task ids.
  List<String>? externalTaskIdIn;

  /// Filter by an external task topic.
  String? topicName;

  /// Filter by the id of the worker that the task was most recently locked by.
  String? workerId;

  /// Only include external tasks that are currently locked (i.e., they have a lock time and it has not expired). Value may only be `true`, as `false` matches any external task.
  bool? locked;

  /// Only include external tasks that are currently not locked (i.e., they have no lock or it has expired). Value may only be `true`, as `false` matches any external task.
  bool? notLocked;

  /// Only include external tasks that have a positive (&gt; 0) number of retries (or `null`). Value may only be `true`, as `false` matches any external task.
  bool? withRetriesLeft;

  /// Only include external tasks that have 0 retries. Value may only be `true`, as `false` matches any external task.
  bool? noRetriesLeft;

  /// Restrict to external tasks that have a lock that expires after a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? lockExpirationAfter;

  /// Restrict to external tasks that have a lock that expires before a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? lockExpirationBefore;

  /// Filter by the id of the activity that an external task is created for.
  String? activityId;

  /// Filter by the comma-separated list of ids of the activities that an external task is created for.
  List<String>? activityIdIn;

  /// Filter by the id of the execution that an external task belongs to.
  String? executionId;

  /// Filter by the id of the process instance that an external task belongs to.
  String? processInstanceId;

  /// Filter by a comma-separated list of process instance ids that an external task may belong to.
  List<String>? processInstanceIdIn;

  /// Filter by the id of the process definition that an external task belongs to.
  String? processDefinitionId;

  /// Filter by a comma-separated list of tenant ids. An external task must have one of the given tenant ids.
  List<String>? tenantIdIn;

  /// Only include active tasks. Value may only be `true`, as `false` matches any external task.
  bool? active;

  /// Only include suspended tasks. Value may only be `true`, as `false` matches any external task.
  bool? suspended;

  /// Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value.
  int? priorityHigherThanOrEquals;

  /// Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value.
  int? priorityLowerThanOrEquals;

  /// A JSON array of criteria to sort the result by. Each element of the array is a JSON object that                     specifies one ordering. The position in the array identifies the rank of an ordering, i.e., whether                     it is primary, secondary, etc. The ordering objects have the following properties:                      **Note:** The `sorting` properties will not be applied to the External Task count query.
  List<ExternalTaskQueryDtoSortingInner>? sorting;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExternalTaskQueryDto &&
    other.externalTaskId == externalTaskId &&
    _deepEquality.equals(other.externalTaskIdIn, externalTaskIdIn) &&
    other.topicName == topicName &&
    other.workerId == workerId &&
    other.locked == locked &&
    other.notLocked == notLocked &&
    other.withRetriesLeft == withRetriesLeft &&
    other.noRetriesLeft == noRetriesLeft &&
    other.lockExpirationAfter == lockExpirationAfter &&
    other.lockExpirationBefore == lockExpirationBefore &&
    other.activityId == activityId &&
    _deepEquality.equals(other.activityIdIn, activityIdIn) &&
    other.executionId == executionId &&
    other.processInstanceId == processInstanceId &&
    _deepEquality.equals(other.processInstanceIdIn, processInstanceIdIn) &&
    other.processDefinitionId == processDefinitionId &&
    _deepEquality.equals(other.tenantIdIn, tenantIdIn) &&
    other.active == active &&
    other.suspended == suspended &&
    other.priorityHigherThanOrEquals == priorityHigherThanOrEquals &&
    other.priorityLowerThanOrEquals == priorityLowerThanOrEquals &&
    _deepEquality.equals(other.sorting, sorting);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (externalTaskId == null ? 0 : externalTaskId!.hashCode) +
    (externalTaskIdIn == null ? 0 : externalTaskIdIn!.hashCode) +
    (topicName == null ? 0 : topicName!.hashCode) +
    (workerId == null ? 0 : workerId!.hashCode) +
    (locked == null ? 0 : locked!.hashCode) +
    (notLocked == null ? 0 : notLocked!.hashCode) +
    (withRetriesLeft == null ? 0 : withRetriesLeft!.hashCode) +
    (noRetriesLeft == null ? 0 : noRetriesLeft!.hashCode) +
    (lockExpirationAfter == null ? 0 : lockExpirationAfter!.hashCode) +
    (lockExpirationBefore == null ? 0 : lockExpirationBefore!.hashCode) +
    (activityId == null ? 0 : activityId!.hashCode) +
    (activityIdIn == null ? 0 : activityIdIn!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (processInstanceIdIn == null ? 0 : processInstanceIdIn!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (tenantIdIn == null ? 0 : tenantIdIn!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (suspended == null ? 0 : suspended!.hashCode) +
    (priorityHigherThanOrEquals == null ? 0 : priorityHigherThanOrEquals!.hashCode) +
    (priorityLowerThanOrEquals == null ? 0 : priorityLowerThanOrEquals!.hashCode) +
    (sorting == null ? 0 : sorting!.hashCode);

  @override
  String toString() => 'ExternalTaskQueryDto[externalTaskId=$externalTaskId, externalTaskIdIn=$externalTaskIdIn, topicName=$topicName, workerId=$workerId, locked=$locked, notLocked=$notLocked, withRetriesLeft=$withRetriesLeft, noRetriesLeft=$noRetriesLeft, lockExpirationAfter=$lockExpirationAfter, lockExpirationBefore=$lockExpirationBefore, activityId=$activityId, activityIdIn=$activityIdIn, executionId=$executionId, processInstanceId=$processInstanceId, processInstanceIdIn=$processInstanceIdIn, processDefinitionId=$processDefinitionId, tenantIdIn=$tenantIdIn, active=$active, suspended=$suspended, priorityHigherThanOrEquals=$priorityHigherThanOrEquals, priorityLowerThanOrEquals=$priorityLowerThanOrEquals, sorting=$sorting]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.externalTaskId != null) {
      json[r'externalTaskId'] = this.externalTaskId;
    } else {
      json[r'externalTaskId'] = null;
    }
    if (this.externalTaskIdIn != null) {
      json[r'externalTaskIdIn'] = this.externalTaskIdIn;
    } else {
      json[r'externalTaskIdIn'] = null;
    }
    if (this.topicName != null) {
      json[r'topicName'] = this.topicName;
    } else {
      json[r'topicName'] = null;
    }
    if (this.workerId != null) {
      json[r'workerId'] = this.workerId;
    } else {
      json[r'workerId'] = null;
    }
    if (this.locked != null) {
      json[r'locked'] = this.locked;
    } else {
      json[r'locked'] = null;
    }
    if (this.notLocked != null) {
      json[r'notLocked'] = this.notLocked;
    } else {
      json[r'notLocked'] = null;
    }
    if (this.withRetriesLeft != null) {
      json[r'withRetriesLeft'] = this.withRetriesLeft;
    } else {
      json[r'withRetriesLeft'] = null;
    }
    if (this.noRetriesLeft != null) {
      json[r'noRetriesLeft'] = this.noRetriesLeft;
    } else {
      json[r'noRetriesLeft'] = null;
    }
    if (this.lockExpirationAfter != null) {
      json[r'lockExpirationAfter'] = this.lockExpirationAfter!.toUtc().toIso8601String();
    } else {
      json[r'lockExpirationAfter'] = null;
    }
    if (this.lockExpirationBefore != null) {
      json[r'lockExpirationBefore'] = this.lockExpirationBefore!.toUtc().toIso8601String();
    } else {
      json[r'lockExpirationBefore'] = null;
    }
    if (this.activityId != null) {
      json[r'activityId'] = this.activityId;
    } else {
      json[r'activityId'] = null;
    }
    if (this.activityIdIn != null) {
      json[r'activityIdIn'] = this.activityIdIn;
    } else {
      json[r'activityIdIn'] = null;
    }
    if (this.executionId != null) {
      json[r'executionId'] = this.executionId;
    } else {
      json[r'executionId'] = null;
    }
    if (this.processInstanceId != null) {
      json[r'processInstanceId'] = this.processInstanceId;
    } else {
      json[r'processInstanceId'] = null;
    }
    if (this.processInstanceIdIn != null) {
      json[r'processInstanceIdIn'] = this.processInstanceIdIn;
    } else {
      json[r'processInstanceIdIn'] = null;
    }
    if (this.processDefinitionId != null) {
      json[r'processDefinitionId'] = this.processDefinitionId;
    } else {
      json[r'processDefinitionId'] = null;
    }
    if (this.tenantIdIn != null) {
      json[r'tenantIdIn'] = this.tenantIdIn;
    } else {
      json[r'tenantIdIn'] = null;
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
    if (this.priorityHigherThanOrEquals != null) {
      json[r'priorityHigherThanOrEquals'] = this.priorityHigherThanOrEquals;
    } else {
      json[r'priorityHigherThanOrEquals'] = null;
    }
    if (this.priorityLowerThanOrEquals != null) {
      json[r'priorityLowerThanOrEquals'] = this.priorityLowerThanOrEquals;
    } else {
      json[r'priorityLowerThanOrEquals'] = null;
    }
    if (this.sorting != null) {
      json[r'sorting'] = this.sorting;
    } else {
      json[r'sorting'] = null;
    }
    return json;
  }

  /// Returns a new [ExternalTaskQueryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExternalTaskQueryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExternalTaskQueryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExternalTaskQueryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExternalTaskQueryDto(
        externalTaskId: mapValueOfType<String>(json, r'externalTaskId'),
        externalTaskIdIn: json[r'externalTaskIdIn'] is Iterable
            ? (json[r'externalTaskIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        topicName: mapValueOfType<String>(json, r'topicName'),
        workerId: mapValueOfType<String>(json, r'workerId'),
        locked: mapValueOfType<bool>(json, r'locked'),
        notLocked: mapValueOfType<bool>(json, r'notLocked'),
        withRetriesLeft: mapValueOfType<bool>(json, r'withRetriesLeft'),
        noRetriesLeft: mapValueOfType<bool>(json, r'noRetriesLeft'),
        lockExpirationAfter: mapDateTime(json, r'lockExpirationAfter', r''),
        lockExpirationBefore: mapDateTime(json, r'lockExpirationBefore', r''),
        activityId: mapValueOfType<String>(json, r'activityId'),
        activityIdIn: json[r'activityIdIn'] is Iterable
            ? (json[r'activityIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        executionId: mapValueOfType<String>(json, r'executionId'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        processInstanceIdIn: json[r'processInstanceIdIn'] is Iterable
            ? (json[r'processInstanceIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        tenantIdIn: json[r'tenantIdIn'] is Iterable
            ? (json[r'tenantIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        active: mapValueOfType<bool>(json, r'active'),
        suspended: mapValueOfType<bool>(json, r'suspended'),
        priorityHigherThanOrEquals: mapValueOfType<int>(json, r'priorityHigherThanOrEquals'),
        priorityLowerThanOrEquals: mapValueOfType<int>(json, r'priorityLowerThanOrEquals'),
        sorting: ExternalTaskQueryDtoSortingInner.listFromJson(json[r'sorting']),
      );
    }
    return null;
  }

  static List<ExternalTaskQueryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExternalTaskQueryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExternalTaskQueryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExternalTaskQueryDto> mapFromJson(dynamic json) {
    final map = <String, ExternalTaskQueryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExternalTaskQueryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExternalTaskQueryDto-objects as value to a dart map
  static Map<String, List<ExternalTaskQueryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExternalTaskQueryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExternalTaskQueryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

