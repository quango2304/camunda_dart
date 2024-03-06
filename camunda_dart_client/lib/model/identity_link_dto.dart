//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IdentityLinkDto {
  /// Returns a new [IdentityLinkDto] instance.
  IdentityLinkDto({
    this.userId,
    this.groupId,
    required this.type,
  });

  /// The id of the user participating in this link. Either `userId` or `groupId` is set.
  String? userId;

  /// The id of the group participating in this link. Either `groupId` or `userId` is set.
  String? groupId;

  /// The type of the identity link. The value of the this property can be user-defined. The Process Engine provides three pre-defined Identity Link `type`s:  * `candidate` * `assignee` - reserved for the task assignee * `owner` - reserved for the task owner  **Note**: When adding or removing an Identity Link, the `type` property must be defined.
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IdentityLinkDto &&
    other.userId == userId &&
    other.groupId == groupId &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId == null ? 0 : userId!.hashCode) +
    (groupId == null ? 0 : groupId!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'IdentityLinkDto[userId=$userId, groupId=$groupId, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [IdentityLinkDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IdentityLinkDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IdentityLinkDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IdentityLinkDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IdentityLinkDto(
        userId: mapValueOfType<String>(json, r'userId'),
        groupId: mapValueOfType<String>(json, r'groupId'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<IdentityLinkDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IdentityLinkDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IdentityLinkDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IdentityLinkDto> mapFromJson(dynamic json) {
    final map = <String, IdentityLinkDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IdentityLinkDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IdentityLinkDto-objects as value to a dart map
  static Map<String, List<IdentityLinkDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IdentityLinkDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IdentityLinkDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
  };
}

