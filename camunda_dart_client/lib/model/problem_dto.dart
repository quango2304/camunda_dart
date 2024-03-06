//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProblemDto {
  /// Returns a new [ProblemDto] instance.
  ProblemDto({
    this.message,
    this.line,
    this.column,
    this.mainElementId,
    this.elementIds = const [],
  });

  /// The message of the problem.
  String? message;

  /// The line where the problem occurred.
  int? line;

  /// The column where the problem occurred.
  int? column;

  /// The main element id where the problem occurred.
  String? mainElementId;

  /// A list of element id affected by the problem.
  List<String>? elementIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProblemDto &&
    other.message == message &&
    other.line == line &&
    other.column == column &&
    other.mainElementId == mainElementId &&
    _deepEquality.equals(other.elementIds, elementIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message == null ? 0 : message!.hashCode) +
    (line == null ? 0 : line!.hashCode) +
    (column == null ? 0 : column!.hashCode) +
    (mainElementId == null ? 0 : mainElementId!.hashCode) +
    (elementIds == null ? 0 : elementIds!.hashCode);

  @override
  String toString() => 'ProblemDto[message=$message, line=$line, column=$column, mainElementId=$mainElementId, elementIds=$elementIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.line != null) {
      json[r'line'] = this.line;
    } else {
      json[r'line'] = null;
    }
    if (this.column != null) {
      json[r'column'] = this.column;
    } else {
      json[r'column'] = null;
    }
    if (this.mainElementId != null) {
      json[r'mainElementId'] = this.mainElementId;
    } else {
      json[r'mainElementId'] = null;
    }
    if (this.elementIds != null) {
      json[r'elementIds'] = this.elementIds;
    } else {
      json[r'elementIds'] = null;
    }
    return json;
  }

  /// Returns a new [ProblemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProblemDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProblemDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProblemDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProblemDto(
        message: mapValueOfType<String>(json, r'message'),
        line: mapValueOfType<int>(json, r'line'),
        column: mapValueOfType<int>(json, r'column'),
        mainElementId: mapValueOfType<String>(json, r'mainElementId'),
        elementIds: json[r'elementIds'] is Iterable
            ? (json[r'elementIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ProblemDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProblemDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProblemDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProblemDto> mapFromJson(dynamic json) {
    final map = <String, ProblemDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProblemDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProblemDto-objects as value to a dart map
  static Map<String, List<ProblemDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProblemDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProblemDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

