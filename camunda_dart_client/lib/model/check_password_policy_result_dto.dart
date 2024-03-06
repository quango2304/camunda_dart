//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CheckPasswordPolicyResultDto {
  /// Returns a new [CheckPasswordPolicyResultDto] instance.
  CheckPasswordPolicyResultDto({
    this.rules = const [],
    this.valid,
  });

  /// An array of password policy rules. Each element of the array is representing one rule of the policy.
  List<PasswordPolicyRuleDto>? rules;

  /// `true` if the password is compliant with the policy, otherwise `false`.
  bool? valid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CheckPasswordPolicyResultDto &&
    _deepEquality.equals(other.rules, rules) &&
    other.valid == valid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rules == null ? 0 : rules!.hashCode) +
    (valid == null ? 0 : valid!.hashCode);

  @override
  String toString() => 'CheckPasswordPolicyResultDto[rules=$rules, valid=$valid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.rules != null) {
      json[r'rules'] = this.rules;
    } else {
      json[r'rules'] = null;
    }
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    return json;
  }

  /// Returns a new [CheckPasswordPolicyResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CheckPasswordPolicyResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CheckPasswordPolicyResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CheckPasswordPolicyResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CheckPasswordPolicyResultDto(
        rules: PasswordPolicyRuleDto.listFromJson(json[r'rules']),
        valid: mapValueOfType<bool>(json, r'valid'),
      );
    }
    return null;
  }

  static List<CheckPasswordPolicyResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckPasswordPolicyResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckPasswordPolicyResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CheckPasswordPolicyResultDto> mapFromJson(dynamic json) {
    final map = <String, CheckPasswordPolicyResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckPasswordPolicyResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CheckPasswordPolicyResultDto-objects as value to a dart map
  static Map<String, List<CheckPasswordPolicyResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CheckPasswordPolicyResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CheckPasswordPolicyResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

