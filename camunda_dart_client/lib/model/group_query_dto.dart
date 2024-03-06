//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupQueryDto {
  /// Returns a new [GroupQueryDto] instance.
  GroupQueryDto({
    this.id,
    this.idIn = const [],
    this.name,
    this.nameLike,
    this.type,
    this.member,
    this.memberOfTenant,
    this.sorting = const [],
  });

  /// Filter by the id of the group.
  String? id;

  /// Filter by a JSON string array of group ids.
  List<String>? idIn;

  /// Filter by the name of the group.
  String? name;

  /// Filter by the name that the parameter is a substring of.
  String? nameLike;

  /// Filter by the type of the group.
  String? type;

  /// Only retrieve groups where the given user id is a member of.
  String? member;

  /// Only retrieve groups which are members of the given tenant.
  String? memberOfTenant;

  /// Apply sorting of the result
  List<GroupQueryDtoSortingInner>? sorting;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupQueryDto &&
    other.id == id &&
    _deepEquality.equals(other.idIn, idIn) &&
    other.name == name &&
    other.nameLike == nameLike &&
    other.type == type &&
    other.member == member &&
    other.memberOfTenant == memberOfTenant &&
    _deepEquality.equals(other.sorting, sorting);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (idIn == null ? 0 : idIn!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (nameLike == null ? 0 : nameLike!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (member == null ? 0 : member!.hashCode) +
    (memberOfTenant == null ? 0 : memberOfTenant!.hashCode) +
    (sorting == null ? 0 : sorting!.hashCode);

  @override
  String toString() => 'GroupQueryDto[id=$id, idIn=$idIn, name=$name, nameLike=$nameLike, type=$type, member=$member, memberOfTenant=$memberOfTenant, sorting=$sorting]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.idIn != null) {
      json[r'idIn'] = this.idIn;
    } else {
      json[r'idIn'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.nameLike != null) {
      json[r'nameLike'] = this.nameLike;
    } else {
      json[r'nameLike'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.member != null) {
      json[r'member'] = this.member;
    } else {
      json[r'member'] = null;
    }
    if (this.memberOfTenant != null) {
      json[r'memberOfTenant'] = this.memberOfTenant;
    } else {
      json[r'memberOfTenant'] = null;
    }
    if (this.sorting != null) {
      json[r'sorting'] = this.sorting;
    } else {
      json[r'sorting'] = null;
    }
    return json;
  }

  /// Returns a new [GroupQueryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GroupQueryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GroupQueryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GroupQueryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GroupQueryDto(
        id: mapValueOfType<String>(json, r'id'),
        idIn: json[r'idIn'] is Iterable
            ? (json[r'idIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        name: mapValueOfType<String>(json, r'name'),
        nameLike: mapValueOfType<String>(json, r'nameLike'),
        type: mapValueOfType<String>(json, r'type'),
        member: mapValueOfType<String>(json, r'member'),
        memberOfTenant: mapValueOfType<String>(json, r'memberOfTenant'),
        sorting: GroupQueryDtoSortingInner.listFromJson(json[r'sorting']),
      );
    }
    return null;
  }

  static List<GroupQueryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupQueryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupQueryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GroupQueryDto> mapFromJson(dynamic json) {
    final map = <String, GroupQueryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupQueryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GroupQueryDto-objects as value to a dart map
  static Map<String, List<GroupQueryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GroupQueryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GroupQueryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

