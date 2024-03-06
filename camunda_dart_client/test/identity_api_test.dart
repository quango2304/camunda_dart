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


/// tests for IdentityApi
void main() {
  // final instance = IdentityApi();

  group('tests for IdentityApi', () {
    // Validate Password
    //
    // A password policy consists of a list of rules that new passwords must follow to be policy compliant. A password can be checked for compliancy via this end point. More information on password policies in Camunda can be found in the password policy [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/password-policy/) and in the [security instructions](https://docs.camunda.org/manual/7.20/user-guide/security/).
    //
    //Future<CheckPasswordPolicyResultDto> checkPassword({ PasswordPolicyRequestDto passwordPolicyRequestDto }) async
    test('test checkPassword', () async {
      // TODO
    });

    // Get a User's Groups
    //
    // Gets the groups of a user by id and includes all users that share a group with the given user.
    //
    //Future<IdentityServiceGroupInfoDto> getGroupInfo(String userId) async
    test('test getGroupInfo', () async {
      // TODO
    });

    // Get Password Policy
    //
    // A password policy consists of a list of rules that new passwords must follow to be policy compliant. This end point returns a JSON representation of the list of policy rules. More information on password policies in Camunda can be found in the password policy [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/password-policy/) and in the [security instructions](https://docs.camunda.org/manual/7.20/user-guide/security/).
    //
    //Future<PasswordPolicyDto> getPasswordPolicy() async
    test('test getPasswordPolicy', () async {
      // TODO
    });

    // Verify User
    //
    // Verifies that user credentials are valid.
    //
    //Future<AuthenticationResult> verifyUser({ BasicUserCredentialsDto basicUserCredentialsDto }) async
    test('test verifyUser', () async {
      // TODO
    });

  });
}
