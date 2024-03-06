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

// tests for HistoricDecisionInstanceDto
void main() {
  // final instance = HistoricDecisionInstanceDto();

  group('test HistoricDecisionInstanceDto', () {
    // The id of the decision instance.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The id of the decision definition that this decision instance belongs to.
    // String decisionDefinitionId
    test('to test the property `decisionDefinitionId`', () async {
      // TODO
    });

    // The key of the decision definition that this decision instance belongs to.
    // String decisionDefinitionKey
    test('to test the property `decisionDefinitionKey`', () async {
      // TODO
    });

    // The name of the decision definition that this decision instance belongs to.
    // String decisionDefinitionName
    test('to test the property `decisionDefinitionName`', () async {
      // TODO
    });

    // The time the instance was evaluated.  [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
    // DateTime evaluationTime
    test('to test the property `evaluationTime`', () async {
      // TODO
    });

    // The time after which the instance should be removed by the History Cleanup job. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
    // DateTime removalTime
    test('to test the property `removalTime`', () async {
      // TODO
    });

    // The id of the process definition that this decision instance belongs to.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // The key of the process definition that this decision instance belongs to.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // The id of the process instance that this decision instance belongs to.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // The id of the case definition that this decision instance belongs to.
    // String caseDefinitionId
    test('to test the property `caseDefinitionId`', () async {
      // TODO
    });

    // The key of the case definition that this decision instance belongs to.
    // String caseDefinitionKey
    test('to test the property `caseDefinitionKey`', () async {
      // TODO
    });

    // The id of the case instance that this decision instance belongs to.
    // String caseInstanceId
    test('to test the property `caseInstanceId`', () async {
      // TODO
    });

    // The id of the activity that this decision instance belongs to.
    // String activityId
    test('to test the property `activityId`', () async {
      // TODO
    });

    // The id of the activity instance that this decision instance belongs to.
    // String activityInstanceId
    test('to test the property `activityInstanceId`', () async {
      // TODO
    });

    // The tenant id of the historic decision instance.
    // String tenantId
    test('to test the property `tenantId`', () async {
      // TODO
    });

    // The id of the authenticated user that has evaluated this decision instance without a process or case instance.
    // String userId
    test('to test the property `userId`', () async {
      // TODO
    });

    // The list of decision input values. **Only exists** if `includeInputs` was set to `true` in the query.
    // List<HistoricDecisionInputInstanceDto> inputs (default value: const [])
    test('to test the property `inputs`', () async {
      // TODO
    });

    // The list of decision output values. **Only exists** if `includeOutputs` was set to `true` in the query.
    // List<HistoricDecisionOutputInstanceDto> ouputs (default value: const [])
    test('to test the property `ouputs`', () async {
      // TODO
    });

    // The result of the collect aggregation of the decision result if used. `null` if no aggregation was used.
    // double collectResultValue
    test('to test the property `collectResultValue`', () async {
      // TODO
    });

    // The decision instance id of the evaluated root decision. Can be `null` if this instance is the root decision instance of the evaluation.
    // String rootDecisionInstanceId
    test('to test the property `rootDecisionInstanceId`', () async {
      // TODO
    });

    // The process instance id of the root process instance that initiated the evaluation of this decision. Can be `null` if this decision instance is not evaluated as part of a BPMN process.
    // String rootProcessInstanceId
    test('to test the property `rootProcessInstanceId`', () async {
      // TODO
    });

    // The id of the decision requirements definition that this decision instance belongs to.
    // String decisionRequirementsDefinitionId
    test('to test the property `decisionRequirementsDefinitionId`', () async {
      // TODO
    });

    // The key of the decision requirements definition that this decision instance belongs to.
    // String decisionRequirementsDefinitionKey
    test('to test the property `decisionRequirementsDefinitionKey`', () async {
      // TODO
    });


  });

}
