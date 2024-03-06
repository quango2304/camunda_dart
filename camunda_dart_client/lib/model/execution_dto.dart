//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExecutionDto {
  /// Returns a new [ExecutionDto] instance.
  ExecutionDto({
    this.id,
    this.processInstanceId,
    this.ended,
    this.tenantId,
  });

  /// The id of the Execution.
  String? id;

  /// The id of the root of the execution tree representing the process instance.
  String? processInstanceId;

  /// Indicates if the execution is ended.
  bool? ended;

  /// The id of the tenant this execution belongs to. Can be `null` if the execution belongs to no single tenant.
  String? tenantId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExecutionDto &&
    other.id == id &&
    other.processInstanceId == processInstanceId &&
    other.ended == ended &&
    other.tenantId == tenantId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (ended == null ? 0 : ended!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode);

  @override
  String toString() => 'ExecutionDto[id=$id, processInstanceId=$processInstanceId, ended=$ended, tenantId=$tenantId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.processInstanceId != null) {
      json[r'processInstanceId'] = this.processInstanceId;
    } else {
      json[r'processInstanceId'] = null;
    }
    if (this.ended != null) {
      json[r'ended'] = this.ended;
    } else {
      json[r'ended'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    return json;
  }

  /// Returns a new [ExecutionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExecutionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExecutionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExecutionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExecutionDto(
        id: mapValueOfType<String>(json, r'id'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        ended: mapValueOfType<bool>(json, r'ended'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
      );
    }
    return null;
  }

  static List<ExecutionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExecutionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExecutionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExecutionDto> mapFromJson(dynamic json) {
    final map = <String, ExecutionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExecutionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExecutionDto-objects as value to a dart map
  static Map<String, List<ExecutionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExecutionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExecutionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

