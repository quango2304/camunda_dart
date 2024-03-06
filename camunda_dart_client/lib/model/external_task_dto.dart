//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExternalTaskDto {
  /// Returns a new [ExternalTaskDto] instance.
  ExternalTaskDto({
    this.activityId,
    this.activityInstanceId,
    this.errorMessage,
    this.executionId,
    this.id,
    this.lockExpirationTime,
    this.processDefinitionId,
    this.processDefinitionKey,
    this.processDefinitionVersionTag,
    this.processInstanceId,
    this.tenantId,
    this.retries,
    this.suspended,
    this.workerId,
    this.topicName,
    this.priority,
    this.businessKey,
  });

  /// The id of the activity that this external task belongs to.
  String? activityId;

  /// The id of the activity instance that the external task belongs to.
  String? activityInstanceId;

  /// The full error message submitted with the latest reported failure executing this task; `null` if no failure was reported previously or if no error message was submitted
  String? errorMessage;

  /// The id of the execution that the external task belongs to.
  String? executionId;

  /// The id of the external task.
  String? id;

  /// The date that the task's most recent lock expires or has expired.
  DateTime? lockExpirationTime;

  /// The id of the process definition the external task is defined in.
  String? processDefinitionId;

  /// The key of the process definition the external task is defined in.
  String? processDefinitionKey;

  /// The version tag of the process definition the external task is defined in.
  String? processDefinitionVersionTag;

  /// The id of the process instance the external task belongs to.
  String? processInstanceId;

  /// The id of the tenant the external task belongs to.
  String? tenantId;

  /// The number of retries the task currently has left.
  int? retries;

  /// A flag indicating whether the external task is suspended or not.
  bool? suspended;

  /// The id of the worker that posesses or posessed the most recent lock.
  String? workerId;

  /// The topic name of the external task.
  String? topicName;

  /// The priority of the external task.
  int? priority;

  /// The business key of the process instance the external task belongs to.
  String? businessKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExternalTaskDto &&
    other.activityId == activityId &&
    other.activityInstanceId == activityInstanceId &&
    other.errorMessage == errorMessage &&
    other.executionId == executionId &&
    other.id == id &&
    other.lockExpirationTime == lockExpirationTime &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    other.processDefinitionVersionTag == processDefinitionVersionTag &&
    other.processInstanceId == processInstanceId &&
    other.tenantId == tenantId &&
    other.retries == retries &&
    other.suspended == suspended &&
    other.workerId == workerId &&
    other.topicName == topicName &&
    other.priority == priority &&
    other.businessKey == businessKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activityId == null ? 0 : activityId!.hashCode) +
    (activityInstanceId == null ? 0 : activityInstanceId!.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (lockExpirationTime == null ? 0 : lockExpirationTime!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (processDefinitionVersionTag == null ? 0 : processDefinitionVersionTag!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (retries == null ? 0 : retries!.hashCode) +
    (suspended == null ? 0 : suspended!.hashCode) +
    (workerId == null ? 0 : workerId!.hashCode) +
    (topicName == null ? 0 : topicName!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (businessKey == null ? 0 : businessKey!.hashCode);

  @override
  String toString() => 'ExternalTaskDto[activityId=$activityId, activityInstanceId=$activityInstanceId, errorMessage=$errorMessage, executionId=$executionId, id=$id, lockExpirationTime=$lockExpirationTime, processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, processDefinitionVersionTag=$processDefinitionVersionTag, processInstanceId=$processInstanceId, tenantId=$tenantId, retries=$retries, suspended=$suspended, workerId=$workerId, topicName=$topicName, priority=$priority, businessKey=$businessKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.activityId != null) {
      json[r'activityId'] = this.activityId;
    } else {
      json[r'activityId'] = null;
    }
    if (this.activityInstanceId != null) {
      json[r'activityInstanceId'] = this.activityInstanceId;
    } else {
      json[r'activityInstanceId'] = null;
    }
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    if (this.executionId != null) {
      json[r'executionId'] = this.executionId;
    } else {
      json[r'executionId'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.lockExpirationTime != null) {
      json[r'lockExpirationTime'] = this.lockExpirationTime!.toUtc().toIso8601String();
    } else {
      json[r'lockExpirationTime'] = null;
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
    if (this.processDefinitionVersionTag != null) {
      json[r'processDefinitionVersionTag'] = this.processDefinitionVersionTag;
    } else {
      json[r'processDefinitionVersionTag'] = null;
    }
    if (this.processInstanceId != null) {
      json[r'processInstanceId'] = this.processInstanceId;
    } else {
      json[r'processInstanceId'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    if (this.retries != null) {
      json[r'retries'] = this.retries;
    } else {
      json[r'retries'] = null;
    }
    if (this.suspended != null) {
      json[r'suspended'] = this.suspended;
    } else {
      json[r'suspended'] = null;
    }
    if (this.workerId != null) {
      json[r'workerId'] = this.workerId;
    } else {
      json[r'workerId'] = null;
    }
    if (this.topicName != null) {
      json[r'topicName'] = this.topicName;
    } else {
      json[r'topicName'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.businessKey != null) {
      json[r'businessKey'] = this.businessKey;
    } else {
      json[r'businessKey'] = null;
    }
    return json;
  }

  /// Returns a new [ExternalTaskDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExternalTaskDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExternalTaskDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExternalTaskDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExternalTaskDto(
        activityId: mapValueOfType<String>(json, r'activityId'),
        activityInstanceId: mapValueOfType<String>(json, r'activityInstanceId'),
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
        executionId: mapValueOfType<String>(json, r'executionId'),
        id: mapValueOfType<String>(json, r'id'),
        lockExpirationTime: mapDateTime(json, r'lockExpirationTime', r''),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        processDefinitionVersionTag: mapValueOfType<String>(json, r'processDefinitionVersionTag'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        retries: mapValueOfType<int>(json, r'retries'),
        suspended: mapValueOfType<bool>(json, r'suspended'),
        workerId: mapValueOfType<String>(json, r'workerId'),
        topicName: mapValueOfType<String>(json, r'topicName'),
        priority: mapValueOfType<int>(json, r'priority'),
        businessKey: mapValueOfType<String>(json, r'businessKey'),
      );
    }
    return null;
  }

  static List<ExternalTaskDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExternalTaskDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExternalTaskDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExternalTaskDto> mapFromJson(dynamic json) {
    final map = <String, ExternalTaskDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExternalTaskDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExternalTaskDto-objects as value to a dart map
  static Map<String, List<ExternalTaskDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExternalTaskDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExternalTaskDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

