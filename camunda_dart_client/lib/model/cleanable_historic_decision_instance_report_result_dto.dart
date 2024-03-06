//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CleanableHistoricDecisionInstanceReportResultDto {
  /// Returns a new [CleanableHistoricDecisionInstanceReportResultDto] instance.
  CleanableHistoricDecisionInstanceReportResultDto({
    this.decisionDefinitionId,
    this.decisionDefinitionKey,
    this.decisionDefinitionName,
    this.decisionDefinitionVersion,
    this.historyTimeToLive,
    this.finishedDecisionInstanceCount,
    this.cleanableDecisionInstanceCount,
    this.tenantId,
  });

  /// The id of the decision definition.
  String? decisionDefinitionId;

  /// The key of the decision definition.
  String? decisionDefinitionKey;

  /// The name of the decision definition.
  String? decisionDefinitionName;

  /// The version of the decision definition.
  int? decisionDefinitionVersion;

  /// The history time to live of the decision definition.
  int? historyTimeToLive;

  /// The count of the finished historic decision instances.
  int? finishedDecisionInstanceCount;

  /// The count of the cleanable historic decision instances, referring to history time to live.
  int? cleanableDecisionInstanceCount;

  /// The tenant id of the decision definition.
  String? tenantId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CleanableHistoricDecisionInstanceReportResultDto &&
    other.decisionDefinitionId == decisionDefinitionId &&
    other.decisionDefinitionKey == decisionDefinitionKey &&
    other.decisionDefinitionName == decisionDefinitionName &&
    other.decisionDefinitionVersion == decisionDefinitionVersion &&
    other.historyTimeToLive == historyTimeToLive &&
    other.finishedDecisionInstanceCount == finishedDecisionInstanceCount &&
    other.cleanableDecisionInstanceCount == cleanableDecisionInstanceCount &&
    other.tenantId == tenantId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (decisionDefinitionId == null ? 0 : decisionDefinitionId!.hashCode) +
    (decisionDefinitionKey == null ? 0 : decisionDefinitionKey!.hashCode) +
    (decisionDefinitionName == null ? 0 : decisionDefinitionName!.hashCode) +
    (decisionDefinitionVersion == null ? 0 : decisionDefinitionVersion!.hashCode) +
    (historyTimeToLive == null ? 0 : historyTimeToLive!.hashCode) +
    (finishedDecisionInstanceCount == null ? 0 : finishedDecisionInstanceCount!.hashCode) +
    (cleanableDecisionInstanceCount == null ? 0 : cleanableDecisionInstanceCount!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode);

  @override
  String toString() => 'CleanableHistoricDecisionInstanceReportResultDto[decisionDefinitionId=$decisionDefinitionId, decisionDefinitionKey=$decisionDefinitionKey, decisionDefinitionName=$decisionDefinitionName, decisionDefinitionVersion=$decisionDefinitionVersion, historyTimeToLive=$historyTimeToLive, finishedDecisionInstanceCount=$finishedDecisionInstanceCount, cleanableDecisionInstanceCount=$cleanableDecisionInstanceCount, tenantId=$tenantId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.decisionDefinitionId != null) {
      json[r'decisionDefinitionId'] = this.decisionDefinitionId;
    } else {
      json[r'decisionDefinitionId'] = null;
    }
    if (this.decisionDefinitionKey != null) {
      json[r'decisionDefinitionKey'] = this.decisionDefinitionKey;
    } else {
      json[r'decisionDefinitionKey'] = null;
    }
    if (this.decisionDefinitionName != null) {
      json[r'decisionDefinitionName'] = this.decisionDefinitionName;
    } else {
      json[r'decisionDefinitionName'] = null;
    }
    if (this.decisionDefinitionVersion != null) {
      json[r'decisionDefinitionVersion'] = this.decisionDefinitionVersion;
    } else {
      json[r'decisionDefinitionVersion'] = null;
    }
    if (this.historyTimeToLive != null) {
      json[r'historyTimeToLive'] = this.historyTimeToLive;
    } else {
      json[r'historyTimeToLive'] = null;
    }
    if (this.finishedDecisionInstanceCount != null) {
      json[r'finishedDecisionInstanceCount'] = this.finishedDecisionInstanceCount;
    } else {
      json[r'finishedDecisionInstanceCount'] = null;
    }
    if (this.cleanableDecisionInstanceCount != null) {
      json[r'cleanableDecisionInstanceCount'] = this.cleanableDecisionInstanceCount;
    } else {
      json[r'cleanableDecisionInstanceCount'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    return json;
  }

  /// Returns a new [CleanableHistoricDecisionInstanceReportResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CleanableHistoricDecisionInstanceReportResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CleanableHistoricDecisionInstanceReportResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CleanableHistoricDecisionInstanceReportResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CleanableHistoricDecisionInstanceReportResultDto(
        decisionDefinitionId: mapValueOfType<String>(json, r'decisionDefinitionId'),
        decisionDefinitionKey: mapValueOfType<String>(json, r'decisionDefinitionKey'),
        decisionDefinitionName: mapValueOfType<String>(json, r'decisionDefinitionName'),
        decisionDefinitionVersion: mapValueOfType<int>(json, r'decisionDefinitionVersion'),
        historyTimeToLive: mapValueOfType<int>(json, r'historyTimeToLive'),
        finishedDecisionInstanceCount: mapValueOfType<int>(json, r'finishedDecisionInstanceCount'),
        cleanableDecisionInstanceCount: mapValueOfType<int>(json, r'cleanableDecisionInstanceCount'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
      );
    }
    return null;
  }

  static List<CleanableHistoricDecisionInstanceReportResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CleanableHistoricDecisionInstanceReportResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CleanableHistoricDecisionInstanceReportResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CleanableHistoricDecisionInstanceReportResultDto> mapFromJson(dynamic json) {
    final map = <String, CleanableHistoricDecisionInstanceReportResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CleanableHistoricDecisionInstanceReportResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CleanableHistoricDecisionInstanceReportResultDto-objects as value to a dart map
  static Map<String, List<CleanableHistoricDecisionInstanceReportResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CleanableHistoricDecisionInstanceReportResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CleanableHistoricDecisionInstanceReportResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

