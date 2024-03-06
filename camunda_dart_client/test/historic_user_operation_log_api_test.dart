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


/// tests for HistoricUserOperationLogApi
void main() {
  // final instance = HistoricUserOperationLogApi();

  group('tests for HistoricUserOperationLogApi', () {
    // Clear Annotation of an User Operation Log (Historic)
    //
    // Clear the annotation which was previously set for auditing reasons.
    //
    //Future clearAnnotationUserOperationLog(String operationId) async
    test('test clearAnnotationUserOperationLog', () async {
      // TODO
    });

    // Get User Operation Log Count
    //
    // Queries for the number of user operation log entries that fulfill the given parameters. Takes the same parameters as the [Get User Operation Log (Historic)](https://docs.camunda.org/manual/7.20/reference/rest/history/user-operation-log/get-user-operation-log-query/) method.
    //
    //Future<CountResultDto> queryUserOperationCount({ String deploymentId, String processDefinitionId, String processDefinitionKey, String processInstanceId, String executionId, String caseDefinitionId, String caseInstanceId, String caseExecutionId, String taskId, String externalTaskId, String batchId, String jobId, String jobDefinitionId, String userId, String operationId, String operationType, String entityType, String entityTypeIn, String category, String categoryIn, String property, DateTime afterTimestamp, DateTime beforeTimestamp }) async
    test('test queryUserOperationCount', () async {
      // TODO
    });

    // Get User Operation Log (Historic)
    //
    // Queries for user operation log entries that fulfill the given parameters. The size of the result set can be retrieved by using the [Get User Operation Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/user-operation-log/get-user-operation-log-query-count/) method.  Note that the properties of operation log entries are interpreted as restrictions on the entities they apply to. That means, if a single process instance is updated, the field `processInstanceId` is populated. If a single operation updates all process instances of the same process definition, the field `processInstanceId` is `null` (a `null` restriction is viewed as a wildcard, i.e., matches a process instance with any id) and the field `processDefinitionId` is populated. This way, which entities were changed by a user operation can easily be reconstructed.
    //
    //Future<List<UserOperationLogEntryDto>> queryUserOperationEntries({ String deploymentId, String processDefinitionId, String processDefinitionKey, String processInstanceId, String executionId, String caseDefinitionId, String caseInstanceId, String caseExecutionId, String taskId, String externalTaskId, String batchId, String jobId, String jobDefinitionId, String userId, String operationId, String operationType, String entityType, String entityTypeIn, String category, String categoryIn, String property, DateTime afterTimestamp, DateTime beforeTimestamp, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test queryUserOperationEntries', () async {
      // TODO
    });

    // Set Annotation to an User Operation Log (Historic)
    //
    // Set an annotation for auditing reasons.
    //
    //Future setAnnotationUserOperationLog(String operationId, { AnnotationDto annotationDto }) async
    test('test setAnnotationUserOperationLog', () async {
      // TODO
    });

  });
}
