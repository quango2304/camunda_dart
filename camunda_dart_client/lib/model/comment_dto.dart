//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CommentDto {
  /// Returns a new [CommentDto] instance.
  CommentDto({
    this.links = const [],
    this.id,
    this.userId,
    this.taskId,
    this.processInstanceId,
    this.time,
    this.message,
    this.removalTime,
    this.rootProcessInstanceId,
  });

  /// The links associated to this resource, with `method`, `href` and `rel`.
  List<AtomLink>? links;

  /// The id of the task comment.
  String? id;

  /// The id of the user who created the comment.
  String? userId;

  /// The id of the task to which the comment belongs.
  String? taskId;

  /// The id of the process instance the comment is related to.
  String? processInstanceId;

  /// The time when the comment was created. [Default format]($(docsUrl)/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? time;

  /// The content of the comment.
  String? message;

  /// The time after which the comment should be removed by the History Cleanup job. [Default format]($(docsUrl)/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
  DateTime? removalTime;

  /// The process instance id of the root process instance that initiated the process containing the task.
  String? rootProcessInstanceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CommentDto &&
    _deepEquality.equals(other.links, links) &&
    other.id == id &&
    other.userId == userId &&
    other.taskId == taskId &&
    other.processInstanceId == processInstanceId &&
    other.time == time &&
    other.message == message &&
    other.removalTime == removalTime &&
    other.rootProcessInstanceId == rootProcessInstanceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (links == null ? 0 : links!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (taskId == null ? 0 : taskId!.hashCode) +
    (processInstanceId == null ? 0 : processInstanceId!.hashCode) +
    (time == null ? 0 : time!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (removalTime == null ? 0 : removalTime!.hashCode) +
    (rootProcessInstanceId == null ? 0 : rootProcessInstanceId!.hashCode);

  @override
  String toString() => 'CommentDto[links=$links, id=$id, userId=$userId, taskId=$taskId, processInstanceId=$processInstanceId, time=$time, message=$message, removalTime=$removalTime, rootProcessInstanceId=$rootProcessInstanceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.links != null) {
      json[r'links'] = this.links;
    } else {
      json[r'links'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.taskId != null) {
      json[r'taskId'] = this.taskId;
    } else {
      json[r'taskId'] = null;
    }
    if (this.processInstanceId != null) {
      json[r'processInstanceId'] = this.processInstanceId;
    } else {
      json[r'processInstanceId'] = null;
    }
    if (this.time != null) {
      json[r'time'] = this.time!.toUtc().toIso8601String();
    } else {
      json[r'time'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.removalTime != null) {
      json[r'removalTime'] = this.removalTime!.toUtc().toIso8601String();
    } else {
      json[r'removalTime'] = null;
    }
    if (this.rootProcessInstanceId != null) {
      json[r'rootProcessInstanceId'] = this.rootProcessInstanceId;
    } else {
      json[r'rootProcessInstanceId'] = null;
    }
    return json;
  }

  /// Returns a new [CommentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CommentDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CommentDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CommentDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CommentDto(
        links: AtomLink.listFromJson(json[r'links']),
        id: mapValueOfType<String>(json, r'id'),
        userId: mapValueOfType<String>(json, r'userId'),
        taskId: mapValueOfType<String>(json, r'taskId'),
        processInstanceId: mapValueOfType<String>(json, r'processInstanceId'),
        time: mapDateTime(json, r'time', r''),
        message: mapValueOfType<String>(json, r'message'),
        removalTime: mapDateTime(json, r'removalTime', r''),
        rootProcessInstanceId: mapValueOfType<String>(json, r'rootProcessInstanceId'),
      );
    }
    return null;
  }

  static List<CommentDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CommentDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CommentDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CommentDto> mapFromJson(dynamic json) {
    final map = <String, CommentDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CommentDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CommentDto-objects as value to a dart map
  static Map<String, List<CommentDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CommentDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CommentDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

