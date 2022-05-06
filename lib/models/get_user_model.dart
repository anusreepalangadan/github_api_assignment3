class UserModel {
  UserModel({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.gravatarId,
    this.url,
    this.htmlUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.starredUrl,
    this.subscriptionsUrl,
    this.organizationsUrl,
    this.reposUrl,
    this.eventsUrl,
    this.receivedEventsUrl,
    this.type,
    this.siteAdmin,
    this.name,
    this.company,
    this.blog,
    this.location,
    this.email,
    this.hireable,
    this.bio,
    this.twitterUsername,
    this.publicRepos,
    this.publicGists,
    this.followers,
    this.following,
    this.createdAt,
    this.updatedAt,
  });

  String? login;
  int? id;
  String? nodeId;
  String? avatarUrl;
  String? gravatarId;
  String? url;
  String? htmlUrl;
  String? followersUrl;
  String? followingUrl;
  String? gistsUrl;
  String? starredUrl;
  String? subscriptionsUrl;
  String? organizationsUrl;
  String? reposUrl;
  String? eventsUrl;
  String? receivedEventsUrl;
  String? type;
  bool? siteAdmin;
  String? name;
  String? company;
  String? blog;
  String? location;
  String? email;
  String? hireable;
  String? bio;
  String? twitterUsername;
  int? publicRepos;
  int? publicGists;
  int? followers;
  int? following;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    login: json["login"]??"",
    id: json["id"],
    nodeId: json["node_id"]??"",
    avatarUrl: json["avatar_url"]??"",
    gravatarId: json["gravatar_id"]??"",
    url: json["url"]??"",
    htmlUrl: json["html_url"]??"",
    followersUrl: json["followers_url"]??"",
    followingUrl: json["following_url"]??"",
    gistsUrl: json["gists_url"],
    starredUrl: json["starred_url"]??"",
    subscriptionsUrl: json["subscriptions_url"]??"",
    organizationsUrl: json["organizations_url"]??"",
    reposUrl: json["repos_url"]??"",
    eventsUrl: json["events_url"]??"",
    receivedEventsUrl: json["received_events_url"]??"",
    type: json["type"]??"",
    siteAdmin: json["site_admin"],
    name: json["name"]??"",
    company: json["company"]??"",
    blog: json["blog"]??"",
    location: json["location"]??"",
    email: json["email"]??"",
    hireable: json["hireable"]??"",
    bio: json["bio"]??"",
    twitterUsername: json["twitter_username"]??"",
    publicRepos: json["public_repos"]??0,
    publicGists: json["public_gists"]??0,
    followers: json["followers"]??0,
    following: json["following"]??0,
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );
}
