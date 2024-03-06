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

// tests for HistoricIncidentDto
void main() {
  // final instance = HistoricIncidentDto();

  group('test HistoricIncidentDto', () {
    // The id of the incident.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The key of the process definition this incident is associated with.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // The id of the process definition this incident is associated with.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // The key of the process definition this incident is associated with.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // The id of the execution this incident is associated with.
    // String executionId
    test('to test the property `executionId`', () async {
      // TODO
    });

    // The process instance id of the root process instance that initiated the process containing this incident.
    // String rootProcessInstanceId
    test('to test the property `rootProcessInstanceId`', () async {
      // TODO
    });

    // The time this incident happened.  [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
    // DateTime createTime
    test('to test the property `createTime`', () async {
      // TODO
    });

    // The time this incident has been deleted or resolved.  [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
    // DateTime endTime
    test('to test the property `endTime`', () async {
      // TODO
    });

    // The time after which the incident should be removed by the History Cleanup job. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
    // DateTime removalTime
    test('to test the property `removalTime`', () async {
      // TODO
    });

    // The type of incident, for example: `failedJobs` will be returned in case of an incident which identified a failed job during the execution of a process instance. See the [User Guide](/manual/develop/user- guide/process-engine/incidents/#incident-types) for a list of incident types.
    // String incidentType
    test('to test the property `incidentType`', () async {
      // TODO
    });

    // The id of the activity this incident is associated with.
    // String activityId
    test('to test the property `activityId`', () async {
      // TODO
    });

    // The id of the activity on which the last exception occurred.
    // String failedActivityId
    test('to test the property `failedActivityId`', () async {
      // TODO
    });

    // The id of the associated cause incident which has been triggered.
    // String causeIncidentId
    test('to test the property `causeIncidentId`', () async {
      // TODO
    });

    // The id of the associated root cause incident which has been triggered.
    // String rootCauseIncidentId
    test('to test the property `rootCauseIncidentId`', () async {
      // TODO
    });

    // The payload of this incident.
    // String configuration
    test('to test the property `configuration`', () async {
      // TODO
    });

    // The payload of this incident at the time when it occurred.
    // String historyConfiguration
    test('to test the property `historyConfiguration`', () async {
      // TODO
    });

    // The message of this incident.
    // String incidentMessage
    test('to test the property `incidentMessage`', () async {
      // TODO
    });

    // The id of the tenant this incident is associated with.
    // String tenantId
    test('to test the property `tenantId`', () async {
      // TODO
    });

    // The job definition id the incident is associated with.
    // String jobDefinitionId
    test('to test the property `jobDefinitionId`', () async {
      // TODO
    });

    // If true, this incident is open.
    // bool open
    test('to test the property `open`', () async {
      // TODO
    });

    // If true, this incident has been deleted.
    // bool deleted
    test('to test the property `deleted`', () async {
      // TODO
    });

    // If true, this incident has been resolved.
    // bool resolved
    test('to test the property `resolved`', () async {
      // TODO
    });

    // The annotation set to the incident.
    // String annotation
    test('to test the property `annotation`', () async {
      // TODO
    });


  });

}
