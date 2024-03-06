//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BasicUserCredentialsDto {
  /// Returns a new [BasicUserCredentialsDto] instance.
  BasicUserCredentialsDto({
    this.username,
    this.password,
  });

  /// The username of a user.
  String? username;

  /// A password of a user.
  String? password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BasicUserCredentialsDto &&
    other.username == username &&
    other.password == password;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (username == null ? 0 : username!.hashCode) +
    (password == null ? 0 : password!.hashCode);

  @override
  String toString() => 'BasicUserCredentialsDto[username=$username, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    return json;
  }

  /// Returns a new [BasicUserCredentialsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BasicUserCredentialsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BasicUserCredentialsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BasicUserCredentialsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BasicUserCredentialsDto(
        username: mapValueOfType<String>(json, r'username'),
        password: mapValueOfType<String>(json, r'password'),
      );
    }
    return null;
  }

  static List<BasicUserCredentialsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BasicUserCredentialsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BasicUserCredentialsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BasicUserCredentialsDto> mapFromJson(dynamic json) {
    final map = <String, BasicUserCredentialsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BasicUserCredentialsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BasicUserCredentialsDto-objects as value to a dart map
  static Map<String, List<BasicUserCredentialsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BasicUserCredentialsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BasicUserCredentialsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

