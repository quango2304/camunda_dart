//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FormDto {
  /// Returns a new [FormDto] instance.
  FormDto({
    this.key,
    this.camundaFormRef,
    this.contextPath,
  });

  /// The form key.
  String? key;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CamundaFormRef? camundaFormRef;

  /// The context path of the process application. If the task (or the process definition) does not belong to a process application deployment or a process definition at all, this property is not set.
  String? contextPath;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FormDto &&
    other.key == key &&
    other.camundaFormRef == camundaFormRef &&
    other.contextPath == contextPath;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key == null ? 0 : key!.hashCode) +
    (camundaFormRef == null ? 0 : camundaFormRef!.hashCode) +
    (contextPath == null ? 0 : contextPath!.hashCode);

  @override
  String toString() => 'FormDto[key=$key, camundaFormRef=$camundaFormRef, contextPath=$contextPath]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.camundaFormRef != null) {
      json[r'camundaFormRef'] = this.camundaFormRef;
    } else {
      json[r'camundaFormRef'] = null;
    }
    if (this.contextPath != null) {
      json[r'contextPath'] = this.contextPath;
    } else {
      json[r'contextPath'] = null;
    }
    return json;
  }

  /// Returns a new [FormDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FormDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FormDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FormDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FormDto(
        key: mapValueOfType<String>(json, r'key'),
        camundaFormRef: CamundaFormRef.fromJson(json[r'camundaFormRef']),
        contextPath: mapValueOfType<String>(json, r'contextPath'),
      );
    }
    return null;
  }

  static List<FormDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FormDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FormDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FormDto> mapFromJson(dynamic json) {
    final map = <String, FormDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FormDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FormDto-objects as value to a dart map
  static Map<String, List<FormDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FormDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FormDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

