//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IdentityServiceUserDto {
  /// Returns a new [IdentityServiceUserDto] instance.
  IdentityServiceUserDto({
    this.id,
    this.firstName,
    this.lastName,
    this.displayName,
  });

  /// The id of the user.
  String? id;

  /// The firstname of the user.
  String? firstName;

  /// The lastname of the user.
  String? lastName;

  /// The displayName is generated from the id or firstName and lastName if available.
  String? displayName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IdentityServiceUserDto &&
    other.id == id &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.displayName == displayName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode);

  @override
  String toString() => 'IdentityServiceUserDto[id=$id, firstName=$firstName, lastName=$lastName, displayName=$displayName]';

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
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    return json;
  }

  /// Returns a new [IdentityServiceUserDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IdentityServiceUserDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IdentityServiceUserDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IdentityServiceUserDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IdentityServiceUserDto(
        id: mapValueOfType<String>(json, r'id'),
        firstName: mapValueOfType<String>(json, r'firstName'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        displayName: mapValueOfType<String>(json, r'displayName'),
      );
    }
    return null;
  }

  static List<IdentityServiceUserDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IdentityServiceUserDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IdentityServiceUserDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IdentityServiceUserDto> mapFromJson(dynamic json) {
    final map = <String, IdentityServiceUserDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IdentityServiceUserDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IdentityServiceUserDto-objects as value to a dart map
  static Map<String, List<IdentityServiceUserDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IdentityServiceUserDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IdentityServiceUserDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

