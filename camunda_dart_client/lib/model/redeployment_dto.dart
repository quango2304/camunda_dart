//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RedeploymentDto {
  /// Returns a new [RedeploymentDto] instance.
  RedeploymentDto({
    this.resourceIds = const [],
    this.resourceNames = const [],
    this.source_,
  });

  /// A list of deployment resource ids to re-deploy.
  List<String>? resourceIds;

  /// A list of deployment resource names to re-deploy.
  List<String>? resourceNames;

  /// Sets the source of the deployment.
  String? source_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RedeploymentDto &&
    _deepEquality.equals(other.resourceIds, resourceIds) &&
    _deepEquality.equals(other.resourceNames, resourceNames) &&
    other.source_ == source_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (resourceIds == null ? 0 : resourceIds!.hashCode) +
    (resourceNames == null ? 0 : resourceNames!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode);

  @override
  String toString() => 'RedeploymentDto[resourceIds=$resourceIds, resourceNames=$resourceNames, source_=$source_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.resourceIds != null) {
      json[r'resourceIds'] = this.resourceIds;
    } else {
      json[r'resourceIds'] = null;
    }
    if (this.resourceNames != null) {
      json[r'resourceNames'] = this.resourceNames;
    } else {
      json[r'resourceNames'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    return json;
  }

  /// Returns a new [RedeploymentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RedeploymentDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RedeploymentDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RedeploymentDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RedeploymentDto(
        resourceIds: json[r'resourceIds'] is Iterable
            ? (json[r'resourceIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        resourceNames: json[r'resourceNames'] is Iterable
            ? (json[r'resourceNames'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        source_: mapValueOfType<String>(json, r'source'),
      );
    }
    return null;
  }

  static List<RedeploymentDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RedeploymentDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RedeploymentDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RedeploymentDto> mapFromJson(dynamic json) {
    final map = <String, RedeploymentDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RedeploymentDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RedeploymentDto-objects as value to a dart map
  static Map<String, List<RedeploymentDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RedeploymentDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RedeploymentDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

