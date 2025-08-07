import 'package:freezed_annotation/freezed_annotation.dart';

part 'signupentity.g.dart';

@JsonSerializable()
class SignUpEntity {
  @JsonKey(name: "token")
  final String token;

  SignUpEntity(this.token);

  factory SignUpEntity.fromJson(Map<String, dynamic> json) =>
      _$SignUpEntityFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpEntityToJson(this);
}
