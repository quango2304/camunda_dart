//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserCredentialsDto {
  /// Returns a new [UserCredentialsDto] instance.
  UserCredentialsDto({
    this.password,
    this.authenticatedUserPassword,
  });

  /// The users new password.
  String? password;

  /// The password of the authenticated user who changes the password of the user (i.e., the user with passed id as path parameter).
  String? authenticatedUserPassword;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserCredentialsDto &&
    other.password == password &&
    other.authenticatedUserPassword == authenticatedUserPassword;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (password == null ? 0 : password!.hashCode) +
    (authenticatedUserPassword == null ? 0 : authenticatedUserPassword!.hashCode);

  @override
  String toString() => 'UserCredentialsDto[password=$password, authenticatedUserPassword=$authenticatedUserPassword]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    if (this.authenticatedUserPassword != null) {
      json[r'authenticatedUserPassword'] = this.authenticatedUserPassword;
    } else {
      json[r'authenticatedUserPassword'] = null;
    }
    return json;
  }

  /// Returns a new [UserCredentialsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserCredentialsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserCredentialsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserCredentialsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserCredentialsDto(
        password: mapValueOfType<String>(json, r'password'),
        authenticatedUserPassword: mapValueOfType<String>(json, r'authenticatedUserPassword'),
      );
    }
    return null;
  }

  static List<UserCredentialsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserCredentialsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserCredentialsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserCredentialsDto> mapFromJson(dynamic json) {
    final map = <String, UserCredentialsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserCredentialsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserCredentialsDto-objects as value to a dart map
  static Map<String, List<UserCredentialsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserCredentialsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserCredentialsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

