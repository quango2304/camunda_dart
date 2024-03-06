//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PasswordPolicyRuleDto {
  /// Returns a new [PasswordPolicyRuleDto] instance.
  PasswordPolicyRuleDto({
    this.placeholder,
    this.parameter = const {},
  });

  /// A placeholder string that contains the name of a password policy rule.
  String? placeholder;

  /// A map that describes the characteristics of a password policy rule, such as the minimum number of digits.
  Map<String, String> parameter;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PasswordPolicyRuleDto &&
    other.placeholder == placeholder &&
    _deepEquality.equals(other.parameter, parameter);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (placeholder == null ? 0 : placeholder!.hashCode) +
    (parameter.hashCode);

  @override
  String toString() => 'PasswordPolicyRuleDto[placeholder=$placeholder, parameter=$parameter]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.placeholder != null) {
      json[r'placeholder'] = this.placeholder;
    } else {
      json[r'placeholder'] = null;
    }
      json[r'parameter'] = this.parameter;
    return json;
  }

  /// Returns a new [PasswordPolicyRuleDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PasswordPolicyRuleDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PasswordPolicyRuleDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PasswordPolicyRuleDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PasswordPolicyRuleDto(
        placeholder: mapValueOfType<String>(json, r'placeholder'),
        parameter: mapCastOfType<String, String>(json, r'parameter') ?? const {},
      );
    }
    return null;
  }

  static List<PasswordPolicyRuleDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PasswordPolicyRuleDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PasswordPolicyRuleDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PasswordPolicyRuleDto> mapFromJson(dynamic json) {
    final map = <String, PasswordPolicyRuleDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PasswordPolicyRuleDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PasswordPolicyRuleDto-objects as value to a dart map
  static Map<String, List<PasswordPolicyRuleDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PasswordPolicyRuleDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PasswordPolicyRuleDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

