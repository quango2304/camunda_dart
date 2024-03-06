//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FetchExternalTasksDto {
  /// Returns a new [FetchExternalTasksDto] instance.
  FetchExternalTasksDto({
    required this.workerId,
    required this.maxTasks,
    this.usePriority,
    this.asyncResponseTimeout,
    this.topics = const [],
  });

  /// **Mandatory.** The id of the worker on which behalf tasks are fetched. The returned tasks are locked for that worker and can only be completed when providing the same worker id.
  String workerId;

  /// **Mandatory.** The maximum number of tasks to return.
  int? maxTasks;

  /// A `boolean` value, which indicates whether the task should be fetched based on its priority or arbitrarily.
  bool? usePriority;

  /// The [Long Polling](https://docs.camunda.org/manual/7.20/user-guide/process-engine/external-tasks/#long-polling-to-fetch-and-lock-external-tasks) timeout in milliseconds.  **Note:** The value cannot be set larger than 1.800.000 milliseconds (corresponds to 30 minutes).
  int? asyncResponseTimeout;

  /// A JSON array of topic objects for which external tasks should be fetched. The returned tasks may be arbitrarily distributed among these topics. Each topic object has the following properties:
  List<FetchExternalTaskTopicDto>? topics;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FetchExternalTasksDto &&
    other.workerId == workerId &&
    other.maxTasks == maxTasks &&
    other.usePriority == usePriority &&
    other.asyncResponseTimeout == asyncResponseTimeout &&
    _deepEquality.equals(other.topics, topics);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (workerId.hashCode) +
    (maxTasks == null ? 0 : maxTasks!.hashCode) +
    (usePriority == null ? 0 : usePriority!.hashCode) +
    (asyncResponseTimeout == null ? 0 : asyncResponseTimeout!.hashCode) +
    (topics == null ? 0 : topics!.hashCode);

  @override
  String toString() => 'FetchExternalTasksDto[workerId=$workerId, maxTasks=$maxTasks, usePriority=$usePriority, asyncResponseTimeout=$asyncResponseTimeout, topics=$topics]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'workerId'] = this.workerId;
    if (this.maxTasks != null) {
      json[r'maxTasks'] = this.maxTasks;
    } else {
      json[r'maxTasks'] = null;
    }
    if (this.usePriority != null) {
      json[r'usePriority'] = this.usePriority;
    } else {
      json[r'usePriority'] = null;
    }
    if (this.asyncResponseTimeout != null) {
      json[r'asyncResponseTimeout'] = this.asyncResponseTimeout;
    } else {
      json[r'asyncResponseTimeout'] = null;
    }
    if (this.topics != null) {
      json[r'topics'] = this.topics;
    } else {
      json[r'topics'] = null;
    }
    return json;
  }

  /// Returns a new [FetchExternalTasksDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FetchExternalTasksDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FetchExternalTasksDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FetchExternalTasksDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FetchExternalTasksDto(
        workerId: mapValueOfType<String>(json, r'workerId')!,
        maxTasks: mapValueOfType<int>(json, r'maxTasks'),
        usePriority: mapValueOfType<bool>(json, r'usePriority'),
        asyncResponseTimeout: mapValueOfType<int>(json, r'asyncResponseTimeout'),
        topics: FetchExternalTaskTopicDto.listFromJson(json[r'topics']),
      );
    }
    return null;
  }

  static List<FetchExternalTasksDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FetchExternalTasksDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FetchExternalTasksDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FetchExternalTasksDto> mapFromJson(dynamic json) {
    final map = <String, FetchExternalTasksDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FetchExternalTasksDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FetchExternalTasksDto-objects as value to a dart map
  static Map<String, List<FetchExternalTasksDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FetchExternalTasksDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FetchExternalTasksDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'workerId',
    'maxTasks',
  };
}

