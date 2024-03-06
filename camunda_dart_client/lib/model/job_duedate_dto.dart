//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JobDuedateDto {
  /// Returns a new [JobDuedateDto] instance.
  JobDuedateDto({
    this.duedate,
    this.cascade,
  });

  /// The date to set when the job has the next execution.
  DateTime? duedate;

  /// A boolean value to indicate if modifications to the due date should cascade to subsequent jobs. (e.g. Modify the due date of a timer by +15 minutes. This flag indicates if a +15 minutes should be applied to all subsequent timers.) This flag only affects timer jobs and only works if due date is not null. Default: `false`
  bool? cascade;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobDuedateDto &&
    other.duedate == duedate &&
    other.cascade == cascade;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (duedate == null ? 0 : duedate!.hashCode) +
    (cascade == null ? 0 : cascade!.hashCode);

  @override
  String toString() => 'JobDuedateDto[duedate=$duedate, cascade=$cascade]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.duedate != null) {
      json[r'duedate'] = this.duedate!.toUtc().toIso8601String();
    } else {
      json[r'duedate'] = null;
    }
    if (this.cascade != null) {
      json[r'cascade'] = this.cascade;
    } else {
      json[r'cascade'] = null;
    }
    return json;
  }

  /// Returns a new [JobDuedateDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobDuedateDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobDuedateDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobDuedateDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobDuedateDto(
        duedate: mapDateTime(json, r'duedate', r''),
        cascade: mapValueOfType<bool>(json, r'cascade'),
      );
    }
    return null;
  }

  static List<JobDuedateDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobDuedateDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobDuedateDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobDuedateDto> mapFromJson(dynamic json) {
    final map = <String, JobDuedateDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobDuedateDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobDuedateDto-objects as value to a dart map
  static Map<String, List<JobDuedateDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobDuedateDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobDuedateDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

