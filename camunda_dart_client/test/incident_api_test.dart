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


/// tests for IncidentApi
void main() {
  // final instance = IncidentApi();

  group('tests for IncidentApi', () {
    // Clear Incident Annotation
    //
    // Clears the annotation of an incident with given id.
    //
    //Future clearIncidentAnnotation(String id) async
    test('test clearIncidentAnnotation', () async {
      // TODO
    });

    // Get Incident
    //
    // Retrieves an incident by ID.
    //
    //Future<IncidentDto> getIncident(String id) async
    test('test getIncident', () async {
      // TODO
    });

    // Get List
    //
    // Queries for incidents that fulfill given parameters. The size of the result set can be retrieved by using the [Get Incident Count](https://docs.camunda.org/manual/7.20/reference/rest/incident/get-query-count/) method.
    //
    //Future<List<IncidentDto>> getIncidents({ String incidentId, String incidentType, String incidentMessage, String incidentMessageLike, String processDefinitionId, String processDefinitionKeyIn, String processInstanceId, String executionId, DateTime incidentTimestampBefore, DateTime incidentTimestampAfter, String activityId, String failedActivityId, String causeIncidentId, String rootCauseIncidentId, String configuration, String tenantIdIn, String jobDefinitionIdIn, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getIncidents', () async {
      // TODO
    });

    // Get List Count
    //
    // Queries for the number of incidents that fulfill given parameters. Takes the same parameters as the [Get Incidents](https://docs.camunda.org/manual/7.20/reference/rest/incident/get-query/) method.
    //
    //Future<CountResultDto> getIncidentsCount({ String incidentId, String incidentType, String incidentMessage, String incidentMessageLike, String processDefinitionId, String processDefinitionKeyIn, String processInstanceId, String executionId, DateTime incidentTimestampBefore, DateTime incidentTimestampAfter, String activityId, String failedActivityId, String causeIncidentId, String rootCauseIncidentId, String configuration, String tenantIdIn, String jobDefinitionIdIn }) async
    test('test getIncidentsCount', () async {
      // TODO
    });

    // Resolve Incident
    //
    // Resolves an incident with given id.
    //
    //Future resolveIncident(String id) async
    test('test resolveIncident', () async {
      // TODO
    });

    // Set Incident Annotation
    //
    // Sets the annotation of an incident with given id.
    //
    //Future setIncidentAnnotation(String id, { AnnotationDto annotationDto }) async
    test('test setIncidentAnnotation', () async {
      // TODO
    });

  });
}
