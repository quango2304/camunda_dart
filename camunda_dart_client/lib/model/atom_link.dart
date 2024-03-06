//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AtomLink {
  /// Returns a new [AtomLink] instance.
  AtomLink({
    this.rel,
    this.href,
    this.method,
  });

  /// The relation of the link to the object that belongs to.
  String? rel;

  /// The url of the link.
  String? href;

  /// The http method.
  String? method;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AtomLink &&
    other.rel == rel &&
    other.href == href &&
    other.method == method;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rel == null ? 0 : rel!.hashCode) +
    (href == null ? 0 : href!.hashCode) +
    (method == null ? 0 : method!.hashCode);

  @override
  String toString() => 'AtomLink[rel=$rel, href=$href, method=$method]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.rel != null) {
      json[r'rel'] = this.rel;
    } else {
      json[r'rel'] = null;
    }
    if (this.href != null) {
      json[r'href'] = this.href;
    } else {
      json[r'href'] = null;
    }
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
    return json;
  }

  /// Returns a new [AtomLink] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AtomLink? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AtomLink[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AtomLink[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AtomLink(
        rel: mapValueOfType<String>(json, r'rel'),
        href: mapValueOfType<String>(json, r'href'),
        method: mapValueOfType<String>(json, r'method'),
      );
    }
    return null;
  }

  static List<AtomLink> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AtomLink>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AtomLink.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AtomLink> mapFromJson(dynamic json) {
    final map = <String, AtomLink>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AtomLink.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AtomLink-objects as value to a dart map
  static Map<String, List<AtomLink>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AtomLink>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AtomLink.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

