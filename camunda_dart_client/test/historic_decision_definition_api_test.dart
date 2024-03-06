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


/// tests for HistoricDecisionDefinitionApi
void main() {
  // final instance = HistoricDecisionDefinitionApi();

  group('tests for HistoricDecisionDefinitionApi', () {
    // Get Cleanable Decision Instance Report
    //
    // Retrieves a report about a decision definition and finished decision instances relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)),  so that you can tune the history time to live. These reports include the count of the finished historic decision instances, cleanable decision instances and basic decision definition data - id, key, name and version. The size of the result set can be retrieved by using the  [Get Cleanable Decision Instance Report Count](https://docs.camunda.org/manual/7.20/reference/rest/history/decision-definition/get-cleanable-decision-instance-report-count/) method.
    //
    //Future<List<CleanableHistoricDecisionInstanceReportResultDto>> getCleanableHistoricDecisionInstanceReport({ String decisionDefinitionIdIn, String decisionDefinitionKeyIn, String tenantIdIn, bool withoutTenantId, bool compact, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getCleanableHistoricDecisionInstanceReport', () async {
      // TODO
    });

    // Get Cleanable Decision Instance Report Count
    //
    // Queries for the number of report results about a decision definition and finished decision instances relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)). Takes the same parameters as the [Get Cleanable Decision Instance Report](https://docs.camunda.org/manual/7.20/reference/rest/history/decision-definition/get-cleanable-decision-instance-report/)  method.
    //
    //Future<CountResultDto> getCleanableHistoricDecisionInstanceReportCount({ String decisionDefinitionIdIn, String decisionDefinitionKeyIn, String tenantIdIn, bool withoutTenantId, bool compact }) async
    test('test getCleanableHistoricDecisionInstanceReportCount', () async {
      // TODO
    });

  });
}
