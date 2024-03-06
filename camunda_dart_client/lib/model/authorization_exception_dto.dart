//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthorizationExceptionDto {
  /// Returns a new [AuthorizationExceptionDto] instance.
  AuthorizationExceptionDto({
    this.type,
    this.message,
    this.code,
    this.userId,
    this.missingAuthorizations = const [],
  });

  /// An exception class indicating the occurred error.
  String? type;

  /// A detailed message of the error.
  String? message;

  /// The code allows your client application to identify the error in an automated fashion. You can look up the meaning of all built-in codes and learn how to add custom codes in the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/error-handling/#exception-codes).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? code;

  /// The id of the user that does not have expected permissions
  String? userId;

  /// 
  List<MissingAuthorizationDto>? missingAuthorizations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthorizationExceptionDto &&
    other.type == type &&
    other.message == message &&
    other.code == code &&
    other.userId == userId &&
    _deepEquality.equals(other.missingAuthorizations, missingAuthorizations);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (missingAuthorizations == null ? 0 : missingAuthorizations!.hashCode);

  @override
  String toString() => 'AuthorizationExceptionDto[type=$type, message=$message, code=$code, userId=$userId, missingAuthorizations=$missingAuthorizations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.missingAuthorizations != null) {
      json[r'missingAuthorizations'] = this.missingAuthorizations;
    } else {
      json[r'missingAuthorizations'] = null;
    }
    return json;
  }

  /// Returns a new [AuthorizationExceptionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthorizationExceptionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuthorizationExceptionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuthorizationExceptionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthorizationExceptionDto(
        type: mapValueOfType<String>(json, r'type'),
        message: mapValueOfType<String>(json, r'message'),
        code: num.parse('${json[r'code']}'),
        userId: mapValueOfType<String>(json, r'userId'),
        missingAuthorizations: MissingAuthorizationDto.listFromJson(json[r'missingAuthorizations']),
      );
    }
    return null;
  }

  static List<AuthorizationExceptionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthorizationExceptionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthorizationExceptionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthorizationExceptionDto> mapFromJson(dynamic json) {
    final map = <String, AuthorizationExceptionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthorizationExceptionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthorizationExceptionDto-objects as value to a dart map
  static Map<String, List<AuthorizationExceptionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthorizationExceptionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthorizationExceptionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

