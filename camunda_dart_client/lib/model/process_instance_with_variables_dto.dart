//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProcessInstanceWithVariablesDto {
  /// Returns a new [ProcessInstanceWithVariablesDto] instance.
  ProcessInstanceWithVariablesDto({
    this.id,
    this.definitionId,
    this.businessKey,
    this.caseInstanceId,
    this.ended,
    this.suspended,
    this.tenantId,
    this.links = const [],
    this.variables = const {},
  });

  /// The id of the process instance.
  String? id;

  /// The id of the process definition that this process instance belongs to.
  String? definitionId;

  /// The business key of the process instance.
  String? businessKey;

  /// The id of the case instance associated with the process instance.
  String? caseInstanceId;

  /// A flag indicating whether the process instance has ended or not. Deprecated: will always be false!
  bool? ended;

  /// A flag indicating whether the process instance is suspended or not.
  bool? suspended;

  /// The tenant id of the process instance.
  String? tenantId;

  /// The links associated to this resource, with `method`, `href` and `rel`.
  List<AtomLink>? links;

  /// The id of the process instance.
  Map<String, VariableValueDto>? variables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProcessInstanceWithVariablesDto &&
    other.id == id &&
    other.definitionId == definitionId &&
    other.businessKey == businessKey &&
    other.caseInstanceId == caseInstanceId &&
    other.ended == ended &&
    other.suspended == suspended &&
    other.tenantId == tenantId &&
    _deepEquality.equals(other.links, links) &&
    _deepEquality.equals(other.variables, variables);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (definitionId == null ? 0 : definitionId!.hashCode) +
    (businessKey == null ? 0 : businessKey!.hashCode) +
    (caseInstanceId == null ? 0 : caseInstanceId!.hashCode) +
    (ended == null ? 0 : ended!.hashCode) +
    (suspended == null ? 0 : suspended!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (links == null ? 0 : links!.hashCode) +
    (variables == null ? 0 : variables!.hashCode);

  @override
  String toString() => 'ProcessInstanceWithVariablesDto[id=$id, definitionId=$definitionId, businessKey=$businessKey, caseInstanceId=$caseInstanceId, ended=$ended, suspended=$suspended, tenantId=$tenantId, links=$links, variables=$variables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.definitionId != null) {
      json[r'definitionId'] = this.definitionId;
    } else {
      json[r'definitionId'] = null;
    }
    if (this.businessKey != null) {
      json[r'businessKey'] = this.businessKey;
    } else {
      json[r'businessKey'] = null;
    }
    if (this.caseInstanceId != null) {
      json[r'caseInstanceId'] = this.caseInstanceId;
    } else {
      json[r'caseInstanceId'] = null;
    }
    if (this.ended != null) {
      json[r'ended'] = this.ended;
    } else {
      json[r'ended'] = null;
    }
    if (this.suspended != null) {
      json[r'suspended'] = this.suspended;
    } else {
      json[r'suspended'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    if (this.links != null) {
      json[r'links'] = this.links;
    } else {
      json[r'links'] = null;
    }
    if (this.variables != null) {
      json[r'variables'] = this.variables;
    } else {
      json[r'variables'] = null;
    }
    return json;
  }

  /// Returns a new [ProcessInstanceWithVariablesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProcessInstanceWithVariablesDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProcessInstanceWithVariablesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProcessInstanceWithVariablesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProcessInstanceWithVariablesDto(
        id: mapValueOfType<String>(json, r'id'),
        definitionId: mapValueOfType<String>(json, r'definitionId'),
        businessKey: mapValueOfType<String>(json, r'businessKey'),
        caseInstanceId: mapValueOfType<String>(json, r'caseInstanceId'),
        ended: mapValueOfType<bool>(json, r'ended'),
        suspended: mapValueOfType<bool>(json, r'suspended'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        links: AtomLink.listFromJson(json[r'links']),
        variables: VariableValueDto.mapFromJson(json[r'variables']),
      );
    }
    return null;
  }

  static List<ProcessInstanceWithVariablesDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProcessInstanceWithVariablesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProcessInstanceWithVariablesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProcessInstanceWithVariablesDto> mapFromJson(dynamic json) {
    final map = <String, ProcessInstanceWithVariablesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProcessInstanceWithVariablesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProcessInstanceWithVariablesDto-objects as value to a dart map
  static Map<String, List<ProcessInstanceWithVariablesDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProcessInstanceWithVariablesDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProcessInstanceWithVariablesDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

