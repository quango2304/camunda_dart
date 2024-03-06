//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PasswordPolicyRequestDto {
  /// Returns a new [PasswordPolicyRequestDto] instance.
  PasswordPolicyRequestDto({
    this.password,
    this.profile,
  });

  /// The candidate password to be check against the password policy.
  String? password;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserProfileDto? profile;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PasswordPolicyRequestDto &&
    other.password == password &&
    other.profile == profile;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (password == null ? 0 : password!.hashCode) +
    (profile == null ? 0 : profile!.hashCode);

  @override
  String toString() => 'PasswordPolicyRequestDto[password=$password, profile=$profile]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    if (this.profile != null) {
      json[r'profile'] = this.profile;
    } else {
      json[r'profile'] = null;
    }
    return json;
  }

  /// Returns a new [PasswordPolicyRequestDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PasswordPolicyRequestDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PasswordPolicyRequestDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PasswordPolicyRequestDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PasswordPolicyRequestDto(
        password: mapValueOfType<String>(json, r'password'),
        profile: UserProfileDto.fromJson(json[r'profile']),
      );
    }
    return null;
  }

  static List<PasswordPolicyRequestDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PasswordPolicyRequestDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PasswordPolicyRequestDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PasswordPolicyRequestDto> mapFromJson(dynamic json) {
    final map = <String, PasswordPolicyRequestDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PasswordPolicyRequestDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PasswordPolicyRequestDto-objects as value to a dart map
  static Map<String, List<PasswordPolicyRequestDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PasswordPolicyRequestDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PasswordPolicyRequestDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

