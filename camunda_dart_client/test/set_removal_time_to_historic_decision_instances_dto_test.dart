//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for SetRemovalTimeToHistoricDecisionInstancesDto
void main() {
  // final instance = SetRemovalTimeToHistoricDecisionInstancesDto();

  group('test SetRemovalTimeToHistoricDecisionInstancesDto', () {
    // The date for which the instances shall be removed. Value may not be `null`.  **Note:** Cannot be set in conjunction with `clearedRemovalTime` or `calculatedRemovalTime`.
    // DateTime absoluteRemovalTime
    test('to test the property `absoluteRemovalTime`', () async {
      // TODO
    });

    // Sets the removal time to `null`. Value may only be `true`, as `false` is the default behavior.  **Note:** Cannot be set in conjunction with `absoluteRemovalTime` or `calculatedRemovalTime`.
    // bool clearedRemovalTime
    test('to test the property `clearedRemovalTime`', () async {
      // TODO
    });

    // The removal time is calculated based on the engine's configuration settings. Value may only be `true`, as `false` is the default behavior.  **Note:** Cannot be set in conjunction with `absoluteRemovalTime` or `clearedRemovalTime`.
    // bool calculatedRemovalTime
    test('to test the property `calculatedRemovalTime`', () async {
      // TODO
    });

    // Sets the removal time to all historic decision instances in the hierarchy. Value may only be `true`, as `false` is the default behavior.
    // bool hierarchical
    test('to test the property `hierarchical`', () async {
      // TODO
    });

    // HistoricDecisionInstanceQueryDto historicDecisionInstanceQuery
    test('to test the property `historicDecisionInstanceQuery`', () async {
      // TODO
    });

    // The ids of the historic decision instances to set the removal time for.
    // List<String> historicDecisionInstanceIds (default value: const [])
    test('to test the property `historicDecisionInstanceIds`', () async {
      // TODO
    });


  });

}
