//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricDecisionInstanceStatisticsDto {
  /// Returns a new [HistoricDecisionInstanceStatisticsDto] instance.
  HistoricDecisionInstanceStatisticsDto({
    this.decisionDefinitionKey,
    this.evaluations,
  });

  /// A key of decision definition.
  String? decisionDefinitionKey;

  /// A number of evaluation for decision definition.
  int? evaluations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricDecisionInstanceStatisticsDto &&
    other.decisionDefinitionKey == decisionDefinitionKey &&
    other.evaluations == evaluations;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (decisionDefinitionKey == null ? 0 : decisionDefinitionKey!.hashCode) +
    (evaluations == null ? 0 : evaluations!.hashCode);

  @override
  String toString() => 'HistoricDecisionInstanceStatisticsDto[decisionDefinitionKey=$decisionDefinitionKey, evaluations=$evaluations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.decisionDefinitionKey != null) {
      json[r'decisionDefinitionKey'] = this.decisionDefinitionKey;
    } else {
      json[r'decisionDefinitionKey'] = null;
    }
    if (this.evaluations != null) {
      json[r'evaluations'] = this.evaluations;
    } else {
      json[r'evaluations'] = null;
    }
    return json;
  }

  /// Returns a new [HistoricDecisionInstanceStatisticsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricDecisionInstanceStatisticsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricDecisionInstanceStatisticsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricDecisionInstanceStatisticsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricDecisionInstanceStatisticsDto(
        decisionDefinitionKey: mapValueOfType<String>(json, r'decisionDefinitionKey'),
        evaluations: mapValueOfType<int>(json, r'evaluations'),
      );
    }
    return null;
  }

  static List<HistoricDecisionInstanceStatisticsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricDecisionInstanceStatisticsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricDecisionInstanceStatisticsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricDecisionInstanceStatisticsDto> mapFromJson(dynamic json) {
    final map = <String, HistoricDecisionInstanceStatisticsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricDecisionInstanceStatisticsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricDecisionInstanceStatisticsDto-objects as value to a dart map
  static Map<String, List<HistoricDecisionInstanceStatisticsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricDecisionInstanceStatisticsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricDecisionInstanceStatisticsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

