//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricActivityStatisticsDto {
  /// Returns a new [HistoricActivityStatisticsDto] instance.
  HistoricActivityStatisticsDto({
    this.id,
    this.instances,
    this.canceled,
    this.finished,
    this.completeScope,
    this.openIncidents,
    this.resolvedIncidents,
    this.deletedIncidents,
  });

  /// The id of the activity the results are aggregated for.
  String? id;

  /// The total number of all running instances of the activity.
  int? instances;

  /// The total number of all canceled instances of the activity. **Note:** Will be `0` (not `null`), if canceled activity instances were excluded.
  int? canceled;

  /// The total number of all finished instances of the activity. **Note:** Will be `0` (not `null`), if finished activity instances were excluded.
  int? finished;

  /// The total number of all instances which completed a scope of the activity. **Note:** Will be `0` (not `null`), if activity instances which completed a scope were excluded.
  int? completeScope;

  /// The total number of open incidents for the activity. **Note:** Will be `0` (not `null`), if `incidents` is set to `false`.
  int? openIncidents;

  /// The total number of resolved incidents for the activity. **Note:** Will be `0` (not `null`), if `incidents` is set to `false`.
  int? resolvedIncidents;

  /// The total number of deleted incidents for the activity. **Note:** Will be `0` (not `null`), if `incidents` is set to `false`.
  int? deletedIncidents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricActivityStatisticsDto &&
    other.id == id &&
    other.instances == instances &&
    other.canceled == canceled &&
    other.finished == finished &&
    other.completeScope == completeScope &&
    other.openIncidents == openIncidents &&
    other.resolvedIncidents == resolvedIncidents &&
    other.deletedIncidents == deletedIncidents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (instances == null ? 0 : instances!.hashCode) +
    (canceled == null ? 0 : canceled!.hashCode) +
    (finished == null ? 0 : finished!.hashCode) +
    (completeScope == null ? 0 : completeScope!.hashCode) +
    (openIncidents == null ? 0 : openIncidents!.hashCode) +
    (resolvedIncidents == null ? 0 : resolvedIncidents!.hashCode) +
    (deletedIncidents == null ? 0 : deletedIncidents!.hashCode);

  @override
  String toString() => 'HistoricActivityStatisticsDto[id=$id, instances=$instances, canceled=$canceled, finished=$finished, completeScope=$completeScope, openIncidents=$openIncidents, resolvedIncidents=$resolvedIncidents, deletedIncidents=$deletedIncidents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.instances != null) {
      json[r'instances'] = this.instances;
    } else {
      json[r'instances'] = null;
    }
    if (this.canceled != null) {
      json[r'canceled'] = this.canceled;
    } else {
      json[r'canceled'] = null;
    }
    if (this.finished != null) {
      json[r'finished'] = this.finished;
    } else {
      json[r'finished'] = null;
    }
    if (this.completeScope != null) {
      json[r'completeScope'] = this.completeScope;
    } else {
      json[r'completeScope'] = null;
    }
    if (this.openIncidents != null) {
      json[r'openIncidents'] = this.openIncidents;
    } else {
      json[r'openIncidents'] = null;
    }
    if (this.resolvedIncidents != null) {
      json[r'resolvedIncidents'] = this.resolvedIncidents;
    } else {
      json[r'resolvedIncidents'] = null;
    }
    if (this.deletedIncidents != null) {
      json[r'deletedIncidents'] = this.deletedIncidents;
    } else {
      json[r'deletedIncidents'] = null;
    }
    return json;
  }

  /// Returns a new [HistoricActivityStatisticsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricActivityStatisticsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricActivityStatisticsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricActivityStatisticsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricActivityStatisticsDto(
        id: mapValueOfType<String>(json, r'id'),
        instances: mapValueOfType<int>(json, r'instances'),
        canceled: mapValueOfType<int>(json, r'canceled'),
        finished: mapValueOfType<int>(json, r'finished'),
        completeScope: mapValueOfType<int>(json, r'completeScope'),
        openIncidents: mapValueOfType<int>(json, r'openIncidents'),
        resolvedIncidents: mapValueOfType<int>(json, r'resolvedIncidents'),
        deletedIncidents: mapValueOfType<int>(json, r'deletedIncidents'),
      );
    }
    return null;
  }

  static List<HistoricActivityStatisticsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricActivityStatisticsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricActivityStatisticsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricActivityStatisticsDto> mapFromJson(dynamic json) {
    final map = <String, HistoricActivityStatisticsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricActivityStatisticsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricActivityStatisticsDto-objects as value to a dart map
  static Map<String, List<HistoricActivityStatisticsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricActivityStatisticsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricActivityStatisticsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

