//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeleteProcessInstancesDto {
  /// Returns a new [DeleteProcessInstancesDto] instance.
  DeleteProcessInstancesDto({
    this.processInstanceIds = const [],
    this.deleteReason,
    this.skipCustomListeners,
    this.skipSubprocesses,
    this.processInstanceQuery,
    this.historicProcessInstanceQuery,
  });

  /// A list process instance ids to delete.
  List<String>? processInstanceIds;

  /// A string with delete reason.
  String? deleteReason;

  /// Skip execution listener invocation for activities that are started or ended as part of this request.
  bool? skipCustomListeners;

  /// Skip deletion of the subprocesses related to deleted processes as part of this request.
  bool? skipSubprocesses;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProcessInstanceQueryDto? processInstanceQuery;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HistoricProcessInstanceQueryDto? historicProcessInstanceQuery;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeleteProcessInstancesDto &&
    _deepEquality.equals(other.processInstanceIds, processInstanceIds) &&
    other.deleteReason == deleteReason &&
    other.skipCustomListeners == skipCustomListeners &&
    other.skipSubprocesses == skipSubprocesses &&
    other.processInstanceQuery == processInstanceQuery &&
    other.historicProcessInstanceQuery == historicProcessInstanceQuery;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (processInstanceIds == null ? 0 : processInstanceIds!.hashCode) +
    (deleteReason == null ? 0 : deleteReason!.hashCode) +
    (skipCustomListeners == null ? 0 : skipCustomListeners!.hashCode) +
    (skipSubprocesses == null ? 0 : skipSubprocesses!.hashCode) +
    (processInstanceQuery == null ? 0 : processInstanceQuery!.hashCode) +
    (historicProcessInstanceQuery == null ? 0 : historicProcessInstanceQuery!.hashCode);

  @override
  String toString() => 'DeleteProcessInstancesDto[processInstanceIds=$processInstanceIds, deleteReason=$deleteReason, skipCustomListeners=$skipCustomListeners, skipSubprocesses=$skipSubprocesses, processInstanceQuery=$processInstanceQuery, historicProcessInstanceQuery=$historicProcessInstanceQuery]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.processInstanceIds != null) {
      json[r'processInstanceIds'] = this.processInstanceIds;
    } else {
      json[r'processInstanceIds'] = null;
    }
    if (this.deleteReason != null) {
      json[r'deleteReason'] = this.deleteReason;
    } else {
      json[r'deleteReason'] = null;
    }
    if (this.skipCustomListeners != null) {
      json[r'skipCustomListeners'] = this.skipCustomListeners;
    } else {
      json[r'skipCustomListeners'] = null;
    }
    if (this.skipSubprocesses != null) {
      json[r'skipSubprocesses'] = this.skipSubprocesses;
    } else {
      json[r'skipSubprocesses'] = null;
    }
    if (this.processInstanceQuery != null) {
      json[r'processInstanceQuery'] = this.processInstanceQuery;
    } else {
      json[r'processInstanceQuery'] = null;
    }
    if (this.historicProcessInstanceQuery != null) {
      json[r'historicProcessInstanceQuery'] = this.historicProcessInstanceQuery;
    } else {
      json[r'historicProcessInstanceQuery'] = null;
    }
    return json;
  }

  /// Returns a new [DeleteProcessInstancesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeleteProcessInstancesDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeleteProcessInstancesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeleteProcessInstancesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeleteProcessInstancesDto(
        processInstanceIds: json[r'processInstanceIds'] is Iterable
            ? (json[r'processInstanceIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        deleteReason: mapValueOfType<String>(json, r'deleteReason'),
        skipCustomListeners: mapValueOfType<bool>(json, r'skipCustomListeners'),
        skipSubprocesses: mapValueOfType<bool>(json, r'skipSubprocesses'),
        processInstanceQuery: ProcessInstanceQueryDto.fromJson(json[r'processInstanceQuery']),
        historicProcessInstanceQuery: HistoricProcessInstanceQueryDto.fromJson(json[r'historicProcessInstanceQuery']),
      );
    }
    return null;
  }

  static List<DeleteProcessInstancesDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeleteProcessInstancesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteProcessInstancesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeleteProcessInstancesDto> mapFromJson(dynamic json) {
    final map = <String, DeleteProcessInstancesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteProcessInstancesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeleteProcessInstancesDto-objects as value to a dart map
  static Map<String, List<DeleteProcessInstancesDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeleteProcessInstancesDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeleteProcessInstancesDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

