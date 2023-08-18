import 'package:json_annotation/json_annotation.dart';

part 'chatwoot_user.g.dart';

///
@JsonSerializable(explicitToJson: true)
class ChatwootUser {
  ///custom chatwoot user identifier
  @JsonKey()
  final String? identifier;

  ///custom user identifier hash
  @JsonKey(name: "identifier_hash")
  final String? identifierHash;

  ///name of chatwoot user
  @JsonKey()
  final String? name;

  ///email of chatwoot user
  @JsonKey()
  final String? email;

  ///profile picture url of user
  @JsonKey(name: "avatar_url")
  final String? avatarUrl;

  ///any other custom attributes to be linked to the user
  @JsonKey(name: "custom_attributes")
  final dynamic customAttributes;

  @JsonKey(name: "phone_number")
  final String? phoneNumber;

  ChatwootUser({
    this.identifier,
    this.identifierHash,
    this.name,
    this.email,
    this.avatarUrl,
    this.customAttributes,
    this.phoneNumber,
  });

  factory ChatwootUser.fromJson(Map<String, dynamic> json) =>
      _$ChatwootUserFromJson(json);

  Map<String, dynamic> toJson() => _$ChatwootUserToJson(this);
}
