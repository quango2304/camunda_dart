//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CleanableHistoricBatchReportResultDto {
  /// Returns a new [CleanableHistoricBatchReportResultDto] instance.
  CleanableHistoricBatchReportResultDto({
    this.batchType,
    this.historyTimeToLive,
    this.finishedBatchesCount,
    this.cleanableBatchesCount,
  });

  /// The type of the batch operation.
  String? batchType;

  /// The history time to live of the batch operation.
  int? historyTimeToLive;

  /// The count of the finished batch operations.
  int? finishedBatchesCount;

  /// The count of the cleanable historic batch operations, referring to history time to live.
  int? cleanableBatchesCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CleanableHistoricBatchReportResultDto &&
    other.batchType == batchType &&
    other.historyTimeToLive == historyTimeToLive &&
    other.finishedBatchesCount == finishedBatchesCount &&
    other.cleanableBatchesCount == cleanableBatchesCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (batchType == null ? 0 : batchType!.hashCode) +
    (historyTimeToLive == null ? 0 : historyTimeToLive!.hashCode) +
    (finishedBatchesCount == null ? 0 : finishedBatchesCount!.hashCode) +
    (cleanableBatchesCount == null ? 0 : cleanableBatchesCount!.hashCode);

  @override
  String toString() => 'CleanableHistoricBatchReportResultDto[batchType=$batchType, historyTimeToLive=$historyTimeToLive, finishedBatchesCount=$finishedBatchesCount, cleanableBatchesCount=$cleanableBatchesCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.batchType != null) {
      json[r'batchType'] = this.batchType;
    } else {
      json[r'batchType'] = null;
    }
    if (this.historyTimeToLive != null) {
      json[r'historyTimeToLive'] = this.historyTimeToLive;
    } else {
      json[r'historyTimeToLive'] = null;
    }
    if (this.finishedBatchesCount != null) {
      json[r'finishedBatchesCount'] = this.finishedBatchesCount;
    } else {
      json[r'finishedBatchesCount'] = null;
    }
    if (this.cleanableBatchesCount != null) {
      json[r'cleanableBatchesCount'] = this.cleanableBatchesCount;
    } else {
      json[r'cleanableBatchesCount'] = null;
    }
    return json;
  }

  /// Returns a new [CleanableHistoricBatchReportResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CleanableHistoricBatchReportResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CleanableHistoricBatchReportResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CleanableHistoricBatchReportResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CleanableHistoricBatchReportResultDto(
        batchType: mapValueOfType<String>(json, r'batchType'),
        historyTimeToLive: mapValueOfType<int>(json, r'historyTimeToLive'),
        finishedBatchesCount: mapValueOfType<int>(json, r'finishedBatchesCount'),
        cleanableBatchesCount: mapValueOfType<int>(json, r'cleanableBatchesCount'),
      );
    }
    return null;
  }

  static List<CleanableHistoricBatchReportResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CleanableHistoricBatchReportResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CleanableHistoricBatchReportResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CleanableHistoricBatchReportResultDto> mapFromJson(dynamic json) {
    final map = <String, CleanableHistoricBatchReportResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CleanableHistoricBatchReportResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CleanableHistoricBatchReportResultDto-objects as value to a dart map
  static Map<String, List<CleanableHistoricBatchReportResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CleanableHistoricBatchReportResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CleanableHistoricBatchReportResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

