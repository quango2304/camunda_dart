//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProcessDefinitionSuspensionStateDto {
  /// Returns a new [ProcessDefinitionSuspensionStateDto] instance.
  ProcessDefinitionSuspensionStateDto({
    this.suspended,
    this.processDefinitionId,
    this.processDefinitionKey,
    this.includeProcessInstances,
    this.executionDate,
  });

  /// A `Boolean` value which indicates whether to activate or suspend all process definitions with the given key. When the value is set to `true`, all process definitions with the given key will be suspended and when the value is set to `false`, all process definitions with the given key will be activated.
  bool? suspended;

  /// The id of the process definitions to activate or suspend.
  String? processDefinitionId;

  /// The key of the process definitions to activate or suspend.
  String? processDefinitionKey;

  /// A `Boolean` value which indicates whether to activate or suspend also all process instances of  the process definitions with the given key. When the value is set to `true`, all process instances of the process definitions with the given key will be activated or suspended and when the value is set to `false`, the suspension state of  all process instances of the process definitions with the given key will not be updated.
  bool? includeProcessInstances;

  /// The date on which all process definitions with the given key will be activated or suspended. If `null`, the suspension state of all process definitions with the given key is updated immediately. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  DateTime? executionDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProcessDefinitionSuspensionStateDto &&
    other.suspended == suspended &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    other.includeProcessInstances == includeProcessInstances &&
    other.executionDate == executionDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (suspended == null ? 0 : suspended!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (includeProcessInstances == null ? 0 : includeProcessInstances!.hashCode) +
    (executionDate == null ? 0 : executionDate!.hashCode);

  @override
  String toString() => 'ProcessDefinitionSuspensionStateDto[suspended=$suspended, processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, includeProcessInstances=$includeProcessInstances, executionDate=$executionDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.suspended != null) {
      json[r'suspended'] = this.suspended;
    } else {
      json[r'suspended'] = null;
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
    if (this.includeProcessInstances != null) {
      json[r'includeProcessInstances'] = this.includeProcessInstances;
    } else {
      json[r'includeProcessInstances'] = null;
    }
    if (this.executionDate != null) {
      json[r'executionDate'] = this.executionDate!.toUtc().toIso8601String();
    } else {
      json[r'executionDate'] = null;
    }
    return json;
  }

  /// Returns a new [ProcessDefinitionSuspensionStateDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProcessDefinitionSuspensionStateDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProcessDefinitionSuspensionStateDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProcessDefinitionSuspensionStateDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProcessDefinitionSuspensionStateDto(
        suspended: mapValueOfType<bool>(json, r'suspended'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        includeProcessInstances: mapValueOfType<bool>(json, r'includeProcessInstances'),
        executionDate: mapDateTime(json, r'executionDate', r''),
      );
    }
    return null;
  }

  static List<ProcessDefinitionSuspensionStateDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProcessDefinitionSuspensionStateDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProcessDefinitionSuspensionStateDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProcessDefinitionSuspensionStateDto> mapFromJson(dynamic json) {
    final map = <String, ProcessDefinitionSuspensionStateDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProcessDefinitionSuspensionStateDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProcessDefinitionSuspensionStateDto-objects as value to a dart map
  static Map<String, List<ProcessDefinitionSuspensionStateDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProcessDefinitionSuspensionStateDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProcessDefinitionSuspensionStateDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

