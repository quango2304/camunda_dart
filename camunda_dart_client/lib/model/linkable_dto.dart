//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LinkableDto {
  /// Returns a new [LinkableDto] instance.
  LinkableDto({
    this.links = const [],
  });

  /// The links associated to this resource, with `method`, `href` and `rel`.
  List<AtomLink>? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LinkableDto &&
    _deepEquality.equals(other.links, links);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'LinkableDto[links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.links != null) {
      json[r'links'] = this.links;
    } else {
      json[r'links'] = null;
    }
    return json;
  }

  /// Returns a new [LinkableDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LinkableDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LinkableDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LinkableDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LinkableDto(
        links: AtomLink.listFromJson(json[r'links']),
      );
    }
    return null;
  }

  static List<LinkableDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LinkableDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LinkableDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LinkableDto> mapFromJson(dynamic json) {
    final map = <String, LinkableDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LinkableDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LinkableDto-objects as value to a dart map
  static Map<String, List<LinkableDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LinkableDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LinkableDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

