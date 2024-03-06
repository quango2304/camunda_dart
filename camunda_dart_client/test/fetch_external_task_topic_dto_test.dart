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

// tests for FetchExternalTaskTopicDto
void main() {
  // final instance = FetchExternalTaskTopicDto();

  group('test FetchExternalTaskTopicDto', () {
    // **Mandatory.** The topic's name.
    // String topicName
    test('to test the property `topicName`', () async {
      // TODO
    });

    // **Mandatory.** The duration to lock the external tasks for in milliseconds.
    // int lockDuration
    test('to test the property `lockDuration`', () async {
      // TODO
    });

    // A JSON array of `String` values that represent variable names. For each result task belonging to this topic, the given variables are returned as well if they are accessible from the external task's execution. If not provided - all variables will be fetched.
    // List<String> variables (default value: const [])
    test('to test the property `variables`', () async {
      // TODO
    });

    // If `true` only local variables will be fetched.
    // bool localVariables (default value: false)
    test('to test the property `localVariables`', () async {
      // TODO
    });

    // A `String` value which enables the filtering of tasks based on process instance business key.
    // String businessKey
    test('to test the property `businessKey`', () async {
      // TODO
    });

    // Filter tasks based on process definition id.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // Filter tasks based on process definition ids.
    // List<String> processDefinitionIdIn (default value: const [])
    test('to test the property `processDefinitionIdIn`', () async {
      // TODO
    });

    // Filter tasks based on process definition key.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // Filter tasks based on process definition keys.
    // List<String> processDefinitionKeyIn (default value: const [])
    test('to test the property `processDefinitionKeyIn`', () async {
      // TODO
    });

    // Filter tasks based on process definition version tag.
    // String processDefinitionVersionTag
    test('to test the property `processDefinitionVersionTag`', () async {
      // TODO
    });

    // Filter tasks without tenant id.
    // bool withoutTenantId (default value: false)
    test('to test the property `withoutTenantId`', () async {
      // TODO
    });

    // Filter tasks based on tenant ids.
    // List<String> tenantIdIn (default value: const [])
    test('to test the property `tenantIdIn`', () async {
      // TODO
    });

    // A `JSON` object used for filtering tasks based on process instance variable values. A property name of the object represents a process variable name, while the property value represents the process variable value to filter tasks by.
    // Map<String, Object> processVariables (default value: const {})
    test('to test the property `processVariables`', () async {
      // TODO
    });

    // Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `false`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.
    // bool deserializeValues (default value: false)
    test('to test the property `deserializeValues`', () async {
      // TODO
    });

    // Determines whether custom extension properties defined in the BPMN activity of the external task (e.g. via the Extensions tab in the Camunda modeler) should be included in the response. Default: false
    // bool includeExtensionProperties (default value: false)
    test('to test the property `includeExtensionProperties`', () async {
      // TODO
    });


  });

}
