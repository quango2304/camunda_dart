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


/// tests for HistoryCleanupApi
void main() {
  // final instance = HistoryCleanupApi();

  group('tests for HistoryCleanupApi', () {
    // Clean up history (POST)
    //
    // Schedules asynchronous history cleanup (See [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)).  **Note:** This endpoint will return at most a single history cleanup job. Since version `7.9.0` it is possible to configure multiple [parallel history cleanup jobs](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#parallel-execution). Use [`GET /history/cleanup/jobs`](https://docs.camunda.org/manual/7.20/reference/rest/history/history-cleanup/get-history-cleanup-jobs) to find all the available history cleanup jobs.
    //
    //Future<JobDto> cleanupAsync({ bool immediatelyDue }) async
    test('test cleanupAsync', () async {
      // TODO
    });

    // Find clean up history job (GET)
    //
    // **Deprecated!** Use `GET /history/cleanup/jobs` instead.  Finds history cleanup job (See [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)).
    //
    //Future<JobDto> findCleanupJob() async
    test('test findCleanupJob', () async {
      // TODO
    });

    // Find clean up history jobs (GET)
    //
    // Finds history cleanup jobs (See [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)).
    //
    //Future<List<JobDto>> findCleanupJobs() async
    test('test findCleanupJobs', () async {
      // TODO
    });

    // Get History Cleanup Configuration
    //
    // Retrieves history cleanup batch window configuration (See [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)).
    //
    //Future<HistoryCleanupConfigurationDto> getHistoryCleanupConfiguration() async
    test('test getHistoryCleanupConfiguration', () async {
      // TODO
    });

  });
}
