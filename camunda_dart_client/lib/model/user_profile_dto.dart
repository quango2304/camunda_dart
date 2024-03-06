//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserProfileDto {
  /// Returns a new [UserProfileDto] instance.
  UserProfileDto({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
  });

  /// The id of the user.
  String? id;

  /// The first name of the user.
  String? firstName;

  /// The first name of the user.
  String? lastName;

  /// The email of the user.
  String? email;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserProfileDto &&
    other.id == id &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.email == email;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (email == null ? 0 : email!.hashCode);

  @override
  String toString() => 'UserProfileDto[id=$id, firstName=$firstName, lastName=$lastName, email=$email]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.firstName != null) {
      json[r'firstName'] = this.firstName;
    } else {
      json[r'firstName'] = null;
    }
    if (this.lastName != null) {
      json[r'lastName'] = this.lastName;
    } else {
      json[r'lastName'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    return json;
  }

  /// Returns a new [UserProfileDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserProfileDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserProfileDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserProfileDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserProfileDto(
        id: mapValueOfType<String>(json, r'id'),
        firstName: mapValueOfType<String>(json, r'firstName'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        email: mapValueOfType<String>(json, r'email'),
      );
    }
    return null;
  }

  static List<UserProfileDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserProfileDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserProfileDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserProfileDto> mapFromJson(dynamic json) {
    final map = <String, UserProfileDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserProfileDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserProfileDto-objects as value to a dart map
  static Map<String, List<UserProfileDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserProfileDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserProfileDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

