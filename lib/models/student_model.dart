import 'package:json_annotation/json_annotation.dart';
part 'student_model.g.dart';

@JsonSerializable()
class Student {
  int? id;
  String? name;
  String? address;
  Student({
    this.id,
    this.name,
    this.address,
  });

  Student copyWith({
    int? id,
    String? name,
    String? address,
  }) {
    return Student(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toJson() => _$StudentToJson(this);

  factory Student.fromJson(Map<String, dynamic> map) => _$StudentFromJson(map);

  @override
  String toString() => 'Student(id: $id, name: $name, address: $address)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Student &&
        other.id == id &&
        other.name == name &&
        other.address == address;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ address.hashCode;
}
