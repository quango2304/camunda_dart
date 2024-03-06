//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/authorization_api.dart';
part 'api/batch_api.dart';
part 'api/condition_api.dart';
part 'api/decision_definition_api.dart';
part 'api/decision_requirements_definition_api.dart';
part 'api/deployment_api.dart';
part 'api/engine_api.dart';
part 'api/event_subscription_api.dart';
part 'api/execution_api.dart';
part 'api/external_task_api.dart';
part 'api/filter_api.dart';
part 'api/group_api.dart';
part 'api/historic_activity_instance_api.dart';
part 'api/historic_batch_api.dart';
part 'api/historic_decision_definition_api.dart';
part 'api/historic_decision_instance_api.dart';
part 'api/historic_decision_requirements_definition_api.dart';
part 'api/historic_detail_api.dart';
part 'api/historic_external_task_log_api.dart';
part 'api/historic_identity_link_log_api.dart';
part 'api/historic_incident_api.dart';
part 'api/historic_job_log_api.dart';
part 'api/historic_process_definition_api.dart';
part 'api/historic_process_instance_api.dart';
part 'api/historic_task_instance_api.dart';
part 'api/historic_user_operation_log_api.dart';
part 'api/historic_variable_instance_api.dart';
part 'api/history_cleanup_api.dart';
part 'api/identity_api.dart';
part 'api/incident_api.dart';
part 'api/job_api.dart';
part 'api/job_definition_api.dart';
part 'api/message_api.dart';
part 'api/metrics_api.dart';
part 'api/migration_api.dart';
part 'api/modification_api.dart';
part 'api/process_definition_api.dart';
part 'api/process_instance_api.dart';
part 'api/schema_log_api.dart';
part 'api/signal_api.dart';
part 'api/task_api.dart';
part 'api/task_attachment_api.dart';
part 'api/task_comment_api.dart';
part 'api/task_identity_link_api.dart';
part 'api/task_local_variable_api.dart';
part 'api/task_variable_api.dart';
part 'api/telemetry_api.dart';
part 'api/tenant_api.dart';
part 'api/user_api.dart';
part 'api/variable_instance_api.dart';
part 'api/version_api.dart';

part 'model/abstract_set_removal_time_dto.dart';
part 'model/abstract_vendor_version_information_dto.dart';
part 'model/activity_instance_dto.dart';
part 'model/activity_instance_incident_dto.dart';
part 'model/activity_statistics_result_dto.dart';
part 'model/annotation_dto.dart';
part 'model/atom_link.dart';
part 'model/attachment_dto.dart';
part 'model/authentication_result.dart';
part 'model/authorization_check_result_dto.dart';
part 'model/authorization_create_dto.dart';
part 'model/authorization_dto.dart';
part 'model/authorization_exception_dto.dart';
part 'model/authorization_update_dto.dart';
part 'model/basic_user_credentials_dto.dart';
part 'model/batch_dto.dart';
part 'model/batch_statistics_dto.dart';
part 'model/called_process_definition_dto.dart';
part 'model/camunda_form_ref.dart';
part 'model/case_definition_dto.dart';
part 'model/check_password_policy_result_dto.dart';
part 'model/check_password_policy_rule_dto.dart';
part 'model/cleanable_historic_batch_report_result_dto.dart';
part 'model/cleanable_historic_decision_instance_report_result_dto.dart';
part 'model/cleanable_historic_process_instance_report_result_dto.dart';
part 'model/comment_dto.dart';
part 'model/complete_external_task_dto.dart';
part 'model/complete_task_dto.dart';
part 'model/condition_query_parameter_dto.dart';
part 'model/correlation_message_async_dto.dart';
part 'model/correlation_message_dto.dart';
part 'model/count_result_dto.dart';
part 'model/create_filter_dto.dart';
part 'model/create_incident_dto.dart';
part 'model/decision_definition_diagram_dto.dart';
part 'model/decision_definition_dto.dart';
part 'model/decision_requirements_definition_dto.dart';
part 'model/decision_requirements_definition_xml_dto.dart';
part 'model/delete_historic_decision_instances_dto.dart';
part 'model/delete_historic_process_instances_dto.dart';
part 'model/delete_process_instances_dto.dart';
part 'model/deployment_dto.dart';
part 'model/deployment_resource_dto.dart';
part 'model/deployment_with_definitions_dto.dart';
part 'model/duration_report_result_dto.dart';
part 'model/evaluate_decision_dto.dart';
part 'model/evaluation_condition_dto.dart';
part 'model/event_subscription_dto.dart';
part 'model/event_subscription_query_dto.dart';
part 'model/event_subscription_query_dto_sorting_inner.dart';
part 'model/exception_dto.dart';
part 'model/execution_dto.dart';
part 'model/execution_query_dto.dart';
part 'model/execution_query_dto_sorting_inner.dart';
part 'model/execution_trigger_dto.dart';
part 'model/extend_lock_on_external_task_dto.dart';
part 'model/external_task_bpmn_error.dart';
part 'model/external_task_dto.dart';
part 'model/external_task_failure_dto.dart';
part 'model/external_task_query_dto.dart';
part 'model/external_task_query_dto_sorting_inner.dart';
part 'model/fetch_external_task_topic_dto.dart';
part 'model/fetch_external_tasks_dto.dart';
part 'model/filter_dto.dart';
part 'model/form_dto.dart';
part 'model/group_dto.dart';
part 'model/group_query_dto.dart';
part 'model/group_query_dto_sorting_inner.dart';
part 'model/handle_external_task_dto.dart';
part 'model/historic_activity_instance_dto.dart';
part 'model/historic_activity_instance_query_dto.dart';
part 'model/historic_activity_instance_query_dto_sorting_inner.dart';
part 'model/historic_activity_statistics_dto.dart';
part 'model/historic_batch_dto.dart';
part 'model/historic_batch_query_dto.dart';
part 'model/historic_batch_query_dto_sorting_inner.dart';
part 'model/historic_decision_input_instance_dto.dart';
part 'model/historic_decision_instance_dto.dart';
part 'model/historic_decision_instance_query_dto.dart';
part 'model/historic_decision_instance_statistics_dto.dart';
part 'model/historic_decision_output_instance_dto.dart';
part 'model/historic_detail_dto.dart';
part 'model/historic_detail_query_dto.dart';
part 'model/historic_detail_query_dto_sorting_inner.dart';
part 'model/historic_external_task_log_dto.dart';
part 'model/historic_external_task_log_query_dto.dart';
part 'model/historic_external_task_log_query_dto_sorting_inner.dart';
part 'model/historic_identity_link_log_dto.dart';
part 'model/historic_incident_dto.dart';
part 'model/historic_job_log_dto.dart';
part 'model/historic_job_log_query_dto.dart';
part 'model/historic_job_log_query_dto_sorting_inner.dart';
part 'model/historic_process_instance_dto.dart';
part 'model/historic_process_instance_query_dto.dart';
part 'model/historic_process_instance_query_dto_sorting_inner.dart';
part 'model/historic_task_instance_dto.dart';
part 'model/historic_task_instance_query_dto.dart';
part 'model/historic_task_instance_query_dto_sorting_inner.dart';
part 'model/historic_task_instance_report_result_dto.dart';
part 'model/historic_variable_instance_dto.dart';
part 'model/historic_variable_instance_query_dto.dart';
part 'model/historic_variable_instance_query_dto_sorting_inner.dart';
part 'model/history_cleanup_configuration_dto.dart';
part 'model/history_time_to_live_dto.dart';
part 'model/identity_link_dto.dart';
part 'model/identity_service_group_dto.dart';
part 'model/identity_service_group_info_dto.dart';
part 'model/identity_service_user_dto.dart';
part 'model/incident_dto.dart';
part 'model/incident_statistics_result_dto.dart';
part 'model/job_condition_query_parameter_dto.dart';
part 'model/job_definition_dto.dart';
part 'model/job_definition_priority_dto.dart';
part 'model/job_definition_query_dto.dart';
part 'model/job_definition_query_dto_sorting_inner.dart';
part 'model/job_definition_suspension_state_dto.dart';
part 'model/job_definitions_suspension_state_dto.dart';
part 'model/job_dto.dart';
part 'model/job_duedate_dto.dart';
part 'model/job_query_dto.dart';
part 'model/job_query_dto_sorting_inner.dart';
part 'model/job_retries_dto.dart';
part 'model/job_suspension_state_dto.dart';
part 'model/linkable_dto.dart';
part 'model/lock_external_task_dto.dart';
part 'model/locked_external_task_dto.dart';
part 'model/message_correlation_result_with_variable_dto.dart';
part 'model/metrics_interval_result_dto.dart';
part 'model/metrics_result_dto.dart';
part 'model/migration_execution_dto.dart';
part 'model/migration_instruction_dto.dart';
part 'model/migration_instruction_validation_report_dto.dart';
part 'model/migration_plan_dto.dart';
part 'model/migration_plan_generation_dto.dart';
part 'model/migration_plan_report_dto.dart';
part 'model/migration_variable_validation_report_dto.dart';
part 'model/missing_authorization_dto.dart';
part 'model/modification_dto.dart';
part 'model/multiple_process_instance_modification_instruction_dto.dart';
part 'model/parse_exception_dto.dart';
part 'model/password_policy_dto.dart';
part 'model/password_policy_request_dto.dart';
part 'model/password_policy_rule_dto.dart';
part 'model/patch_variables_dto.dart';
part 'model/priority_dto.dart';
part 'model/problem_dto.dart';
part 'model/process_definition_diagram_dto.dart';
part 'model/process_definition_dto.dart';
part 'model/process_definition_statistics_result_dto.dart';
part 'model/process_definition_suspension_state_dto.dart';
part 'model/process_engine_dto.dart';
part 'model/process_instance_dto.dart';
part 'model/process_instance_modification_dto.dart';
part 'model/process_instance_modification_instruction_dto.dart';
part 'model/process_instance_query_dto.dart';
part 'model/process_instance_query_dto_sorting_inner.dart';
part 'model/process_instance_suspension_state_async_dto.dart';
part 'model/process_instance_suspension_state_dto.dart';
part 'model/process_instance_with_variables_dto.dart';
part 'model/redeployment_dto.dart';
part 'model/resource_options_dto.dart';
part 'model/resource_report_dto.dart';
part 'model/restart_process_instance_dto.dart';
part 'model/restart_process_instance_modification_instruction_dto.dart';
part 'model/retries_dto.dart';
part 'model/schema_log_entry_dto.dart';
part 'model/schema_log_query_dto.dart';
part 'model/schema_log_query_dto_sorting_inner.dart';
part 'model/set_job_retries_by_process_dto.dart';
part 'model/set_job_retries_dto.dart';
part 'model/set_removal_time_to_historic_batches_dto.dart';
part 'model/set_removal_time_to_historic_decision_instances_dto.dart';
part 'model/set_removal_time_to_historic_process_instances_dto.dart';
part 'model/set_retries_for_external_tasks_dto.dart';
part 'model/set_variables_async_dto.dart';
part 'model/signal_dto.dart';
part 'model/sort_task_query_parameters_dto.dart';
part 'model/start_process_instance_dto.dart';
part 'model/start_process_instance_form_dto.dart';
part 'model/suspension_state_dto.dart';
part 'model/task_bpmn_error_dto.dart';
part 'model/task_count_by_candidate_group_result_dto.dart';
part 'model/task_dto.dart';
part 'model/task_escalation_dto.dart';
part 'model/task_query_dto.dart';
part 'model/task_query_dto_sorting_inner.dart';
part 'model/telemetry_configuration_dto.dart';
part 'model/telemetry_count_dto.dart';
part 'model/telemetry_data_dto.dart';
part 'model/telemetry_internals_dto.dart';
part 'model/telemetry_license_key_dto.dart';
part 'model/telemetry_product_dto.dart';
part 'model/tenant_dto.dart';
part 'model/transition_instance_dto.dart';
part 'model/trigger_variable_value_dto.dart';
part 'model/user_credentials_dto.dart';
part 'model/user_dto.dart';
part 'model/user_id_dto.dart';
part 'model/user_operation_log_entry_dto.dart';
part 'model/user_profile_dto.dart';
part 'model/variable_instance_dto.dart';
part 'model/variable_instance_query_dto.dart';
part 'model/variable_instance_query_dto_sorting_inner.dart';
part 'model/variable_query_parameter_dto.dart';
part 'model/variable_value_dto.dart';
part 'model/version_dto.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
