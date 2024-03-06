//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateFilterDto {
  /// Returns a new [CreateFilterDto] instance.
  CreateFilterDto({
    this.resourceType,
    this.name,
    this.owner,
    this.query,
    this.properties,
  });

  /// The resource type of the filter.
  String? resourceType;

  /// The name of the filter.
  String? name;

  /// The user id of the owner of the filter.
  String? owner;

  /// The query of the filter as a JSON object.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? query;

  /// The properties of a filter as a JSON object.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateFilterDto &&
    other.resourceType == resourceType &&
    other.name == name &&
    other.owner == owner &&
    other.query == query &&
    other.properties == properties;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (resourceType == null ? 0 : resourceType!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (query == null ? 0 : query!.hashCode) +
    (properties == null ? 0 : properties!.hashCode);

  @override
  String toString() => 'CreateFilterDto[resourceType=$resourceType, name=$name, owner=$owner, query=$query, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.resourceType != null) {
      json[r'resourceType'] = this.resourceType;
    } else {
      json[r'resourceType'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.query != null) {
      json[r'query'] = this.query;
    } else {
      json[r'query'] = null;
    }
    if (this.properties != null) {
      json[r'properties'] = this.properties;
    } else {
      json[r'properties'] = null;
    }
    return json;
  }

  /// Returns a new [CreateFilterDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateFilterDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateFilterDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateFilterDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateFilterDto(
        resourceType: mapValueOfType<String>(json, r'resourceType'),
        name: mapValueOfType<String>(json, r'name'),
        owner: mapValueOfType<String>(json, r'owner'),
        query: mapValueOfType<Object>(json, r'query'),
        properties: mapValueOfType<Object>(json, r'properties'),
      );
    }
    return null;
  }

  static List<CreateFilterDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateFilterDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateFilterDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateFilterDto> mapFromJson(dynamic json) {
    final map = <String, CreateFilterDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateFilterDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateFilterDto-objects as value to a dart map
  static Map<String, List<CreateFilterDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateFilterDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateFilterDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

