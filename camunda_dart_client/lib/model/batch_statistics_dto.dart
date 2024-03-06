//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BatchStatisticsDto {
  /// Returns a new [BatchStatisticsDto] instance.
  BatchStatisticsDto({
    this.id,
    this.type,
    this.totalJobs,
    this.jobsCreated,
    this.batchJobsPerSeed,
    this.invocationsPerBatchJob,
    this.seedJobDefinitionId,
    this.monitorJobDefinitionId,
    this.batchJobDefinitionId,
    this.suspended,
    this.tenantId,
    this.createUserId,
    this.startTime,
    this.executionStartTime,
    this.remainingJobs,
    this.completedJobs,
    this.failedJobs,
  });

  /// The id of the batch.
  String? id;

  /// The type of the batch. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
  String? type;

  /// The total jobs of a batch is the number of batch execution jobs required to complete the batch.
  int? totalJobs;

  /// The number of batch execution jobs already created by the seed job.
  int? jobsCreated;

  /// The number of batch execution jobs created per seed job invocation. The batch seed job is invoked until it has created all batch execution jobs required by the batch (see `totalJobs` property).
  int? batchJobsPerSeed;

  /// Every batch execution job invokes the command executed by the batch `invocationsPerBatchJob` times. E.g., for a process instance migration batch this specifies the number of process instances which are migrated per batch execution job.
  int? invocationsPerBatchJob;

  /// The job definition id for the seed jobs of this batch.
  String? seedJobDefinitionId;

  /// The job definition id for the monitor jobs of this batch.
  String? monitorJobDefinitionId;

  /// The job definition id for the batch execution jobs of this batch.
  String? batchJobDefinitionId;

  /// Indicates whether this batch is suspended or not.
  bool? suspended;

  /// The tenant id of the batch.
  String? tenantId;

  /// The id of the user that created the batch.
  String? createUserId;

  /// The time the batch was started. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. For further information, please see the [documentation] (https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/)
  DateTime? startTime;

  /// The time the batch execution was started, i.e., at least one batch job has been executed. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. For further information, please see the [documentation] (https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/)
  DateTime? executionStartTime;

  /// The number of remaining batch execution jobs. This does include failed batch execution jobs and batch execution jobs which still have to be created by the seed job.
  int? remainingJobs;

  /// The number of completed batch execution jobs. This does include aborted/deleted batch execution jobs.
  int? completedJobs;

  /// The number of failed batch execution jobs. This does not include aborted or deleted batch execution jobs.
  int? failedJobs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BatchStatisticsDto &&
    other.id == id &&
    other.type == type &&
    other.totalJobs == totalJobs &&
    other.jobsCreated == jobsCreated &&
    other.batchJobsPerSeed == batchJobsPerSeed &&
    other.invocationsPerBatchJob == invocationsPerBatchJob &&
    other.seedJobDefinitionId == seedJobDefinitionId &&
    other.monitorJobDefinitionId == monitorJobDefinitionId &&
    other.batchJobDefinitionId == batchJobDefinitionId &&
    other.suspended == suspended &&
    other.tenantId == tenantId &&
    other.createUserId == createUserId &&
    other.startTime == startTime &&
    other.executionStartTime == executionStartTime &&
    other.remainingJobs == remainingJobs &&
    other.completedJobs == completedJobs &&
    other.failedJobs == failedJobs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (totalJobs == null ? 0 : totalJobs!.hashCode) +
    (jobsCreated == null ? 0 : jobsCreated!.hashCode) +
    (batchJobsPerSeed == null ? 0 : batchJobsPerSeed!.hashCode) +
    (invocationsPerBatchJob == null ? 0 : invocationsPerBatchJob!.hashCode) +
    (seedJobDefinitionId == null ? 0 : seedJobDefinitionId!.hashCode) +
    (monitorJobDefinitionId == null ? 0 : monitorJobDefinitionId!.hashCode) +
    (batchJobDefinitionId == null ? 0 : batchJobDefinitionId!.hashCode) +
    (suspended == null ? 0 : suspended!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (createUserId == null ? 0 : createUserId!.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode) +
    (executionStartTime == null ? 0 : executionStartTime!.hashCode) +
    (remainingJobs == null ? 0 : remainingJobs!.hashCode) +
    (completedJobs == null ? 0 : completedJobs!.hashCode) +
    (failedJobs == null ? 0 : failedJobs!.hashCode);

  @override
  String toString() => 'BatchStatisticsDto[id=$id, type=$type, totalJobs=$totalJobs, jobsCreated=$jobsCreated, batchJobsPerSeed=$batchJobsPerSeed, invocationsPerBatchJob=$invocationsPerBatchJob, seedJobDefinitionId=$seedJobDefinitionId, monitorJobDefinitionId=$monitorJobDefinitionId, batchJobDefinitionId=$batchJobDefinitionId, suspended=$suspended, tenantId=$tenantId, createUserId=$createUserId, startTime=$startTime, executionStartTime=$executionStartTime, remainingJobs=$remainingJobs, completedJobs=$completedJobs, failedJobs=$failedJobs]';

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
    if (this.jobsCreated != null) {
      json[r'jobsCreated'] = this.jobsCreated;
    } else {
      json[r'jobsCreated'] = null;
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
    if (this.suspended != null) {
      json[r'suspended'] = this.suspended;
    } else {
      json[r'suspended'] = null;
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
    if (this.remainingJobs != null) {
      json[r'remainingJobs'] = this.remainingJobs;
    } else {
      json[r'remainingJobs'] = null;
    }
    if (this.completedJobs != null) {
      json[r'completedJobs'] = this.completedJobs;
    } else {
      json[r'completedJobs'] = null;
    }
    if (this.failedJobs != null) {
      json[r'failedJobs'] = this.failedJobs;
    } else {
      json[r'failedJobs'] = null;
    }
    return json;
  }

  /// Returns a new [BatchStatisticsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BatchStatisticsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BatchStatisticsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BatchStatisticsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BatchStatisticsDto(
        id: mapValueOfType<String>(json, r'id'),
        type: mapValueOfType<String>(json, r'type'),
        totalJobs: mapValueOfType<int>(json, r'totalJobs'),
        jobsCreated: mapValueOfType<int>(json, r'jobsCreated'),
        batchJobsPerSeed: mapValueOfType<int>(json, r'batchJobsPerSeed'),
        invocationsPerBatchJob: mapValueOfType<int>(json, r'invocationsPerBatchJob'),
        seedJobDefinitionId: mapValueOfType<String>(json, r'seedJobDefinitionId'),
        monitorJobDefinitionId: mapValueOfType<String>(json, r'monitorJobDefinitionId'),
        batchJobDefinitionId: mapValueOfType<String>(json, r'batchJobDefinitionId'),
        suspended: mapValueOfType<bool>(json, r'suspended'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        createUserId: mapValueOfType<String>(json, r'createUserId'),
        startTime: mapDateTime(json, r'startTime', r''),
        executionStartTime: mapDateTime(json, r'executionStartTime', r''),
        remainingJobs: mapValueOfType<int>(json, r'remainingJobs'),
        completedJobs: mapValueOfType<int>(json, r'completedJobs'),
        failedJobs: mapValueOfType<int>(json, r'failedJobs'),
      );
    }
    return null;
  }

  static List<BatchStatisticsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BatchStatisticsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BatchStatisticsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BatchStatisticsDto> mapFromJson(dynamic json) {
    final map = <String, BatchStatisticsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BatchStatisticsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BatchStatisticsDto-objects as value to a dart map
  static Map<String, List<BatchStatisticsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BatchStatisticsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BatchStatisticsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

