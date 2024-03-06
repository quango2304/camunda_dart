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


/// tests for HistoricIdentityLinkLogApi
void main() {
  // final instance = HistoricIdentityLinkLogApi();

  group('tests for HistoricIdentityLinkLogApi', () {
    // Get Identity Link Logs
    //
    // Queries for historic identity link logs that fulfill given parameters. The size of the result set can be retrieved by using the [Get Identity-Link-Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/identity-links/get-identity-link-query-count/) method.
    //
    //Future<List<HistoricIdentityLinkLogDto>> getHistoricIdentityLinks({ String type, String userId, String groupId, DateTime dateBefore, DateTime dateAfter, String taskId, String processDefinitionId, String processDefinitionKey, String operationType, String assignerId, String tenantIdIn, bool withoutTenantId, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getHistoricIdentityLinks', () async {
      // TODO
    });

    // Get Identity Link Log Count
    //
    // Queries for the number of historic identity link logs that fulfill the given parameters. Takes the same parameters as the [Get Identity-Link-Logs](https://docs.camunda.org/manual/7.20/reference/rest/history/identity-links/get-identity-link-query/) method.
    //
    //Future<CountResultDto> getHistoricIdentityLinksCount({ String type, String userId, String groupId, DateTime dateBefore, DateTime dateAfter, String taskId, String processDefinitionId, String processDefinitionKey, String operationType, String assignerId, String tenantIdIn, bool withoutTenantId }) async
    test('test getHistoricIdentityLinksCount', () async {
      // TODO
    });

  });
}
