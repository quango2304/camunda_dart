//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeleteHistoricDecisionInstancesDto {
  /// Returns a new [DeleteHistoricDecisionInstancesDto] instance.
  DeleteHistoricDecisionInstancesDto({
    this.historicDecisionInstanceIds = const [],
    this.historicDecisionInstanceQuery,
    this.deleteReason,
  });

  /// A list of historic decision instance ids to delete.
  List<String>? historicDecisionInstanceIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HistoricDecisionInstanceQueryDto? historicDecisionInstanceQuery;

  /// A string with delete reason.
  String? deleteReason;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeleteHistoricDecisionInstancesDto &&
    _deepEquality.equals(other.historicDecisionInstanceIds, historicDecisionInstanceIds) &&
    other.historicDecisionInstanceQuery == historicDecisionInstanceQuery &&
    other.deleteReason == deleteReason;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (historicDecisionInstanceIds == null ? 0 : historicDecisionInstanceIds!.hashCode) +
    (historicDecisionInstanceQuery == null ? 0 : historicDecisionInstanceQuery!.hashCode) +
    (deleteReason == null ? 0 : deleteReason!.hashCode);

  @override
  String toString() => 'DeleteHistoricDecisionInstancesDto[historicDecisionInstanceIds=$historicDecisionInstanceIds, historicDecisionInstanceQuery=$historicDecisionInstanceQuery, deleteReason=$deleteReason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.historicDecisionInstanceIds != null) {
      json[r'historicDecisionInstanceIds'] = this.historicDecisionInstanceIds;
    } else {
      json[r'historicDecisionInstanceIds'] = null;
    }
    if (this.historicDecisionInstanceQuery != null) {
      json[r'historicDecisionInstanceQuery'] = this.historicDecisionInstanceQuery;
    } else {
      json[r'historicDecisionInstanceQuery'] = null;
    }
    if (this.deleteReason != null) {
      json[r'deleteReason'] = this.deleteReason;
    } else {
      json[r'deleteReason'] = null;
    }
    return json;
  }

  /// Returns a new [DeleteHistoricDecisionInstancesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeleteHistoricDecisionInstancesDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeleteHistoricDecisionInstancesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeleteHistoricDecisionInstancesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeleteHistoricDecisionInstancesDto(
        historicDecisionInstanceIds: json[r'historicDecisionInstanceIds'] is Iterable
            ? (json[r'historicDecisionInstanceIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        historicDecisionInstanceQuery: HistoricDecisionInstanceQueryDto.fromJson(json[r'historicDecisionInstanceQuery']),
        deleteReason: mapValueOfType<String>(json, r'deleteReason'),
      );
    }
    return null;
  }

  static List<DeleteHistoricDecisionInstancesDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeleteHistoricDecisionInstancesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteHistoricDecisionInstancesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeleteHistoricDecisionInstancesDto> mapFromJson(dynamic json) {
    final map = <String, DeleteHistoricDecisionInstancesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteHistoricDecisionInstancesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeleteHistoricDecisionInstancesDto-objects as value to a dart map
  static Map<String, List<DeleteHistoricDecisionInstancesDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeleteHistoricDecisionInstancesDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeleteHistoricDecisionInstancesDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

