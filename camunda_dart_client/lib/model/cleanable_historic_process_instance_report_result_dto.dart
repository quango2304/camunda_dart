//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CleanableHistoricProcessInstanceReportResultDto {
  /// Returns a new [CleanableHistoricProcessInstanceReportResultDto] instance.
  CleanableHistoricProcessInstanceReportResultDto({
    this.processDefinitionId,
    this.processDefinitionKey,
    this.processDefinitionName,
    this.processDefinitionVersion,
    this.historyTimeToLive,
    this.finishedProcessInstanceCount,
    this.cleanableProcessInstanceCount,
    this.tenantId,
  });

  /// The id of the process definition.
  String? processDefinitionId;

  /// The key of the process definition.
  String? processDefinitionKey;

  /// The name of the process definition.
  String? processDefinitionName;

  /// The version of the process definition.
  int? processDefinitionVersion;

  /// The history time to live of the process definition.
  int? historyTimeToLive;

  /// The count of the finished historic process instances.
  int? finishedProcessInstanceCount;

  /// The count of the cleanable historic process instances, referring to history time to live.
  int? cleanableProcessInstanceCount;

  /// The tenant id of the process definition.
  String? tenantId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CleanableHistoricProcessInstanceReportResultDto &&
    other.processDefinitionId == processDefinitionId &&
    other.processDefinitionKey == processDefinitionKey &&
    other.processDefinitionName == processDefinitionName &&
    other.processDefinitionVersion == processDefinitionVersion &&
    other.historyTimeToLive == historyTimeToLive &&
    other.finishedProcessInstanceCount == finishedProcessInstanceCount &&
    other.cleanableProcessInstanceCount == cleanableProcessInstanceCount &&
    other.tenantId == tenantId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (processDefinitionName == null ? 0 : processDefinitionName!.hashCode) +
    (processDefinitionVersion == null ? 0 : processDefinitionVersion!.hashCode) +
    (historyTimeToLive == null ? 0 : historyTimeToLive!.hashCode) +
    (finishedProcessInstanceCount == null ? 0 : finishedProcessInstanceCount!.hashCode) +
    (cleanableProcessInstanceCount == null ? 0 : cleanableProcessInstanceCount!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode);

  @override
  String toString() => 'CleanableHistoricProcessInstanceReportResultDto[processDefinitionId=$processDefinitionId, processDefinitionKey=$processDefinitionKey, processDefinitionName=$processDefinitionName, processDefinitionVersion=$processDefinitionVersion, historyTimeToLive=$historyTimeToLive, finishedProcessInstanceCount=$finishedProcessInstanceCount, cleanableProcessInstanceCount=$cleanableProcessInstanceCount, tenantId=$tenantId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.processDefinitionId != null) {
      json[r'processDefinitionId'] = this.processDefinitionId;
    } else {
      json[r'processDefinitionId'] = null;
    }
    if (this.processDefinitionKey != null) {
      json[r'processDefinitionKey'] = this.processDefinitionKey;
    } else {
      json[r'processDefinitionKey'] = null;
    }
    if (this.processDefinitionName != null) {
      json[r'processDefinitionName'] = this.processDefinitionName;
    } else {
      json[r'processDefinitionName'] = null;
    }
    if (this.processDefinitionVersion != null) {
      json[r'processDefinitionVersion'] = this.processDefinitionVersion;
    } else {
      json[r'processDefinitionVersion'] = null;
    }
    if (this.historyTimeToLive != null) {
      json[r'historyTimeToLive'] = this.historyTimeToLive;
    } else {
      json[r'historyTimeToLive'] = null;
    }
    if (this.finishedProcessInstanceCount != null) {
      json[r'finishedProcessInstanceCount'] = this.finishedProcessInstanceCount;
    } else {
      json[r'finishedProcessInstanceCount'] = null;
    }
    if (this.cleanableProcessInstanceCount != null) {
      json[r'cleanableProcessInstanceCount'] = this.cleanableProcessInstanceCount;
    } else {
      json[r'cleanableProcessInstanceCount'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    return json;
  }

  /// Returns a new [CleanableHistoricProcessInstanceReportResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CleanableHistoricProcessInstanceReportResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CleanableHistoricProcessInstanceReportResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CleanableHistoricProcessInstanceReportResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CleanableHistoricProcessInstanceReportResultDto(
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        processDefinitionName: mapValueOfType<String>(json, r'processDefinitionName'),
        processDefinitionVersion: mapValueOfType<int>(json, r'processDefinitionVersion'),
        historyTimeToLive: mapValueOfType<int>(json, r'historyTimeToLive'),
        finishedProcessInstanceCount: mapValueOfType<int>(json, r'finishedProcessInstanceCount'),
        cleanableProcessInstanceCount: mapValueOfType<int>(json, r'cleanableProcessInstanceCount'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
      );
    }
    return null;
  }

  static List<CleanableHistoricProcessInstanceReportResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CleanableHistoricProcessInstanceReportResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CleanableHistoricProcessInstanceReportResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CleanableHistoricProcessInstanceReportResultDto> mapFromJson(dynamic json) {
    final map = <String, CleanableHistoricProcessInstanceReportResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CleanableHistoricProcessInstanceReportResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CleanableHistoricProcessInstanceReportResultDto-objects as value to a dart map
  static Map<String, List<CleanableHistoricProcessInstanceReportResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CleanableHistoricProcessInstanceReportResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CleanableHistoricProcessInstanceReportResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

