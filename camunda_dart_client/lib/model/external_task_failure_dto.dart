//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExternalTaskFailureDto {
  /// Returns a new [ExternalTaskFailureDto] instance.
  ExternalTaskFailureDto({
    this.workerId,
    this.errorMessage,
    this.errorDetails,
    this.retries,
    this.retryTimeout,
    this.variables = const {},
    this.localVariables = const {},
  });

  /// **Mandatory.** The ID of the worker who is performing the operation on the external task. If the task is already locked, must match the id of the worker who has most recently locked the task.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workerId;

  /// An message indicating the reason of the failure.
  String? errorMessage;

  /// A detailed error description.
  String? errorDetails;

  /// A number of how often the task should be retried. Must be >= 0. If this is 0, an incident is created and the task cannot be fetched anymore unless the retries are increased again. The incident's message is set to the `errorMessage` parameter.
  int? retries;

  /// A timeout in milliseconds before the external task becomes available again for fetching. Must be >= 0.
  int? retryTimeout;

  /// A JSON object containing variable key-value pairs. Each key is a variable name and each value a JSON variable value object with the following properties:
  Map<String, VariableValueDto>? variables;

  /// A JSON object containing local variable key-value pairs. Local variables are set only in the scope of external task. Each key is a variable name and each value a JSON variable value object with the following properties:
  Map<String, VariableValueDto>? localVariables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExternalTaskFailureDto &&
    other.workerId == workerId &&
    other.errorMessage == errorMessage &&
    other.errorDetails == errorDetails &&
    other.retries == retries &&
    other.retryTimeout == retryTimeout &&
    _deepEquality.equals(other.variables, variables) &&
    _deepEquality.equals(other.localVariables, localVariables);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (workerId == null ? 0 : workerId!.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (errorDetails == null ? 0 : errorDetails!.hashCode) +
    (retries == null ? 0 : retries!.hashCode) +
    (retryTimeout == null ? 0 : retryTimeout!.hashCode) +
    (variables == null ? 0 : variables!.hashCode) +
    (localVariables == null ? 0 : localVariables!.hashCode);

  @override
  String toString() => 'ExternalTaskFailureDto[workerId=$workerId, errorMessage=$errorMessage, errorDetails=$errorDetails, retries=$retries, retryTimeout=$retryTimeout, variables=$variables, localVariables=$localVariables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.workerId != null) {
      json[r'workerId'] = this.workerId;
    } else {
      json[r'workerId'] = null;
    }
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    if (this.errorDetails != null) {
      json[r'errorDetails'] = this.errorDetails;
    } else {
      json[r'errorDetails'] = null;
    }
    if (this.retries != null) {
      json[r'retries'] = this.retries;
    } else {
      json[r'retries'] = null;
    }
    if (this.retryTimeout != null) {
      json[r'retryTimeout'] = this.retryTimeout;
    } else {
      json[r'retryTimeout'] = null;
    }
    if (this.variables != null) {
      json[r'variables'] = this.variables;
    } else {
      json[r'variables'] = null;
    }
    if (this.localVariables != null) {
      json[r'localVariables'] = this.localVariables;
    } else {
      json[r'localVariables'] = null;
    }
    return json;
  }

  /// Returns a new [ExternalTaskFailureDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExternalTaskFailureDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExternalTaskFailureDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExternalTaskFailureDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExternalTaskFailureDto(
        workerId: mapValueOfType<String>(json, r'workerId'),
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
        errorDetails: mapValueOfType<String>(json, r'errorDetails'),
        retries: mapValueOfType<int>(json, r'retries'),
        retryTimeout: mapValueOfType<int>(json, r'retryTimeout'),
        variables: VariableValueDto.mapFromJson(json[r'variables']),
        localVariables: VariableValueDto.mapFromJson(json[r'localVariables']),
      );
    }
    return null;
  }

  static List<ExternalTaskFailureDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExternalTaskFailureDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExternalTaskFailureDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExternalTaskFailureDto> mapFromJson(dynamic json) {
    final map = <String, ExternalTaskFailureDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExternalTaskFailureDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExternalTaskFailureDto-objects as value to a dart map
  static Map<String, List<ExternalTaskFailureDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExternalTaskFailureDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExternalTaskFailureDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

