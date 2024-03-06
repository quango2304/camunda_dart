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

// tests for UserOperationLogEntryDto
void main() {
  // final instance = UserOperationLogEntryDto();

  group('test UserOperationLogEntryDto', () {
    // The unique identifier of this log entry.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The user who performed this operation.
    // String userId
    test('to test the property `userId`', () async {
      // TODO
    });

    // Timestamp of this operation.
    // DateTime timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // The unique identifier of this operation. A composite operation that changes multiple properties has a common `operationId`.
    // String operationId
    test('to test the property `operationId`', () async {
      // TODO
    });

    // The type of this operation, e.g., `Assign`, `Claim` and so on.
    // String operationType
    test('to test the property `operationType`', () async {
      // TODO
    });

    // The type of the entity on which this operation was executed, e.g., `Task` or `Attachment`.
    // String entityType
    test('to test the property `entityType`', () async {
      // TODO
    });

    // The name of the category this operation was associated with, e.g., `TaskWorker` or `Admin`.
    // String category
    test('to test the property `category`', () async {
      // TODO
    });

    // An arbitrary annotation set by a user for auditing reasons.
    // String annotation
    test('to test the property `annotation`', () async {
      // TODO
    });

    // The property changed by this operation.
    // String property
    test('to test the property `property`', () async {
      // TODO
    });

    // The original value of the changed property.
    // String orgValue
    test('to test the property `orgValue`', () async {
      // TODO
    });

    // The new value of the changed property.
    // String newValue
    test('to test the property `newValue`', () async {
      // TODO
    });

    // If not `null`, the operation is restricted to entities in relation to this deployment.
    // String deploymentId
    test('to test the property `deploymentId`', () async {
      // TODO
    });

    // If not `null`, the operation is restricted to entities in relation to this process definition.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // If not `null`, the operation is restricted to entities in relation to process definitions with this key.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // If not `null`, the operation is restricted to entities in relation to this process instance.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // If not `null`, the operation is restricted to entities in relation to this execution.
    // String executionId
    test('to test the property `executionId`', () async {
      // TODO
    });

    // If not `null`, the operation is restricted to entities in relation to this case definition.
    // String caseDefinitionId
    test('to test the property `caseDefinitionId`', () async {
      // TODO
    });

    // If not `null`, the operation is restricted to entities in relation to this case instance.
    // String caseInstanceId
    test('to test the property `caseInstanceId`', () async {
      // TODO
    });

    // If not `null`, the operation is restricted to entities in relation to this case execution.
    // String caseExecutionId
    test('to test the property `caseExecutionId`', () async {
      // TODO
    });

    // If not `null`, the operation is restricted to entities in relation to this task.
    // String taskId
    test('to test the property `taskId`', () async {
      // TODO
    });

    // If not `null`, the operation is restricted to entities in relation to this external task.
    // String externalTaskId
    test('to test the property `externalTaskId`', () async {
      // TODO
    });

    // If not `null`, the operation is restricted to entities in relation to this batch.
    // String batchId
    test('to test the property `batchId`', () async {
      // TODO
    });

    // If not `null`, the operation is restricted to entities in relation to this job.
    // String jobId
    test('to test the property `jobId`', () async {
      // TODO
    });

    // If not `null`, the operation is restricted to entities in relation to this job definition.
    // String jobDefinitionId
    test('to test the property `jobDefinitionId`', () async {
      // TODO
    });

    // The time after which the entry should be removed by the History Cleanup job. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
    // DateTime removalTime
    test('to test the property `removalTime`', () async {
      // TODO
    });

    // The process instance id of the root process instance that initiated the process containing this entry.
    // String rootProcessInstanceId
    test('to test the property `rootProcessInstanceId`', () async {
      // TODO
    });


  });

}
