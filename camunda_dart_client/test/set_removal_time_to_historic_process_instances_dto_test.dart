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

// tests for SetRemovalTimeToHistoricProcessInstancesDto
void main() {
  // final instance = SetRemovalTimeToHistoricProcessInstancesDto();

  group('test SetRemovalTimeToHistoricProcessInstancesDto', () {
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

    // The id of the process instance.
    // List<String> historicProcessInstanceIds (default value: const [])
    test('to test the property `historicProcessInstanceIds`', () async {
      // TODO
    });

    // HistoricProcessInstanceQueryDto historicProcessInstanceQuery
    test('to test the property `historicProcessInstanceQuery`', () async {
      // TODO
    });

    // Sets the removal time to all historic process instances in the hierarchy. Value may only be `true`, as `false` is the default behavior.
    // bool hierarchical
    test('to test the property `hierarchical`', () async {
      // TODO
    });

    // Handles removal time updates in chunks, taking into account the defined size in `removalTimeUpdateChunkSize` in the process engine configuration. The size of the  chunks can also be overridden per call with the `updateChunkSize` parameter. Enabling this option can lead to multiple executions of the resulting jobs, preventing the database transaction from timing out by limiting the number of rows to update. Value may only be `true`, as `false` is the default behavior.
    // bool updateInChunks
    test('to test the property `updateInChunks`', () async {
      // TODO
    });

    // Defines the size of the chunks in which removal time updates are processed. The value must be a positive integer between `1` and `500`. This only has an  effect if `updateInChunks` is set to `true`. If undefined, the operation uses the  `removalTimeUpdateChunkSize` defined in the process engine configuration.
    // int updateChunkSize
    test('to test the property `updateChunkSize`', () async {
      // TODO
    });


  });

}
