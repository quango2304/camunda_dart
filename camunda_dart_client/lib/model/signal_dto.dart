//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SignalDto {
  /// Returns a new [SignalDto] instance.
  SignalDto({
    this.name,
    this.executionId,
    this.variables = const {},
    this.tenantId,
    this.withoutTenantId,
  });

  /// The name of the signal to deliver.  **Note**: This property is mandatory.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Optionally specifies a single execution which is notified by the signal.  **Note**: If no execution id is defined the signal is broadcasted to all subscribed handlers. 
  String? executionId;

  /// A JSON object containing variable key-value pairs. Each key is a variable name and each value a JSON variable value object.
  Map<String, VariableValueDto>? variables;

  /// Specifies a tenant to deliver the signal. The signal can only be received on executions or process definitions which belongs to the given tenant.  **Note**: Cannot be used in combination with executionId.
  String? tenantId;

  /// If true the signal can only be received on executions or process definitions which belongs to no tenant. Value may not be false as this is the default behavior.  **Note**: Cannot be used in combination with `executionId`.
  bool? withoutTenantId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SignalDto &&
    other.name == name &&
    other.executionId == executionId &&
    _deepEquality.equals(other.variables, variables) &&
    other.tenantId == tenantId &&
    other.withoutTenantId == withoutTenantId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (executionId == null ? 0 : executionId!.hashCode) +
    (variables == null ? 0 : variables!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (withoutTenantId == null ? 0 : withoutTenantId!.hashCode);

  @override
  String toString() => 'SignalDto[name=$name, executionId=$executionId, variables=$variables, tenantId=$tenantId, withoutTenantId=$withoutTenantId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.executionId != null) {
      json[r'executionId'] = this.executionId;
    } else {
      json[r'executionId'] = null;
    }
    if (this.variables != null) {
      json[r'variables'] = this.variables;
    } else {
      json[r'variables'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    if (this.withoutTenantId != null) {
      json[r'withoutTenantId'] = this.withoutTenantId;
    } else {
      json[r'withoutTenantId'] = null;
    }
    return json;
  }

  /// Returns a new [SignalDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SignalDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SignalDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SignalDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SignalDto(
        name: mapValueOfType<String>(json, r'name'),
        executionId: mapValueOfType<String>(json, r'executionId'),
        variables: VariableValueDto.mapFromJson(json[r'variables']),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        withoutTenantId: mapValueOfType<bool>(json, r'withoutTenantId'),
      );
    }
    return null;
  }

  static List<SignalDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SignalDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SignalDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SignalDto> mapFromJson(dynamic json) {
    final map = <String, SignalDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SignalDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SignalDto-objects as value to a dart map
  static Map<String, List<SignalDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SignalDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SignalDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

