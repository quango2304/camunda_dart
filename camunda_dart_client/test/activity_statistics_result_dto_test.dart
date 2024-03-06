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

// tests for ActivityStatisticsResultDto
void main() {
  // final instance = ActivityStatisticsResultDto();

  group('test ActivityStatisticsResultDto', () {
    // The id of the activity the results are aggregated for.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The total number of running process instances of this activity.
    // int instances
    test('to test the property `instances`', () async {
      // TODO
    });

    // The total number of failed jobs for the running instances. **Note**: Will be `0` (not `null`), if failed jobs were excluded.
    // int failedJobs
    test('to test the property `failedJobs`', () async {
      // TODO
    });

    // Each item in the resulting array is an object which contains `incidentType` and `incidentCount`. **Note**: Will be an empty array, if `incidents` or `incidentsForType` were excluded. Furthermore, the array will be also empty if no incidents were found.
    // List<IncidentStatisticsResultDto> incidents (default value: const [])
    test('to test the property `incidents`', () async {
      // TODO
    });

    // The fully qualified class name of the data transfer object class. The class name might change in future releases.
    // String atClass
    test('to test the property `atClass`', () async {
      // TODO
    });


  });

}
