//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserIdDto {
  /// Returns a new [UserIdDto] instance.
  UserIdDto({
    this.userId,
  });

  /// The id of the user that the current action refers to.
  String? userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserIdDto &&
    other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId == null ? 0 : userId!.hashCode);

  @override
  String toString() => 'UserIdDto[userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    return json;
  }

  /// Returns a new [UserIdDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserIdDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserIdDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserIdDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserIdDto(
        userId: mapValueOfType<String>(json, r'userId'),
      );
    }
    return null;
  }

  static List<UserIdDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserIdDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserIdDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserIdDto> mapFromJson(dynamic json) {
    final map = <String, UserIdDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserIdDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserIdDto-objects as value to a dart map
  static Map<String, List<UserIdDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserIdDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserIdDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

