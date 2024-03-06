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


/// tests for HistoricIncidentApi
void main() {
  // final instance = HistoricIncidentApi();

  group('tests for HistoricIncidentApi', () {
    // Get Incidents
    //
    // Queries for historic incidents that fulfill given parameters. The size of the result set can be retrieved by using the [Get Incident Count](https://docs.camunda.org/manual/7.20/reference/rest/history/incident/get-incident-query-count/) method.
    //
    //Future<List<HistoricIncidentDto>> getHistoricIncidents({ String incidentId, String incidentType, String incidentMessage, String incidentMessageLike, String processDefinitionId, String processDefinitionKey, String processDefinitionKeyIn, String processInstanceId, String executionId, DateTime createTimeBefore, DateTime createTimeAfter, DateTime endTimeBefore, DateTime endTimeAfter, String activityId, String failedActivityId, String causeIncidentId, String rootCauseIncidentId, String configuration, String historyConfiguration, bool open, bool resolved, bool deleted, String tenantIdIn, bool withoutTenantId, String jobDefinitionIdIn, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getHistoricIncidents', () async {
      // TODO
    });

    // Get Incident Count
    //
    // Queries for the number of historic incidents that fulfill the given parameters. Takes the same parameters as the [Get Incidents](https://docs.camunda.org/manual/7.20/reference/rest/history/incident/get-incident-query/) method.
    //
    //Future<CountResultDto> getHistoricIncidentsCount({ String incidentId, String incidentType, String incidentMessage, String incidentMessageLike, String processDefinitionId, String processDefinitionKey, String processDefinitionKeyIn, String processInstanceId, String executionId, DateTime createTimeBefore, DateTime createTimeAfter, DateTime endTimeBefore, DateTime endTimeAfter, String activityId, String failedActivityId, String causeIncidentId, String rootCauseIncidentId, String configuration, String historyConfiguration, bool open, bool resolved, bool deleted, String tenantIdIn, bool withoutTenantId, String jobDefinitionIdIn }) async
    test('test getHistoricIncidentsCount', () async {
      // TODO
    });

  });
}
