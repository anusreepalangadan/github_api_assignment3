
import 'dart:convert';

List<RepoModel> repoModelFromJson(String str) => List<RepoModel>.from(json.decode(str).map((x) => RepoModel.fromJson(x)));

class RepoModel {
  RepoModel({
    this.id,
    this.nodeId,
    this.name,
    this.fullName,
    this.owner,
    this.htmlUrl
  });

  int? id;
  String? nodeId;
  String? name;
  String? fullName;
  Owner? owner;
  String? htmlUrl;

  factory RepoModel.fromJson(Map<String, dynamic> json) => RepoModel(
    id: json["id"],
    nodeId: json["node_id"],
    name: json["name"],
    fullName: json["full_name"],
    owner: Owner.fromJson(json["owner"]),
    htmlUrl: json["html_url"],
  );

}

class Owner {
  Owner({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
  });

  String? login;
  int? id;
  String? nodeId;
  String? avatarUrl;

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
    login: json["login"],
    id: json["id"],
    nodeId: json["node_id"],
    avatarUrl: json["avatar_url"],
  );

}


