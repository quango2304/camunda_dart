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

// tests for HistoricBatchDto
void main() {
  // final instance = HistoricBatchDto();

  group('test HistoricBatchDto', () {
    // The id of the batch.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The type of the batch. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    //  The total jobs of a batch is the number of batch execution jobs required to complete the batch. 
    // int totalJobs
    test('to test the property `totalJobs`', () async {
      // TODO
    });

    //  The number of batch execution jobs created per seed job invocation. The batch seed job is invoked until it has created all batch execution jobs required by the batch (see `totalJobs` property). 
    // int batchJobsPerSeed
    test('to test the property `batchJobsPerSeed`', () async {
      // TODO
    });

    //  Every batch execution job invokes the command executed by the batch `invocationsPerBatchJob` times. E.g., for a process instance migration batch this specifies the number of process instances which are migrated per batch execution job. 
    // int invocationsPerBatchJob
    test('to test the property `invocationsPerBatchJob`', () async {
      // TODO
    });

    // The job definition id for the seed jobs of this batch.
    // String seedJobDefinitionId
    test('to test the property `seedJobDefinitionId`', () async {
      // TODO
    });

    // The job definition id for the monitor jobs of this batch.
    // String monitorJobDefinitionId
    test('to test the property `monitorJobDefinitionId`', () async {
      // TODO
    });

    // The job definition id for the batch execution jobs of this batch.
    // String batchJobDefinitionId
    test('to test the property `batchJobDefinitionId`', () async {
      // TODO
    });

    // The tenant id of the batch.
    // String tenantId
    test('to test the property `tenantId`', () async {
      // TODO
    });

    // The batch creator's user id.
    // String createUserId
    test('to test the property `createUserId`', () async {
      // TODO
    });

    // The time the batch was started. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. For further information, please see the [documentation](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/)
    // DateTime startTime
    test('to test the property `startTime`', () async {
      // TODO
    });

    // The time the batch execution was started, i.e., at least one batch job has been executed. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. For further information, please see the [documentation] (https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/)
    // DateTime executionStartTime
    test('to test the property `executionStartTime`', () async {
      // TODO
    });

    // The time the batch ended. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. For further information, please see the [documentation](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/)
    // DateTime endTime
    test('to test the property `endTime`', () async {
      // TODO
    });

    // The time after which the historic batch should be removed by the History Cleanup job. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. For further information, please see the [documentation](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/)
    // DateTime removalTime
    test('to test the property `removalTime`', () async {
      // TODO
    });


  });

}
