//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthorizationCheckResultDto {
  /// Returns a new [AuthorizationCheckResultDto] instance.
  AuthorizationCheckResultDto({
    this.permissionName,
    this.resourceName,
    this.resourceId,
    this.authorized,
  });

  /// Name of the permission which was checked.
  String? permissionName;

  /// The name of the resource for which the permission check was performed.
  String? resourceName;

  /// The id of the resource for which the permission check was performed.
  String? resourceId;

  /// Returns true or false depending on whether the user is authorized or not.
  bool? authorized;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthorizationCheckResultDto &&
    other.permissionName == permissionName &&
    other.resourceName == resourceName &&
    other.resourceId == resourceId &&
    other.authorized == authorized;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (permissionName == null ? 0 : permissionName!.hashCode) +
    (resourceName == null ? 0 : resourceName!.hashCode) +
    (resourceId == null ? 0 : resourceId!.hashCode) +
    (authorized == null ? 0 : authorized!.hashCode);

  @override
  String toString() => 'AuthorizationCheckResultDto[permissionName=$permissionName, resourceName=$resourceName, resourceId=$resourceId, authorized=$authorized]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.permissionName != null) {
      json[r'permissionName'] = this.permissionName;
    } else {
      json[r'permissionName'] = null;
    }
    if (this.resourceName != null) {
      json[r'resourceName'] = this.resourceName;
    } else {
      json[r'resourceName'] = null;
    }
    if (this.resourceId != null) {
      json[r'resourceId'] = this.resourceId;
    } else {
      json[r'resourceId'] = null;
    }
    if (this.authorized != null) {
      json[r'authorized'] = this.authorized;
    } else {
      json[r'authorized'] = null;
    }
    return json;
  }

  /// Returns a new [AuthorizationCheckResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthorizationCheckResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuthorizationCheckResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuthorizationCheckResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthorizationCheckResultDto(
        permissionName: mapValueOfType<String>(json, r'permissionName'),
        resourceName: mapValueOfType<String>(json, r'resourceName'),
        resourceId: mapValueOfType<String>(json, r'resourceId'),
        authorized: mapValueOfType<bool>(json, r'authorized'),
      );
    }
    return null;
  }

  static List<AuthorizationCheckResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthorizationCheckResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthorizationCheckResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthorizationCheckResultDto> mapFromJson(dynamic json) {
    final map = <String, AuthorizationCheckResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthorizationCheckResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthorizationCheckResultDto-objects as value to a dart map
  static Map<String, List<AuthorizationCheckResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthorizationCheckResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthorizationCheckResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

