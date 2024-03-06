//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthorizationCreateDto {
  /// Returns a new [AuthorizationCreateDto] instance.
  AuthorizationCreateDto({
    this.type,
    this.permissions = const [],
    this.userId,
    this.groupId,
    this.resourceType,
    this.resourceId,
  });

  /// The type of the authorization (0=global, 1=grant, 2=revoke). See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service.md#authorization-type) for more information about authorization types.
  int? type;

  /// An array of Strings holding the permissions provided by this authorization.
  List<String>? permissions;

  /// The id of the user this authorization has been created for. The value `*` represents a global authorization ranging over all users.
  String? userId;

  /// The id of the group this authorization has been created for.
  String? groupId;

  /// An integer representing the resource type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#resources) for a list of integer representations of resource types.
  int? resourceType;

  /// The resource Id. The value `*` represents an authorization ranging over all instances of a resource.
  String? resourceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthorizationCreateDto &&
    other.type == type &&
    _deepEquality.equals(other.permissions, permissions) &&
    other.userId == userId &&
    other.groupId == groupId &&
    other.resourceType == resourceType &&
    other.resourceId == resourceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (permissions == null ? 0 : permissions!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (groupId == null ? 0 : groupId!.hashCode) +
    (resourceType == null ? 0 : resourceType!.hashCode) +
    (resourceId == null ? 0 : resourceId!.hashCode);

  @override
  String toString() => 'AuthorizationCreateDto[type=$type, permissions=$permissions, userId=$userId, groupId=$groupId, resourceType=$resourceType, resourceId=$resourceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.permissions != null) {
      json[r'permissions'] = this.permissions;
    } else {
      json[r'permissions'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.groupId != null) {
      json[r'groupId'] = this.groupId;
    } else {
      json[r'groupId'] = null;
    }
    if (this.resourceType != null) {
      json[r'resourceType'] = this.resourceType;
    } else {
      json[r'resourceType'] = null;
    }
    if (this.resourceId != null) {
      json[r'resourceId'] = this.resourceId;
    } else {
      json[r'resourceId'] = null;
    }
    return json;
  }

  /// Returns a new [AuthorizationCreateDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthorizationCreateDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuthorizationCreateDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuthorizationCreateDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthorizationCreateDto(
        type: mapValueOfType<int>(json, r'type'),
        permissions: json[r'permissions'] is Iterable
            ? (json[r'permissions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        userId: mapValueOfType<String>(json, r'userId'),
        groupId: mapValueOfType<String>(json, r'groupId'),
        resourceType: mapValueOfType<int>(json, r'resourceType'),
        resourceId: mapValueOfType<String>(json, r'resourceId'),
      );
    }
    return null;
  }

  static List<AuthorizationCreateDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthorizationCreateDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthorizationCreateDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthorizationCreateDto> mapFromJson(dynamic json) {
    final map = <String, AuthorizationCreateDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthorizationCreateDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthorizationCreateDto-objects as value to a dart map
  static Map<String, List<AuthorizationCreateDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthorizationCreateDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthorizationCreateDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

