//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthenticationResult {
  /// Returns a new [AuthenticationResult] instance.
  AuthenticationResult({
    this.authenticatedUser,
    this.authenticated,
    this.tenants = const [],
    this.groups = const [],
  });

  /// An id of authenticated user.
  String? authenticatedUser;

  /// A flag indicating if user is authenticated.
  bool? authenticated;

  /// Will be null.
  List<String>? tenants;

  /// Will be null.
  List<String>? groups;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthenticationResult &&
    other.authenticatedUser == authenticatedUser &&
    other.authenticated == authenticated &&
    _deepEquality.equals(other.tenants, tenants) &&
    _deepEquality.equals(other.groups, groups);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (authenticatedUser == null ? 0 : authenticatedUser!.hashCode) +
    (authenticated == null ? 0 : authenticated!.hashCode) +
    (tenants == null ? 0 : tenants!.hashCode) +
    (groups == null ? 0 : groups!.hashCode);

  @override
  String toString() => 'AuthenticationResult[authenticatedUser=$authenticatedUser, authenticated=$authenticated, tenants=$tenants, groups=$groups]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.authenticatedUser != null) {
      json[r'authenticatedUser'] = this.authenticatedUser;
    } else {
      json[r'authenticatedUser'] = null;
    }
    if (this.authenticated != null) {
      json[r'authenticated'] = this.authenticated;
    } else {
      json[r'authenticated'] = null;
    }
    if (this.tenants != null) {
      json[r'tenants'] = this.tenants;
    } else {
      json[r'tenants'] = null;
    }
    if (this.groups != null) {
      json[r'groups'] = this.groups;
    } else {
      json[r'groups'] = null;
    }
    return json;
  }

  /// Returns a new [AuthenticationResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthenticationResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuthenticationResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuthenticationResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthenticationResult(
        authenticatedUser: mapValueOfType<String>(json, r'authenticatedUser'),
        authenticated: mapValueOfType<bool>(json, r'authenticated'),
        tenants: json[r'tenants'] is Iterable
            ? (json[r'tenants'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        groups: json[r'groups'] is Iterable
            ? (json[r'groups'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<AuthenticationResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthenticationResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthenticationResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthenticationResult> mapFromJson(dynamic json) {
    final map = <String, AuthenticationResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthenticationResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthenticationResult-objects as value to a dart map
  static Map<String, List<AuthenticationResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthenticationResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthenticationResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

