//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'http://localhost:8080/engine-rest', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'AbstractSetRemovalTimeDto':
          return AbstractSetRemovalTimeDto.fromJson(value);
        case 'AbstractVendorVersionInformationDto':
          return AbstractVendorVersionInformationDto.fromJson(value);
        case 'ActivityInstanceDto':
          return ActivityInstanceDto.fromJson(value);
        case 'ActivityInstanceIncidentDto':
          return ActivityInstanceIncidentDto.fromJson(value);
        case 'ActivityStatisticsResultDto':
          return ActivityStatisticsResultDto.fromJson(value);
        case 'AnnotationDto':
          return AnnotationDto.fromJson(value);
        case 'AtomLink':
          return AtomLink.fromJson(value);
        case 'AttachmentDto':
          return AttachmentDto.fromJson(value);
        case 'AuthenticationResult':
          return AuthenticationResult.fromJson(value);
        case 'AuthorizationCheckResultDto':
          return AuthorizationCheckResultDto.fromJson(value);
        case 'AuthorizationCreateDto':
          return AuthorizationCreateDto.fromJson(value);
        case 'AuthorizationDto':
          return AuthorizationDto.fromJson(value);
        case 'AuthorizationExceptionDto':
          return AuthorizationExceptionDto.fromJson(value);
        case 'AuthorizationUpdateDto':
          return AuthorizationUpdateDto.fromJson(value);
        case 'BasicUserCredentialsDto':
          return BasicUserCredentialsDto.fromJson(value);
        case 'BatchDto':
          return BatchDto.fromJson(value);
        case 'BatchStatisticsDto':
          return BatchStatisticsDto.fromJson(value);
        case 'CalledProcessDefinitionDto':
          return CalledProcessDefinitionDto.fromJson(value);
        case 'CamundaFormRef':
          return CamundaFormRef.fromJson(value);
        case 'CaseDefinitionDto':
          return CaseDefinitionDto.fromJson(value);
        case 'CheckPasswordPolicyResultDto':
          return CheckPasswordPolicyResultDto.fromJson(value);
        case 'CheckPasswordPolicyRuleDto':
          return CheckPasswordPolicyRuleDto.fromJson(value);
        case 'CleanableHistoricBatchReportResultDto':
          return CleanableHistoricBatchReportResultDto.fromJson(value);
        case 'CleanableHistoricDecisionInstanceReportResultDto':
          return CleanableHistoricDecisionInstanceReportResultDto.fromJson(value);
        case 'CleanableHistoricProcessInstanceReportResultDto':
          return CleanableHistoricProcessInstanceReportResultDto.fromJson(value);
        case 'CommentDto':
          return CommentDto.fromJson(value);
        case 'CompleteExternalTaskDto':
          return CompleteExternalTaskDto.fromJson(value);
        case 'CompleteTaskDto':
          return CompleteTaskDto.fromJson(value);
        case 'ConditionQueryParameterDto':
          return ConditionQueryParameterDto.fromJson(value);
        case 'CorrelationMessageAsyncDto':
          return CorrelationMessageAsyncDto.fromJson(value);
        case 'CorrelationMessageDto':
          return CorrelationMessageDto.fromJson(value);
        case 'CountResultDto':
          return CountResultDto.fromJson(value);
        case 'CreateFilterDto':
          return CreateFilterDto.fromJson(value);
        case 'CreateIncidentDto':
          return CreateIncidentDto.fromJson(value);
        case 'DecisionDefinitionDiagramDto':
          return DecisionDefinitionDiagramDto.fromJson(value);
        case 'DecisionDefinitionDto':
          return DecisionDefinitionDto.fromJson(value);
        case 'DecisionRequirementsDefinitionDto':
          return DecisionRequirementsDefinitionDto.fromJson(value);
        case 'DecisionRequirementsDefinitionXmlDto':
          return DecisionRequirementsDefinitionXmlDto.fromJson(value);
        case 'DeleteHistoricDecisionInstancesDto':
          return DeleteHistoricDecisionInstancesDto.fromJson(value);
        case 'DeleteHistoricProcessInstancesDto':
          return DeleteHistoricProcessInstancesDto.fromJson(value);
        case 'DeleteProcessInstancesDto':
          return DeleteProcessInstancesDto.fromJson(value);
        case 'DeploymentDto':
          return DeploymentDto.fromJson(value);
        case 'DeploymentResourceDto':
          return DeploymentResourceDto.fromJson(value);
        case 'DeploymentWithDefinitionsDto':
          return DeploymentWithDefinitionsDto.fromJson(value);
        case 'DurationReportResultDto':
          return DurationReportResultDto.fromJson(value);
        case 'EvaluateDecisionDto':
          return EvaluateDecisionDto.fromJson(value);
        case 'EvaluationConditionDto':
          return EvaluationConditionDto.fromJson(value);
        case 'EventSubscriptionDto':
          return EventSubscriptionDto.fromJson(value);
        case 'EventSubscriptionQueryDto':
          return EventSubscriptionQueryDto.fromJson(value);
        case 'EventSubscriptionQueryDtoSortingInner':
          return EventSubscriptionQueryDtoSortingInner.fromJson(value);
        case 'ExceptionDto':
          return ExceptionDto.fromJson(value);
        case 'ExecutionDto':
          return ExecutionDto.fromJson(value);
        case 'ExecutionQueryDto':
          return ExecutionQueryDto.fromJson(value);
        case 'ExecutionQueryDtoSortingInner':
          return ExecutionQueryDtoSortingInner.fromJson(value);
        case 'ExecutionTriggerDto':
          return ExecutionTriggerDto.fromJson(value);
        case 'ExtendLockOnExternalTaskDto':
          return ExtendLockOnExternalTaskDto.fromJson(value);
        case 'ExternalTaskBpmnError':
          return ExternalTaskBpmnError.fromJson(value);
        case 'ExternalTaskDto':
          return ExternalTaskDto.fromJson(value);
        case 'ExternalTaskFailureDto':
          return ExternalTaskFailureDto.fromJson(value);
        case 'ExternalTaskQueryDto':
          return ExternalTaskQueryDto.fromJson(value);
        case 'ExternalTaskQueryDtoSortingInner':
          return ExternalTaskQueryDtoSortingInner.fromJson(value);
        case 'FetchExternalTaskTopicDto':
          return FetchExternalTaskTopicDto.fromJson(value);
        case 'FetchExternalTasksDto':
          return FetchExternalTasksDto.fromJson(value);
        case 'FilterDto':
          return FilterDto.fromJson(value);
        case 'FormDto':
          return FormDto.fromJson(value);
        case 'GroupDto':
          return GroupDto.fromJson(value);
        case 'GroupQueryDto':
          return GroupQueryDto.fromJson(value);
        case 'GroupQueryDtoSortingInner':
          return GroupQueryDtoSortingInner.fromJson(value);
        case 'HandleExternalTaskDto':
          return HandleExternalTaskDto.fromJson(value);
        case 'HistoricActivityInstanceDto':
          return HistoricActivityInstanceDto.fromJson(value);
        case 'HistoricActivityInstanceQueryDto':
          return HistoricActivityInstanceQueryDto.fromJson(value);
        case 'HistoricActivityInstanceQueryDtoSortingInner':
          return HistoricActivityInstanceQueryDtoSortingInner.fromJson(value);
        case 'HistoricActivityStatisticsDto':
          return HistoricActivityStatisticsDto.fromJson(value);
        case 'HistoricBatchDto':
          return HistoricBatchDto.fromJson(value);
        case 'HistoricBatchQueryDto':
          return HistoricBatchQueryDto.fromJson(value);
        case 'HistoricBatchQueryDtoSortingInner':
          return HistoricBatchQueryDtoSortingInner.fromJson(value);
        case 'HistoricDecisionInputInstanceDto':
          return HistoricDecisionInputInstanceDto.fromJson(value);
        case 'HistoricDecisionInstanceDto':
          return HistoricDecisionInstanceDto.fromJson(value);
        case 'HistoricDecisionInstanceQueryDto':
          return HistoricDecisionInstanceQueryDto.fromJson(value);
        case 'HistoricDecisionInstanceStatisticsDto':
          return HistoricDecisionInstanceStatisticsDto.fromJson(value);
        case 'HistoricDecisionOutputInstanceDto':
          return HistoricDecisionOutputInstanceDto.fromJson(value);
        case 'HistoricDetailDto':
          return HistoricDetailDto.fromJson(value);
        case 'HistoricDetailQueryDto':
          return HistoricDetailQueryDto.fromJson(value);
        case 'HistoricDetailQueryDtoSortingInner':
          return HistoricDetailQueryDtoSortingInner.fromJson(value);
        case 'HistoricExternalTaskLogDto':
          return HistoricExternalTaskLogDto.fromJson(value);
        case 'HistoricExternalTaskLogQueryDto':
          return HistoricExternalTaskLogQueryDto.fromJson(value);
        case 'HistoricExternalTaskLogQueryDtoSortingInner':
          return HistoricExternalTaskLogQueryDtoSortingInner.fromJson(value);
        case 'HistoricIdentityLinkLogDto':
          return HistoricIdentityLinkLogDto.fromJson(value);
        case 'HistoricIncidentDto':
          return HistoricIncidentDto.fromJson(value);
        case 'HistoricJobLogDto':
          return HistoricJobLogDto.fromJson(value);
        case 'HistoricJobLogQueryDto':
          return HistoricJobLogQueryDto.fromJson(value);
        case 'HistoricJobLogQueryDtoSortingInner':
          return HistoricJobLogQueryDtoSortingInner.fromJson(value);
        case 'HistoricProcessInstanceDto':
          return HistoricProcessInstanceDto.fromJson(value);
        case 'HistoricProcessInstanceQueryDto':
          return HistoricProcessInstanceQueryDto.fromJson(value);
        case 'HistoricProcessInstanceQueryDtoSortingInner':
          return HistoricProcessInstanceQueryDtoSortingInner.fromJson(value);
        case 'HistoricTaskInstanceDto':
          return HistoricTaskInstanceDto.fromJson(value);
        case 'HistoricTaskInstanceQueryDto':
          return HistoricTaskInstanceQueryDto.fromJson(value);
        case 'HistoricTaskInstanceQueryDtoSortingInner':
          return HistoricTaskInstanceQueryDtoSortingInner.fromJson(value);
        case 'HistoricTaskInstanceReportResultDto':
          return HistoricTaskInstanceReportResultDto.fromJson(value);
        case 'HistoricVariableInstanceDto':
          return HistoricVariableInstanceDto.fromJson(value);
        case 'HistoricVariableInstanceQueryDto':
          return HistoricVariableInstanceQueryDto.fromJson(value);
        case 'HistoricVariableInstanceQueryDtoSortingInner':
          return HistoricVariableInstanceQueryDtoSortingInner.fromJson(value);
        case 'HistoryCleanupConfigurationDto':
          return HistoryCleanupConfigurationDto.fromJson(value);
        case 'HistoryTimeToLiveDto':
          return HistoryTimeToLiveDto.fromJson(value);
        case 'IdentityLinkDto':
          return IdentityLinkDto.fromJson(value);
        case 'IdentityServiceGroupDto':
          return IdentityServiceGroupDto.fromJson(value);
        case 'IdentityServiceGroupInfoDto':
          return IdentityServiceGroupInfoDto.fromJson(value);
        case 'IdentityServiceUserDto':
          return IdentityServiceUserDto.fromJson(value);
        case 'IncidentDto':
          return IncidentDto.fromJson(value);
        case 'IncidentStatisticsResultDto':
          return IncidentStatisticsResultDto.fromJson(value);
        case 'JobConditionQueryParameterDto':
          return JobConditionQueryParameterDto.fromJson(value);
        case 'JobDefinitionDto':
          return JobDefinitionDto.fromJson(value);
        case 'JobDefinitionPriorityDto':
          return JobDefinitionPriorityDto.fromJson(value);
        case 'JobDefinitionQueryDto':
          return JobDefinitionQueryDto.fromJson(value);
        case 'JobDefinitionQueryDtoSortingInner':
          return JobDefinitionQueryDtoSortingInner.fromJson(value);
        case 'JobDefinitionSuspensionStateDto':
          return JobDefinitionSuspensionStateDto.fromJson(value);
        case 'JobDefinitionsSuspensionStateDto':
          return JobDefinitionsSuspensionStateDto.fromJson(value);
        case 'JobDto':
          return JobDto.fromJson(value);
        case 'JobDuedateDto':
          return JobDuedateDto.fromJson(value);
        case 'JobQueryDto':
          return JobQueryDto.fromJson(value);
        case 'JobQueryDtoSortingInner':
          return JobQueryDtoSortingInner.fromJson(value);
        case 'JobRetriesDto':
          return JobRetriesDto.fromJson(value);
        case 'JobSuspensionStateDto':
          return JobSuspensionStateDto.fromJson(value);
        case 'LinkableDto':
          return LinkableDto.fromJson(value);
        case 'LockExternalTaskDto':
          return LockExternalTaskDto.fromJson(value);
        case 'LockedExternalTaskDto':
          return LockedExternalTaskDto.fromJson(value);
        case 'MessageCorrelationResultWithVariableDto':
          return MessageCorrelationResultWithVariableDto.fromJson(value);
        case 'MetricsIntervalResultDto':
          return MetricsIntervalResultDto.fromJson(value);
        case 'MetricsResultDto':
          return MetricsResultDto.fromJson(value);
        case 'MigrationExecutionDto':
          return MigrationExecutionDto.fromJson(value);
        case 'MigrationInstructionDto':
          return MigrationInstructionDto.fromJson(value);
        case 'MigrationInstructionValidationReportDto':
          return MigrationInstructionValidationReportDto.fromJson(value);
        case 'MigrationPlanDto':
          return MigrationPlanDto.fromJson(value);
        case 'MigrationPlanGenerationDto':
          return MigrationPlanGenerationDto.fromJson(value);
        case 'MigrationPlanReportDto':
          return MigrationPlanReportDto.fromJson(value);
        case 'MigrationVariableValidationReportDto':
          return MigrationVariableValidationReportDto.fromJson(value);
        case 'MissingAuthorizationDto':
          return MissingAuthorizationDto.fromJson(value);
        case 'ModificationDto':
          return ModificationDto.fromJson(value);
        case 'MultipleProcessInstanceModificationInstructionDto':
          return MultipleProcessInstanceModificationInstructionDto.fromJson(value);
        case 'ParseExceptionDto':
          return ParseExceptionDto.fromJson(value);
        case 'PasswordPolicyDto':
          return PasswordPolicyDto.fromJson(value);
        case 'PasswordPolicyRequestDto':
          return PasswordPolicyRequestDto.fromJson(value);
        case 'PasswordPolicyRuleDto':
          return PasswordPolicyRuleDto.fromJson(value);
        case 'PatchVariablesDto':
          return PatchVariablesDto.fromJson(value);
        case 'PriorityDto':
          return PriorityDto.fromJson(value);
        case 'ProblemDto':
          return ProblemDto.fromJson(value);
        case 'ProcessDefinitionDiagramDto':
          return ProcessDefinitionDiagramDto.fromJson(value);
        case 'ProcessDefinitionDto':
          return ProcessDefinitionDto.fromJson(value);
        case 'ProcessDefinitionStatisticsResultDto':
          return ProcessDefinitionStatisticsResultDto.fromJson(value);
        case 'ProcessDefinitionSuspensionStateDto':
          return ProcessDefinitionSuspensionStateDto.fromJson(value);
        case 'ProcessEngineDto':
          return ProcessEngineDto.fromJson(value);
        case 'ProcessInstanceDto':
          return ProcessInstanceDto.fromJson(value);
        case 'ProcessInstanceModificationDto':
          return ProcessInstanceModificationDto.fromJson(value);
        case 'ProcessInstanceModificationInstructionDto':
          return ProcessInstanceModificationInstructionDto.fromJson(value);
        case 'ProcessInstanceQueryDto':
          return ProcessInstanceQueryDto.fromJson(value);
        case 'ProcessInstanceQueryDtoSortingInner':
          return ProcessInstanceQueryDtoSortingInner.fromJson(value);
        case 'ProcessInstanceSuspensionStateAsyncDto':
          return ProcessInstanceSuspensionStateAsyncDto.fromJson(value);
        case 'ProcessInstanceSuspensionStateDto':
          return ProcessInstanceSuspensionStateDto.fromJson(value);
        case 'ProcessInstanceWithVariablesDto':
          return ProcessInstanceWithVariablesDto.fromJson(value);
        case 'RedeploymentDto':
          return RedeploymentDto.fromJson(value);
        case 'ResourceOptionsDto':
          return ResourceOptionsDto.fromJson(value);
        case 'ResourceReportDto':
          return ResourceReportDto.fromJson(value);
        case 'RestartProcessInstanceDto':
          return RestartProcessInstanceDto.fromJson(value);
        case 'RestartProcessInstanceModificationInstructionDto':
          return RestartProcessInstanceModificationInstructionDto.fromJson(value);
        case 'RetriesDto':
          return RetriesDto.fromJson(value);
        case 'SchemaLogEntryDto':
          return SchemaLogEntryDto.fromJson(value);
        case 'SchemaLogQueryDto':
          return SchemaLogQueryDto.fromJson(value);
        case 'SchemaLogQueryDtoSortingInner':
          return SchemaLogQueryDtoSortingInner.fromJson(value);
        case 'SetJobRetriesByProcessDto':
          return SetJobRetriesByProcessDto.fromJson(value);
        case 'SetJobRetriesDto':
          return SetJobRetriesDto.fromJson(value);
        case 'SetRemovalTimeToHistoricBatchesDto':
          return SetRemovalTimeToHistoricBatchesDto.fromJson(value);
        case 'SetRemovalTimeToHistoricDecisionInstancesDto':
          return SetRemovalTimeToHistoricDecisionInstancesDto.fromJson(value);
        case 'SetRemovalTimeToHistoricProcessInstancesDto':
          return SetRemovalTimeToHistoricProcessInstancesDto.fromJson(value);
        case 'SetRetriesForExternalTasksDto':
          return SetRetriesForExternalTasksDto.fromJson(value);
        case 'SetVariablesAsyncDto':
          return SetVariablesAsyncDto.fromJson(value);
        case 'SignalDto':
          return SignalDto.fromJson(value);
        case 'SortTaskQueryParametersDto':
          return SortTaskQueryParametersDto.fromJson(value);
        case 'StartProcessInstanceDto':
          return StartProcessInstanceDto.fromJson(value);
        case 'StartProcessInstanceFormDto':
          return StartProcessInstanceFormDto.fromJson(value);
        case 'SuspensionStateDto':
          return SuspensionStateDto.fromJson(value);
        case 'TaskBpmnErrorDto':
          return TaskBpmnErrorDto.fromJson(value);
        case 'TaskCountByCandidateGroupResultDto':
          return TaskCountByCandidateGroupResultDto.fromJson(value);
        case 'TaskDto':
          return TaskDto.fromJson(value);
        case 'TaskEscalationDto':
          return TaskEscalationDto.fromJson(value);
        case 'TaskQueryDto':
          return TaskQueryDto.fromJson(value);
        case 'TaskQueryDtoSortingInner':
          return TaskQueryDtoSortingInner.fromJson(value);
        case 'TelemetryConfigurationDto':
          return TelemetryConfigurationDto.fromJson(value);
        case 'TelemetryCountDto':
          return TelemetryCountDto.fromJson(value);
        case 'TelemetryDataDto':
          return TelemetryDataDto.fromJson(value);
        case 'TelemetryInternalsDto':
          return TelemetryInternalsDto.fromJson(value);
        case 'TelemetryLicenseKeyDto':
          return TelemetryLicenseKeyDto.fromJson(value);
        case 'TelemetryProductDto':
          return TelemetryProductDto.fromJson(value);
        case 'TenantDto':
          return TenantDto.fromJson(value);
        case 'TransitionInstanceDto':
          return TransitionInstanceDto.fromJson(value);
        case 'TriggerVariableValueDto':
          return TriggerVariableValueDto.fromJson(value);
        case 'UserCredentialsDto':
          return UserCredentialsDto.fromJson(value);
        case 'UserDto':
          return UserDto.fromJson(value);
        case 'UserIdDto':
          return UserIdDto.fromJson(value);
        case 'UserOperationLogEntryDto':
          return UserOperationLogEntryDto.fromJson(value);
        case 'UserProfileDto':
          return UserProfileDto.fromJson(value);
        case 'VariableInstanceDto':
          return VariableInstanceDto.fromJson(value);
        case 'VariableInstanceQueryDto':
          return VariableInstanceQueryDto.fromJson(value);
        case 'VariableInstanceQueryDtoSortingInner':
          return VariableInstanceQueryDtoSortingInner.fromJson(value);
        case 'VariableQueryParameterDto':
          return VariableQueryParameterDto.fromJson(value);
        case 'VariableValueDto':
          return VariableValueDto.fromJson(value);
        case 'VersionDto':
          return VersionDto.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
