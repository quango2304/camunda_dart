//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricDecisionInputInstanceDto {
  /// Returns a new [HistoricDecisionInputInstanceDto] instance.
  HistoricDecisionInputInstanceDto({
    this.id,
    this.decisionInstanceId,
    this.clauseId,
    this.clauseName,
    this.errorMessage,
    this.type,
    this.createTime,
    this.removalTime,
    this.rootProcessInstanceId,
    this.value,
    this.valueInfo = const {},
  });

  /// The id of the decision input value.
  String? id;

  /// The id of the decision instance the input value belongs to.
  String? decisionInstanceId;

  /// The id of the clause the input value belongs to.
  String? clauseId;

  /// The name of the clause the input value belongs to.
  String? clauseName;

  /// An error message in case a Java Serialized Object could not be de-serialized.
  String? errorMessage;

  /// The value type of the variable.
  String? type;

  /// The time the variable was inserted.  [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? createTime;

  /// The time after which the entry should be removed by the History Cleanup job. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? removalTime;

  /// The process instance id of the root process instance that initiated the process containing this entry.
  String? rootProcessInstanceId;

  /// The variable's value. Value differs depending on the variable's type and on the `disableCustomObjectDeserialization` parameter.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? value;

  /// A JSON object containing additional, value-type-dependent properties.  For variables of type `Object`, the following properties are returned:  * `objectTypeName`: A string representation of the object's type name.  * `serializationDataFormat`: The serialization format used to store the variable.
  Map<String, Object> valueInfo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricDecisionInputInstanceDto &&
    other.id == id &&
    other.decisionInstanceId == decisionInstanceId &&
    other.clauseId == clauseId &&
    other.clauseName == clauseName &&
    other.errorMessage == errorMessage &&
    other.type == type &&
    other.createTime == createTime &&
    other.removalTime == removalTime &&
    other.rootProcessInstanceId == rootProcessInstanceId &&
    other.value == value &&
    _deepEquality.equals(other.valueInfo, valueInfo);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (decisionInstanceId == null ? 0 : decisionInstanceId!.hashCode) +
    (clauseId == null ? 0 : clauseId!.hashCode) +
    (clauseName == null ? 0 : clauseName!.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (createTime == null ? 0 : createTime!.hashCode) +
    (removalTime == null ? 0 : removalTime!.hashCode) +
    (rootProcessInstanceId == null ? 0 : rootProcessInstanceId!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (valueInfo.hashCode);

  @override
  String toString() => 'HistoricDecisionInputInstanceDto[id=$id, decisionInstanceId=$decisionInstanceId, clauseId=$clauseId, clauseName=$clauseName, errorMessage=$errorMessage, type=$type, createTime=$createTime, removalTime=$removalTime, rootProcessInstanceId=$rootProcessInstanceId, value=$value, valueInfo=$valueInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.decisionInstanceId != null) {
      json[r'decisionInstanceId'] = this.decisionInstanceId;
    } else {
      json[r'decisionInstanceId'] = null;
    }
    if (this.clauseId != null) {
      json[r'clauseId'] = this.clauseId;
    } else {
      json[r'clauseId'] = null;
    }
    if (this.clauseName != null) {
      json[r'clauseName'] = this.clauseName;
    } else {
      json[r'clauseName'] = null;
    }
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.createTime != null) {
      json[r'createTime'] = this.createTime!.toUtc().toIso8601String();
    } else {
      json[r'createTime'] = null;
    }
    if (this.removalTime != null) {
      json[r'removalTime'] = this.removalTime!.toUtc().toIso8601String();
    } else {
      json[r'removalTime'] = null;
    }
    if (this.rootProcessInstanceId != null) {
      json[r'rootProcessInstanceId'] = this.rootProcessInstanceId;
    } else {
      json[r'rootProcessInstanceId'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
      json[r'valueInfo'] = this.valueInfo;
    return json;
  }

  /// Returns a new [HistoricDecisionInputInstanceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricDecisionInputInstanceDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricDecisionInputInstanceDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricDecisionInputInstanceDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricDecisionInputInstanceDto(
        id: mapValueOfType<String>(json, r'id'),
        decisionInstanceId: mapValueOfType<String>(json, r'decisionInstanceId'),
        clauseId: mapValueOfType<String>(json, r'clauseId'),
        clauseName: mapValueOfType<String>(json, r'clauseName'),
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
        type: mapValueOfType<String>(json, r'type'),
        createTime: mapDateTime(json, r'createTime', r''),
        removalTime: mapDateTime(json, r'removalTime', r''),
        rootProcessInstanceId: mapValueOfType<String>(json, r'rootProcessInstanceId'),
        value: mapValueOfType<Object>(json, r'value'),
        valueInfo: mapCastOfType<String, Object>(json, r'valueInfo') ?? const {},
      );
    }
    return null;
  }

  static List<HistoricDecisionInputInstanceDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricDecisionInputInstanceDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricDecisionInputInstanceDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricDecisionInputInstanceDto> mapFromJson(dynamic json) {
    final map = <String, HistoricDecisionInputInstanceDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricDecisionInputInstanceDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricDecisionInputInstanceDto-objects as value to a dart map
  static Map<String, List<HistoricDecisionInputInstanceDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricDecisionInputInstanceDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricDecisionInputInstanceDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

