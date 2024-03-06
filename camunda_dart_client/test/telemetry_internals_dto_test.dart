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

// tests for TelemetryInternalsDto
void main() {
  // final instance = TelemetryInternalsDto();

  group('test TelemetryInternalsDto', () {
    // AbstractVendorVersionInformationDto database
    test('to test the property `database`', () async {
      // TODO
    });

    // AbstractVendorVersionInformationDto applicationServer
    test('to test the property `applicationServer`', () async {
      // TODO
    });

    // TelemetryLicenseKeyDto licenseKey
    test('to test the property `licenseKey`', () async {
      // TODO
    });

    // List of Camunda integrations used (e.g., Camunda Spring Boot Starter, Camunda Run, WildFly/JBoss subsystem, Camunda EJB).
    // List<String> camundaIntegration (default value: const [])
    test('to test the property `camundaIntegration`', () async {
      // TODO
    });

    // The count of executed commands after the last retrieved data.
    // Map<String, TelemetryCountDto> commands (default value: const {})
    test('to test the property `commands`', () async {
      // TODO
    });

    // The collected metrics are the number of root process instance executions started, the number of activity instances started or also known as flow node instances, and the number of executed decision instances and elements.
    // Map<String, TelemetryCountDto> metrics (default value: const {})
    test('to test the property `metrics`', () async {
      // TODO
    });

    // The webapps enabled in this installation of Camunda.
    // List<String> webapps (default value: const [])
    test('to test the property `webapps`', () async {
      // TODO
    });

    // AbstractVendorVersionInformationDto jdk
    test('to test the property `jdk`', () async {
      // TODO
    });

    // The date when the engine started to collect dynamic data, such as command executions and metrics. If telemetry sending is enabled, dynamic data resets on sending the data to Camunda. Dynamic data and the date returned by this method are reset in three cases: engine startup, after engine start when sending telemetry data to Camunda is enabled via API, after sending telemetry data to Camunda (only when this was enabled) The date is in the format <code>YYYY-MM-DD'T'HH:mm:ss.SSSZ</code>.
    // DateTime dataCollectionStartDate
    test('to test the property `dataCollectionStartDate`', () async {
      // TODO
    });


  });

}
