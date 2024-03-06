//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeleteHistoricProcessInstancesDto {
  /// Returns a new [DeleteHistoricProcessInstancesDto] instance.
  DeleteHistoricProcessInstancesDto({
    this.historicProcessInstanceIds = const [],
    this.historicProcessInstanceQuery,
    this.deleteReason,
    this.failIfNotExists,
  });

  /// A list historic process instance ids to delete.
  List<String>? historicProcessInstanceIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HistoricProcessInstanceQueryDto? historicProcessInstanceQuery;

  /// A string with delete reason.
  String? deleteReason;

  /// If set to `false`, the request will still be successful if one ore more of the process ids are not found.
  bool? failIfNotExists;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeleteHistoricProcessInstancesDto &&
    _deepEquality.equals(other.historicProcessInstanceIds, historicProcessInstanceIds) &&
    other.historicProcessInstanceQuery == historicProcessInstanceQuery &&
    other.deleteReason == deleteReason &&
    other.failIfNotExists == failIfNotExists;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (historicProcessInstanceIds == null ? 0 : historicProcessInstanceIds!.hashCode) +
    (historicProcessInstanceQuery == null ? 0 : historicProcessInstanceQuery!.hashCode) +
    (deleteReason == null ? 0 : deleteReason!.hashCode) +
    (failIfNotExists == null ? 0 : failIfNotExists!.hashCode);

  @override
  String toString() => 'DeleteHistoricProcessInstancesDto[historicProcessInstanceIds=$historicProcessInstanceIds, historicProcessInstanceQuery=$historicProcessInstanceQuery, deleteReason=$deleteReason, failIfNotExists=$failIfNotExists]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.historicProcessInstanceIds != null) {
      json[r'historicProcessInstanceIds'] = this.historicProcessInstanceIds;
    } else {
      json[r'historicProcessInstanceIds'] = null;
    }
    if (this.historicProcessInstanceQuery != null) {
      json[r'historicProcessInstanceQuery'] = this.historicProcessInstanceQuery;
    } else {
      json[r'historicProcessInstanceQuery'] = null;
    }
    if (this.deleteReason != null) {
      json[r'deleteReason'] = this.deleteReason;
    } else {
      json[r'deleteReason'] = null;
    }
    if (this.failIfNotExists != null) {
      json[r'failIfNotExists'] = this.failIfNotExists;
    } else {
      json[r'failIfNotExists'] = null;
    }
    return json;
  }

  /// Returns a new [DeleteHistoricProcessInstancesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeleteHistoricProcessInstancesDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeleteHistoricProcessInstancesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeleteHistoricProcessInstancesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeleteHistoricProcessInstancesDto(
        historicProcessInstanceIds: json[r'historicProcessInstanceIds'] is Iterable
            ? (json[r'historicProcessInstanceIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        historicProcessInstanceQuery: HistoricProcessInstanceQueryDto.fromJson(json[r'historicProcessInstanceQuery']),
        deleteReason: mapValueOfType<String>(json, r'deleteReason'),
        failIfNotExists: mapValueOfType<bool>(json, r'failIfNotExists'),
      );
    }
    return null;
  }

  static List<DeleteHistoricProcessInstancesDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeleteHistoricProcessInstancesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteHistoricProcessInstancesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeleteHistoricProcessInstancesDto> mapFromJson(dynamic json) {
    final map = <String, DeleteHistoricProcessInstancesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteHistoricProcessInstancesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeleteHistoricProcessInstancesDto-objects as value to a dart map
  static Map<String, List<DeleteHistoricProcessInstancesDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeleteHistoricProcessInstancesDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeleteHistoricProcessInstancesDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

