//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IdentityServiceGroupDto {
  /// Returns a new [IdentityServiceGroupDto] instance.
  IdentityServiceGroupDto({
    this.id,
    this.name,
  });

  /// The id of the group.
  String? id;

  /// The name of the group.
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IdentityServiceGroupDto &&
    other.id == id &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'IdentityServiceGroupDto[id=$id, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [IdentityServiceGroupDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IdentityServiceGroupDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IdentityServiceGroupDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IdentityServiceGroupDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IdentityServiceGroupDto(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<IdentityServiceGroupDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IdentityServiceGroupDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IdentityServiceGroupDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IdentityServiceGroupDto> mapFromJson(dynamic json) {
    final map = <String, IdentityServiceGroupDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IdentityServiceGroupDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IdentityServiceGroupDto-objects as value to a dart map
  static Map<String, List<IdentityServiceGroupDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IdentityServiceGroupDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IdentityServiceGroupDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

