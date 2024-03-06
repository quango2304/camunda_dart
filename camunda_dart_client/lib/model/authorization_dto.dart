//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthorizationDto {
  /// Returns a new [AuthorizationDto] instance.
  AuthorizationDto({
    this.id,
    this.type,
    this.permissions = const [],
    this.userId,
    this.groupId,
    this.resourceType,
    this.resourceId,
    this.removalTime,
    this.rootProcessInstanceId,
  });

  /// The id of the authorization.
  String? id;

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

  /// The removal time indicates the date a historic instance authorization is cleaned up. A removal time can only be assigned to a historic instance authorization. Can be `null` when not related to a historic instance resource or when the removal time strategy is end and the root process instance is not finished. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? removalTime;

  /// The process instance id of the root process instance the historic instance authorization is related to. Can be `null` if not related to a historic instance resource.
  String? rootProcessInstanceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthorizationDto &&
    other.id == id &&
    other.type == type &&
    _deepEquality.equals(other.permissions, permissions) &&
    other.userId == userId &&
    other.groupId == groupId &&
    other.resourceType == resourceType &&
    other.resourceId == resourceId &&
    other.removalTime == removalTime &&
    other.rootProcessInstanceId == rootProcessInstanceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (permissions == null ? 0 : permissions!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (groupId == null ? 0 : groupId!.hashCode) +
    (resourceType == null ? 0 : resourceType!.hashCode) +
    (resourceId == null ? 0 : resourceId!.hashCode) +
    (removalTime == null ? 0 : removalTime!.hashCode) +
    (rootProcessInstanceId == null ? 0 : rootProcessInstanceId!.hashCode);

  @override
  String toString() => 'AuthorizationDto[id=$id, type=$type, permissions=$permissions, userId=$userId, groupId=$groupId, resourceType=$resourceType, resourceId=$resourceId, removalTime=$removalTime, rootProcessInstanceId=$rootProcessInstanceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
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
    if (this.removalTime != null) {
      json[r'removalTime'] = this.removalTime!.toUtc().toIso8601String();
    } else {
      json[r'removalTime'] = null;
    }
    if (this.rootProcessInstanceId != null) {
      json[r'rootProcessInstanceId'] = this.rootProcessInstanceId;
    } else {
      json[r'rootProcessInstanceId'] = null;
    }
    return json;
  }

  /// Returns a new [AuthorizationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthorizationDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuthorizationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuthorizationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthorizationDto(
        id: mapValueOfType<String>(json, r'id'),
        type: mapValueOfType<int>(json, r'type'),
        permissions: json[r'permissions'] is Iterable
            ? (json[r'permissions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        userId: mapValueOfType<String>(json, r'userId'),
        groupId: mapValueOfType<String>(json, r'groupId'),
        resourceType: mapValueOfType<int>(json, r'resourceType'),
        resourceId: mapValueOfType<String>(json, r'resourceId'),
        removalTime: mapDateTime(json, r'removalTime', r''),
        rootProcessInstanceId: mapValueOfType<String>(json, r'rootProcessInstanceId'),
      );
    }
    return null;
  }

  static List<AuthorizationDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthorizationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthorizationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthorizationDto> mapFromJson(dynamic json) {
    final map = <String, AuthorizationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthorizationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthorizationDto-objects as value to a dart map
  static Map<String, List<AuthorizationDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthorizationDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthorizationDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

