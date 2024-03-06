//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricDetailQueryDto {
  /// Returns a new [HistoricDetailQueryDto] instance.
  HistoricDetailQueryDto({
    this.processInstanceId,
    this.processInstanceIdIn = const [],
    this.executionId,
    this.taskId,
    this.activityInstanceId,
    this.caseInstanceId,
    this.caseExecutionId,
    this.variableInstanceId,
    this.variableTypeIn = const [],
    this.tenantIdIn = const [],
    this.withoutTenantId,
    this.userOperationId,
    this.formFields,
    this.variableUpdates,
    this.excludeTaskDetails,
    this.initial,
    this.occurredBefore,
    this.occurredAfter,
    this.sorting = const [],
  });

  /// Filter by process instance id.
  String? processInstanceId;

  /// Only include historic details which belong to one of the passed  process instance ids.
  List<String>? processInstanceIdIn;

  /// Filter by execution id.
  String? executionId;

  /// Filter by task id.
  String? taskId;

  /// Filter by activity instance id.
  String? activityInstanceId;

  /// Filter by case instance id.
  String? caseInstanceId;

  /// Filter by case execution id.
  String? caseExecutionId;

  /// Filter by variable instance id.
  String? variableInstanceId;

  /// Only include historic details where the variable updates belong to one of the passed  list of variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type `serializable`.
  List<String>? variableTypeIn;

  /// Filter by a  list of tenant ids.
  List<String>? tenantIdIn;

  /// Only include historic details that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  bool? withoutTenantId;

  /// Filter by a user operation id.
  String? userOperationId;

  /// Only include `HistoricFormFields`. Value may only be `true`, as `false` is the default behavior.
  bool? formFields;

  /// Only include `HistoricVariableUpdates`. Value may only be `true`, as `false` is the default behavior.
  bool? variableUpdates;

  /// Excludes all task-related `HistoricDetails`, so only items which have no task id set will be selected. When this parameter is used together with `taskId`, this call is ignored and task details are not excluded. Value may only be `true`, as `false` is the default behavior.
  bool? excludeTaskDetails;

  /// Restrict to historic variable updates that contain only initial variable values. Value may only be `true`, as `false` is the default behavior.
  bool? initial;

  /// Restrict to historic details that occured before the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
  DateTime? occurredBefore;

  /// Restrict to historic details that occured after the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
  DateTime? occurredAfter;

  /// A JSON array of criteria to sort the result by. Each element of the array is                     a JSON object that specifies one ordering. The position in the array                     identifies the rank of an ordering, i.e., whether it is primary, secondary,                     etc. Does not have an effect for the `count` endpoint.
  List<HistoricDetailQueryDtoSortingInner>? sorting;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricDetailQueryDto &&
    other.processInstanceId == processInstanceId &&
    _deepEquality.equals(other.processInstanceIdIn, processInstanceIdIn) &&
    other.executionId == executionId &&
    other.taskId == taskId &&
    other.activityInstanceId == activityInstanceId &&
    other.caseInstanceId == caseInstanceId &&
    other.caseExecutionId == caseExecutionId &&
    other.variableInstanceId == variableInstanceId &&
    _deepEquality.equals(other.variableTypeIn, variableTypeIn) &&
    _deepEquality.equals(other.tenantIdIn, tenantIdIn) &&
    other.withoutTenantId == withoutTenantId &&
    other.userOperationId == userOperationId &&
    other.formFields == formFields &&
    other.variableUpdates == variableUpdates &&
    other.excludeTaskDetails == excludeTaskDetails &&
    other.initial == initial &&
    other.occurredBefore == occurredBefore &&
    other.occurredAfter == occurredAfter &&
    _deepEquality.equals(other.sorting, sorting);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (processInstanceIdIn == null ? 0 : processInstanceIdIn!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (taskId == null ? 0 : taskId!.hashCode) +
    (activityInstanceId == null ? 0 : activityInstanceId!.hashCode) +
    (caseInstanceId == null ? 0 : caseInstanceId!.hashCode) +
    (caseExecutionId == null ? 0 : caseExecutionId!.hashCode) +
    (variableInstanceId == null ? 0 : variableInstanceId!.hashCode) +
    (variableTypeIn == null ? 0 : variableTypeIn!.hashCode) +
    (tenantIdIn == null ? 0 : tenantIdIn!.hashCode) +
    (withoutTenantId == null ? 0 : withoutTenantId!.hashCode) +
    (userOperationId == null ? 0 : userOperationId!.hashCode) +
    (formFields == null ? 0 : formFields!.hashCode) +
    (variableUpdates == null ? 0 : variableUpdates!.hashCode) +
    (excludeTaskDetails == null ? 0 : excludeTaskDetails!.hashCode) +
    (initial == null ? 0 : initial!.hashCode) +
    (occurredBefore == null ? 0 : occurredBefore!.hashCode) +
    (occurredAfter == null ? 0 : occurredAfter!.hashCode) +
    (sorting == null ? 0 : sorting!.hashCode);

  @override
  String toString() => 'HistoricDetailQueryDto[processInstanceId=$processInstanceId, processInstanceIdIn=$processInstanceIdIn, executionId=$executionId, taskId=$taskId, activityInstanceId=$activityInstanceId, caseInstanceId=$caseInstanceId, caseExecutionId=$caseExecutionId, variableInstanceId=$variableInstanceId, variableTypeIn=$variableTypeIn, tenantIdIn=$tenantIdIn, withoutTenantId=$withoutTenantId, userOperationId=$userOperationId, formFields=$formFields, variableUpdates=$variableUpdates, excludeTaskDetails=$excludeTaskDetails, initial=$initial, occurredBefore=$occurredBefore, occurredAfter=$occurredAfter, sorting=$sorting]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.executionId != null) {
      json[r'executionId'] = this.executionId;
    } else {
      json[r'executionId'] = null;
    }
    if (this.taskId != null) {
      json[r'taskId'] = this.taskId;
    } else {
      json[r'taskId'] = null;
    }
    if (this.activityInstanceId != null) {
      json[r'activityInstanceId'] = this.activityInstanceId;
    } else {
      json[r'activityInstanceId'] = null;
    }
    if (this.caseInstanceId != null) {
      json[r'caseInstanceId'] = this.caseInstanceId;
    } else {
      json[r'caseInstanceId'] = null;
    }
    if (this.caseExecutionId != null) {
      json[r'caseExecutionId'] = this.caseExecutionId;
    } else {
      json[r'caseExecutionId'] = null;
    }
    if (this.variableInstanceId != null) {
      json[r'variableInstanceId'] = this.variableInstanceId;
    } else {
      json[r'variableInstanceId'] = null;
    }
    if (this.variableTypeIn != null) {
      json[r'variableTypeIn'] = this.variableTypeIn;
    } else {
      json[r'variableTypeIn'] = null;
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
    if (this.userOperationId != null) {
      json[r'userOperationId'] = this.userOperationId;
    } else {
      json[r'userOperationId'] = null;
    }
    if (this.formFields != null) {
      json[r'formFields'] = this.formFields;
    } else {
      json[r'formFields'] = null;
    }
    if (this.variableUpdates != null) {
      json[r'variableUpdates'] = this.variableUpdates;
    } else {
      json[r'variableUpdates'] = null;
    }
    if (this.excludeTaskDetails != null) {
      json[r'excludeTaskDetails'] = this.excludeTaskDetails;
    } else {
      json[r'excludeTaskDetails'] = null;
    }
    if (this.initial != null) {
      json[r'initial'] = this.initial;
    } else {
      json[r'initial'] = null;
    }
    if (this.occurredBefore != null) {
      json[r'occurredBefore'] = this.occurredBefore!.toUtc().toIso8601String();
    } else {
      json[r'occurredBefore'] = null;
    }
    if (this.occurredAfter != null) {
      json[r'occurredAfter'] = this.occurredAfter!.toUtc().toIso8601String();
    } else {
      json[r'occurredAfter'] = null;
    }
    if (this.sorting != null) {
      json[r'sorting'] = this.sorting;
    } else {
      json[r'sorting'] = null;
    }
    return json;
  }

  /// Returns a new [HistoricDetailQueryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricDetailQueryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricDetailQueryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricDetailQueryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricDetailQueryDto(
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        processInstanceIdIn: json[r'processInstanceIdIn'] is Iterable
            ? (json[r'processInstanceIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        executionId: mapValueOfType<String>(json, r'executionId'),
        taskId: mapValueOfType<String>(json, r'taskId'),
        activityInstanceId: mapValueOfType<String>(json, r'activityInstanceId'),
        caseInstanceId: mapValueOfType<String>(json, r'caseInstanceId'),
        caseExecutionId: mapValueOfType<String>(json, r'caseExecutionId'),
        variableInstanceId: mapValueOfType<String>(json, r'variableInstanceId'),
        variableTypeIn: json[r'variableTypeIn'] is Iterable
            ? (json[r'variableTypeIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tenantIdIn: json[r'tenantIdIn'] is Iterable
            ? (json[r'tenantIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        withoutTenantId: mapValueOfType<bool>(json, r'withoutTenantId'),
        userOperationId: mapValueOfType<String>(json, r'userOperationId'),
        formFields: mapValueOfType<bool>(json, r'formFields'),
        variableUpdates: mapValueOfType<bool>(json, r'variableUpdates'),
        excludeTaskDetails: mapValueOfType<bool>(json, r'excludeTaskDetails'),
        initial: mapValueOfType<bool>(json, r'initial'),
        occurredBefore: mapDateTime(json, r'occurredBefore', r''),
        occurredAfter: mapDateTime(json, r'occurredAfter', r''),
        sorting: HistoricDetailQueryDtoSortingInner.listFromJson(json[r'sorting']),
      );
    }
    return null;
  }

  static List<HistoricDetailQueryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricDetailQueryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricDetailQueryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricDetailQueryDto> mapFromJson(dynamic json) {
    final map = <String, HistoricDetailQueryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricDetailQueryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricDetailQueryDto-objects as value to a dart map
  static Map<String, List<HistoricDetailQueryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricDetailQueryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricDetailQueryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

