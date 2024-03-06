//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CheckPasswordPolicyRuleDto {
  /// Returns a new [CheckPasswordPolicyRuleDto] instance.
  CheckPasswordPolicyRuleDto({
    this.placeholder,
    this.parameter = const {},
    this.valid,
  });

  /// A placeholder string that contains the name of a password policy rule.
  String? placeholder;

  /// A map that describes the characteristics of a password policy rule, such as the minimum number of digits.
  Map<String, String> parameter;

  /// `true` if the password is compliant with this rule, otherwise `false`.
  bool? valid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CheckPasswordPolicyRuleDto &&
    other.placeholder == placeholder &&
    _deepEquality.equals(other.parameter, parameter) &&
    other.valid == valid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (placeholder == null ? 0 : placeholder!.hashCode) +
    (parameter.hashCode) +
    (valid == null ? 0 : valid!.hashCode);

  @override
  String toString() => 'CheckPasswordPolicyRuleDto[placeholder=$placeholder, parameter=$parameter, valid=$valid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.placeholder != null) {
      json[r'placeholder'] = this.placeholder;
    } else {
      json[r'placeholder'] = null;
    }
      json[r'parameter'] = this.parameter;
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    return json;
  }

  /// Returns a new [CheckPasswordPolicyRuleDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CheckPasswordPolicyRuleDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CheckPasswordPolicyRuleDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CheckPasswordPolicyRuleDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CheckPasswordPolicyRuleDto(
        placeholder: mapValueOfType<String>(json, r'placeholder'),
        parameter: mapCastOfType<String, String>(json, r'parameter') ?? const {},
        valid: mapValueOfType<bool>(json, r'valid'),
      );
    }
    return null;
  }

  static List<CheckPasswordPolicyRuleDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckPasswordPolicyRuleDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckPasswordPolicyRuleDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CheckPasswordPolicyRuleDto> mapFromJson(dynamic json) {
    final map = <String, CheckPasswordPolicyRuleDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckPasswordPolicyRuleDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CheckPasswordPolicyRuleDto-objects as value to a dart map
  static Map<String, List<CheckPasswordPolicyRuleDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CheckPasswordPolicyRuleDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CheckPasswordPolicyRuleDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

