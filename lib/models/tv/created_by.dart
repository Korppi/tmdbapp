import 'dart:convert';

import 'package:flutter/material.dart';

@immutable
class CreatedBy {
  final int? id;
  final String? creditId;
  final String? name;
  final int? gender;
  final String? profilePath;

  const CreatedBy({
    this.id,
    this.creditId,
    this.name,
    this.gender,
    this.profilePath,
  });

  @override
  String toString() {
    return 'CreatedBy(id: $id, creditId: $creditId, name: $name, gender: $gender, profilePath: $profilePath)';
  }

  factory CreatedBy.fromMap(Map<String, dynamic> data) => CreatedBy(
        id: data['id'] as int?,
        creditId: data['credit_id'] as String?,
        name: data['name'] as String?,
        gender: data['gender'] as int?,
        profilePath: data['profile_path'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'credit_id': creditId,
        'name': name,
        'gender': gender,
        'profile_path': profilePath,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CreatedBy].
  factory CreatedBy.fromJson(String data) {
    return CreatedBy.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CreatedBy] to a JSON string.
  String toJson() => json.encode(toMap());
}
