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

// tests for AuthorizationDto
void main() {
  // final instance = AuthorizationDto();

  group('test AuthorizationDto', () {
    // The id of the authorization.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The type of the authorization (0=global, 1=grant, 2=revoke). See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service.md#authorization-type) for more information about authorization types.
    // int type
    test('to test the property `type`', () async {
      // TODO
    });

    // An array of Strings holding the permissions provided by this authorization.
    // List<String> permissions (default value: const [])
    test('to test the property `permissions`', () async {
      // TODO
    });

    // The id of the user this authorization has been created for. The value `*` represents a global authorization ranging over all users.
    // String userId
    test('to test the property `userId`', () async {
      // TODO
    });

    // The id of the group this authorization has been created for.
    // String groupId
    test('to test the property `groupId`', () async {
      // TODO
    });

    // An integer representing the resource type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#resources) for a list of integer representations of resource types.
    // int resourceType
    test('to test the property `resourceType`', () async {
      // TODO
    });

    // The resource Id. The value `*` represents an authorization ranging over all instances of a resource.
    // String resourceId
    test('to test the property `resourceId`', () async {
      // TODO
    });

    // The removal time indicates the date a historic instance authorization is cleaned up. A removal time can only be assigned to a historic instance authorization. Can be `null` when not related to a historic instance resource or when the removal time strategy is end and the root process instance is not finished. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
    // DateTime removalTime
    test('to test the property `removalTime`', () async {
      // TODO
    });

    // The process instance id of the root process instance the historic instance authorization is related to. Can be `null` if not related to a historic instance resource.
    // String rootProcessInstanceId
    test('to test the property `rootProcessInstanceId`', () async {
      // TODO
    });


  });

}
