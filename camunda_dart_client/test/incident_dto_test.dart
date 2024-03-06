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

// tests for IncidentDto
void main() {
  // final instance = IncidentDto();

  group('test IncidentDto', () {
    // The id of the incident.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The id of the process definition this incident is associated with.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // The id of the process instance this incident is associated with.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // The id of the execution this incident is associated with.
    // String executionId
    test('to test the property `executionId`', () async {
      // TODO
    });

    // The time this incident happened. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime incidentTimestamp
    test('to test the property `incidentTimestamp`', () async {
      // TODO
    });

    // The type of incident, for example: `failedJobs` will be returned in case of an incident which identified a failed job during the execution of a process instance. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
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

    // The id of the tenant this incident is associated with.
    // String tenantId
    test('to test the property `tenantId`', () async {
      // TODO
    });

    // The message of this incident.
    // String incidentMessage
    test('to test the property `incidentMessage`', () async {
      // TODO
    });

    // The job definition id the incident is associated with.
    // String jobDefinitionId
    test('to test the property `jobDefinitionId`', () async {
      // TODO
    });

    // The annotation set to the incident.
    // String annotation
    test('to test the property `annotation`', () async {
      // TODO
    });


  });

}
