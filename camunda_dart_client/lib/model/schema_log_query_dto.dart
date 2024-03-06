//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SchemaLogQueryDto {
  /// Returns a new [SchemaLogQueryDto] instance.
  SchemaLogQueryDto({
    this.version,
    this.sorting = const [],
  });

  /// The version of the schema.
  String? version;

  /// A JSON array of criteria to sort the result by. Each element of the array is                       a JSON object that specifies one ordering. The position in the array                       identifies the rank of an ordering, i.e., whether it is primary, secondary,                       etc. 
  List<SchemaLogQueryDtoSortingInner>? sorting;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SchemaLogQueryDto &&
    other.version == version &&
    _deepEquality.equals(other.sorting, sorting);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (version == null ? 0 : version!.hashCode) +
    (sorting == null ? 0 : sorting!.hashCode);

  @override
  String toString() => 'SchemaLogQueryDto[version=$version, sorting=$sorting]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.sorting != null) {
      json[r'sorting'] = this.sorting;
    } else {
      json[r'sorting'] = null;
    }
    return json;
  }

  /// Returns a new [SchemaLogQueryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SchemaLogQueryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SchemaLogQueryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SchemaLogQueryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SchemaLogQueryDto(
        version: mapValueOfType<String>(json, r'version'),
        sorting: SchemaLogQueryDtoSortingInner.listFromJson(json[r'sorting']),
      );
    }
    return null;
  }

  static List<SchemaLogQueryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SchemaLogQueryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SchemaLogQueryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SchemaLogQueryDto> mapFromJson(dynamic json) {
    final map = <String, SchemaLogQueryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SchemaLogQueryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SchemaLogQueryDto-objects as value to a dart map
  static Map<String, List<SchemaLogQueryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SchemaLogQueryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SchemaLogQueryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

