//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TriggerVariableValueDto {
  /// Returns a new [TriggerVariableValueDto] instance.
  TriggerVariableValueDto({
    this.value,
    this.type,
    this.valueInfo = const {},
    this.local,
  });

  /// Can be any value - string, number, boolean, array or object.  **Note**: Not every endpoint supports every type.
  Object? value;

  /// The value type of the variable.
  String? type;

  /// A JSON object containing additional, value-type-dependent properties. For serialized variables of type Object, the following properties can be provided:  * `objectTypeName`: A string representation of the object's type name. * `serializationDataFormat`: The serialization format used to store the variable.  For serialized variables of type File, the following properties can be provided:  * `filename`: The name of the file. This is not the variable name but the name that will be used when downloading the file again. * `mimetype`: The MIME type of the file that is being uploaded. * `encoding`: The encoding of the file that is being uploaded.  The following property can be provided for all value types:  * `transient`: Indicates whether the variable should be transient or not. See [documentation](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables#transient-variables) for more informations. (Not applicable for `decision-definition`, ` /process-instance/variables-async`, and `/migration/executeAsync` endpoints)
  Map<String, Object> valueInfo;

  /// Indicates whether the variable should be a local variable or not. If set to true, the variable becomes a local variable of the execution entering the target activity.
  bool? local;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TriggerVariableValueDto &&
    other.value == value &&
    other.type == type &&
    _deepEquality.equals(other.valueInfo, valueInfo) &&
    other.local == local;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (value == null ? 0 : value!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (valueInfo.hashCode) +
    (local == null ? 0 : local!.hashCode);

  @override
  String toString() => 'TriggerVariableValueDto[value=$value, type=$type, valueInfo=$valueInfo, local=$local]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
      json[r'valueInfo'] = this.valueInfo;
    if (this.local != null) {
      json[r'local'] = this.local;
    } else {
      json[r'local'] = null;
    }
    return json;
  }

  /// Returns a new [TriggerVariableValueDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TriggerVariableValueDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TriggerVariableValueDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TriggerVariableValueDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TriggerVariableValueDto(
        value: mapValueOfType<Object>(json, r'value'),
        type: mapValueOfType<String>(json, r'type'),
        valueInfo: mapCastOfType<String, Object>(json, r'valueInfo') ?? const {},
        local: mapValueOfType<bool>(json, r'local'),
      );
    }
    return null;
  }

  static List<TriggerVariableValueDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TriggerVariableValueDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TriggerVariableValueDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TriggerVariableValueDto> mapFromJson(dynamic json) {
    final map = <String, TriggerVariableValueDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TriggerVariableValueDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TriggerVariableValueDto-objects as value to a dart map
  static Map<String, List<TriggerVariableValueDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TriggerVariableValueDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TriggerVariableValueDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

