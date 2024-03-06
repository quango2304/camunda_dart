//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricBatchDto {
  /// Returns a new [HistoricBatchDto] instance.
  HistoricBatchDto({
    this.id,
    this.type,
    this.totalJobs,
    this.batchJobsPerSeed,
    this.invocationsPerBatchJob,
    this.seedJobDefinitionId,
    this.monitorJobDefinitionId,
    this.batchJobDefinitionId,
    this.tenantId,
    this.createUserId,
    this.startTime,
    this.executionStartTime,
    this.endTime,
    this.removalTime,
  });

  /// The id of the batch.
  String? id;

  /// The type of the batch. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
  String? type;

  ///  The total jobs of a batch is the number of batch execution jobs required to complete the batch. 
  int? totalJobs;

  ///  The number of batch execution jobs created per seed job invocation. The batch seed job is invoked until it has created all batch execution jobs required by the batch (see `totalJobs` property). 
  int? batchJobsPerSeed;

  ///  Every batch execution job invokes the command executed by the batch `invocationsPerBatchJob` times. E.g., for a process instance migration batch this specifies the number of process instances which are migrated per batch execution job. 
  int? invocationsPerBatchJob;

  /// The job definition id for the seed jobs of this batch.
  String? seedJobDefinitionId;

  /// The job definition id for the monitor jobs of this batch.
  String? monitorJobDefinitionId;

  /// The job definition id for the batch execution jobs of this batch.
  String? batchJobDefinitionId;

  /// The tenant id of the batch.
  String? tenantId;

  /// The batch creator's user id.
  String? createUserId;

  /// The time the batch was started. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. For further information, please see the [documentation](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/)
  DateTime? startTime;

  /// The time the batch execution was started, i.e., at least one batch job has been executed. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. For further information, please see the [documentation] (https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/)
  DateTime? executionStartTime;

  /// The time the batch ended. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. For further information, please see the [documentation](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/)
  DateTime? endTime;

  /// The time after which the historic batch should be removed by the History Cleanup job. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. For further information, please see the [documentation](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/)
  DateTime? removalTime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricBatchDto &&
    other.id == id &&
    other.type == type &&
    other.totalJobs == totalJobs &&
    other.batchJobsPerSeed == batchJobsPerSeed &&
    other.invocationsPerBatchJob == invocationsPerBatchJob &&
    other.seedJobDefinitionId == seedJobDefinitionId &&
    other.monitorJobDefinitionId == monitorJobDefinitionId &&
    other.batchJobDefinitionId == batchJobDefinitionId &&
    other.tenantId == tenantId &&
    other.createUserId == createUserId &&
    other.startTime == startTime &&
    other.executionStartTime == executionStartTime &&
    other.endTime == endTime &&
    other.removalTime == removalTime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (totalJobs == null ? 0 : totalJobs!.hashCode) +
    (batchJobsPerSeed == null ? 0 : batchJobsPerSeed!.hashCode) +
    (invocationsPerBatchJob == null ? 0 : invocationsPerBatchJob!.hashCode) +
    (seedJobDefinitionId == null ? 0 : seedJobDefinitionId!.hashCode) +
    (monitorJobDefinitionId == null ? 0 : monitorJobDefinitionId!.hashCode) +
    (batchJobDefinitionId == null ? 0 : batchJobDefinitionId!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (createUserId == null ? 0 : createUserId!.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode) +
    (executionStartTime == null ? 0 : executionStartTime!.hashCode) +
    (endTime == null ? 0 : endTime!.hashCode) +
    (removalTime == null ? 0 : removalTime!.hashCode);

  @override
  String toString() => 'HistoricBatchDto[id=$id, type=$type, totalJobs=$totalJobs, batchJobsPerSeed=$batchJobsPerSeed, invocationsPerBatchJob=$invocationsPerBatchJob, seedJobDefinitionId=$seedJobDefinitionId, monitorJobDefinitionId=$monitorJobDefinitionId, batchJobDefinitionId=$batchJobDefinitionId, tenantId=$tenantId, createUserId=$createUserId, startTime=$startTime, executionStartTime=$executionStartTime, endTime=$endTime, removalTime=$removalTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.totalJobs != null) {
      json[r'totalJobs'] = this.totalJobs;
    } else {
      json[r'totalJobs'] = null;
    }
    if (this.batchJobsPerSeed != null) {
      json[r'batchJobsPerSeed'] = this.batchJobsPerSeed;
    } else {
      json[r'batchJobsPerSeed'] = null;
    }
    if (this.invocationsPerBatchJob != null) {
      json[r'invocationsPerBatchJob'] = this.invocationsPerBatchJob;
    } else {
      json[r'invocationsPerBatchJob'] = null;
    }
    if (this.seedJobDefinitionId != null) {
      json[r'seedJobDefinitionId'] = this.seedJobDefinitionId;
    } else {
      json[r'seedJobDefinitionId'] = null;
    }
    if (this.monitorJobDefinitionId != null) {
      json[r'monitorJobDefinitionId'] = this.monitorJobDefinitionId;
    } else {
      json[r'monitorJobDefinitionId'] = null;
    }
    if (this.batchJobDefinitionId != null) {
      json[r'batchJobDefinitionId'] = this.batchJobDefinitionId;
    } else {
      json[r'batchJobDefinitionId'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    if (this.createUserId != null) {
      json[r'createUserId'] = this.createUserId;
    } else {
      json[r'createUserId'] = null;
    }
    if (this.startTime != null) {
      json[r'startTime'] = this.startTime!.toUtc().toIso8601String();
    } else {
      json[r'startTime'] = null;
    }
    if (this.executionStartTime != null) {
      json[r'executionStartTime'] = this.executionStartTime!.toUtc().toIso8601String();
    } else {
      json[r'executionStartTime'] = null;
    }
    if (this.endTime != null) {
      json[r'endTime'] = this.endTime!.toUtc().toIso8601String();
    } else {
      json[r'endTime'] = null;
    }
    if (this.removalTime != null) {
      json[r'removalTime'] = this.removalTime!.toUtc().toIso8601String();
    } else {
      json[r'removalTime'] = null;
    }
    return json;
  }

  /// Returns a new [HistoricBatchDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricBatchDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricBatchDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricBatchDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricBatchDto(
        id: mapValueOfType<String>(json, r'id'),
        type: mapValueOfType<String>(json, r'type'),
        totalJobs: mapValueOfType<int>(json, r'totalJobs'),
        batchJobsPerSeed: mapValueOfType<int>(json, r'batchJobsPerSeed'),
        invocationsPerBatchJob: mapValueOfType<int>(json, r'invocationsPerBatchJob'),
        seedJobDefinitionId: mapValueOfType<String>(json, r'seedJobDefinitionId'),
        monitorJobDefinitionId: mapValueOfType<String>(json, r'monitorJobDefinitionId'),
        batchJobDefinitionId: mapValueOfType<String>(json, r'batchJobDefinitionId'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        createUserId: mapValueOfType<String>(json, r'createUserId'),
        startTime: mapDateTime(json, r'startTime', r''),
        executionStartTime: mapDateTime(json, r'executionStartTime', r''),
        endTime: mapDateTime(json, r'endTime', r''),
        removalTime: mapDateTime(json, r'removalTime', r''),
      );
    }
    return null;
  }

  static List<HistoricBatchDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricBatchDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricBatchDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricBatchDto> mapFromJson(dynamic json) {
    final map = <String, HistoricBatchDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricBatchDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricBatchDto-objects as value to a dart map
  static Map<String, List<HistoricBatchDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricBatchDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricBatchDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

