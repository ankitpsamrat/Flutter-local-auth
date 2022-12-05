// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

// ignore_for_file: constant_identifier_names

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) =>
    List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  Welcome({
    required this.id,
    required this.nodeId,
    required this.name,
    required this.fullName,
    required this.private,
    required this.owner,
    required this.htmlUrl,
    required this.description,
    required this.fork,
    required this.url,
    required this.forksUrl,
    required this.keysUrl,
    required this.collaboratorsUrl,
    required this.teamsUrl,
    required this.hooksUrl,
    required this.issueEventsUrl,
    required this.eventsUrl,
    required this.assigneesUrl,
    required this.branchesUrl,
    required this.tagsUrl,
    required this.blobsUrl,
    required this.gitTagsUrl,
    required this.gitRefsUrl,
    required this.treesUrl,
    required this.statusesUrl,
    required this.languagesUrl,
    required this.stargazersUrl,
    required this.contributorsUrl,
    required this.subscribersUrl,
    required this.subscriptionUrl,
    required this.commitsUrl,
    required this.gitCommitsUrl,
    required this.commentsUrl,
    required this.issueCommentUrl,
    required this.contentsUrl,
    required this.compareUrl,
    required this.mergesUrl,
    required this.archiveUrl,
    required this.downloadsUrl,
    required this.issuesUrl,
    required this.pullsUrl,
    required this.milestonesUrl,
    required this.notificationsUrl,
    required this.labelsUrl,
    required this.releasesUrl,
    required this.deploymentsUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.pushedAt,
    required this.gitUrl,
    required this.sshUrl,
    required this.cloneUrl,
    required this.svnUrl,
    required this.homepage,
    required this.size,
    required this.stargazersCount,
    required this.watchersCount,
    required this.language,
    required this.hasIssues,
    required this.hasProjects,
    required this.hasDownloads,
    required this.hasWiki,
    required this.hasPages,
    required this.hasDiscussions,
    required this.forksCount,
    required this.mirrorUrl,
    required this.archived,
    required this.disabled,
    required this.openIssuesCount,
    required this.license,
    required this.allowForking,
    required this.isTemplate,
    required this.webCommitSignoffRequired,
    required this.topics,
    required this.visibility,
    required this.forks,
    required this.openIssues,
    required this.watchers,
    required this.defaultBranch,
  });

  final int id;
  final String nodeId;
  final String name;
  final String fullName;
  final bool private;
  final Owner owner;
  final String htmlUrl;
  final String description;
  final bool fork;
  final String url;
  final String forksUrl;
  final String keysUrl;
  final String collaboratorsUrl;
  final String teamsUrl;
  final String hooksUrl;
  final String issueEventsUrl;
  final String eventsUrl;
  final String assigneesUrl;
  final String branchesUrl;
  final String tagsUrl;
  final String blobsUrl;
  final String gitTagsUrl;
  final String gitRefsUrl;
  final String treesUrl;
  final String statusesUrl;
  final String languagesUrl;
  final String stargazersUrl;
  final String contributorsUrl;
  final String subscribersUrl;
  final String subscriptionUrl;
  final String commitsUrl;
  final String gitCommitsUrl;
  final String commentsUrl;
  final String issueCommentUrl;
  final String contentsUrl;
  final String compareUrl;
  final String mergesUrl;
  final String archiveUrl;
  final String downloadsUrl;
  final String issuesUrl;
  final String pullsUrl;
  final String milestonesUrl;
  final String notificationsUrl;
  final String labelsUrl;
  final String releasesUrl;
  final String deploymentsUrl;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime pushedAt;
  final String gitUrl;
  final String sshUrl;
  final String cloneUrl;
  final String svnUrl;
  final dynamic homepage;
  final int size;
  final int stargazersCount;
  final int watchersCount;
  final dynamic language;
  final bool hasIssues;
  final bool hasProjects;
  final bool hasDownloads;
  final bool hasWiki;
  final bool hasPages;
  final bool hasDiscussions;
  final int forksCount;
  final dynamic mirrorUrl;
  final bool archived;
  final bool disabled;
  final int openIssuesCount;
  final License? license;
  final bool allowForking;
  final bool isTemplate;
  final bool webCommitSignoffRequired;
  final List<dynamic> topics;
  final Visibility? visibility;
  final int forks;
  final dynamic openIssues;
  final int watchers;
  final DefaultBranch? defaultBranch;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        id: json["id"],
        nodeId: json["node_id"],
        name: json["name"],
        fullName: json["full_name"],
        private: json["private"],
        owner: Owner.fromJson(json["owner"]),
        htmlUrl: json["html_url"],
        description: json["description"],
        fork: json["fork"],
        url: json["url"],
        forksUrl: json["forks_url"],
        keysUrl: json["keys_url"],
        collaboratorsUrl: json["collaborators_url"],
        teamsUrl: json["teams_url"],
        hooksUrl: json["hooks_url"],
        issueEventsUrl: json["issue_events_url"],
        eventsUrl: json["events_url"],
        assigneesUrl: json["assignees_url"],
        branchesUrl: json["branches_url"],
        tagsUrl: json["tags_url"],
        blobsUrl: json["blobs_url"],
        gitTagsUrl: json["git_tags_url"],
        gitRefsUrl: json["git_refs_url"],
        treesUrl: json["trees_url"],
        statusesUrl: json["statuses_url"],
        languagesUrl: json["languages_url"],
        stargazersUrl: json["stargazers_url"],
        contributorsUrl: json["contributors_url"],
        subscribersUrl: json["subscribers_url"],
        subscriptionUrl: json["subscription_url"],
        commitsUrl: json["commits_url"],
        gitCommitsUrl: json["git_commits_url"],
        commentsUrl: json["comments_url"],
        issueCommentUrl: json["issue_comment_url"],
        contentsUrl: json["contents_url"],
        compareUrl: json["compare_url"],
        mergesUrl: json["merges_url"],
        archiveUrl: json["archive_url"],
        downloadsUrl: json["downloads_url"],
        issuesUrl: json["issues_url"],
        pullsUrl: json["pulls_url"],
        milestonesUrl: json["milestones_url"],
        notificationsUrl: json["notifications_url"],
        labelsUrl: json["labels_url"],
        releasesUrl: json["releases_url"],
        deploymentsUrl: json["deployments_url"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        pushedAt: DateTime.parse(json["pushed_at"]),
        gitUrl: json["git_url"],
        sshUrl: json["ssh_url"],
        cloneUrl: json["clone_url"],
        svnUrl: json["svn_url"],
        homepage: json["homepage"],
        size: json["size"],
        stargazersCount: json["stargazers_count"],
        watchersCount: json["watchers_count"],
        language: json["language"],
        hasIssues: json["has_issues"],
        hasProjects: json["has_projects"],
        hasDownloads: json["has_downloads"],
        hasWiki: json["has_wiki"],
        hasPages: json["has_pages"],
        hasDiscussions: json["has_discussions"],
        forksCount: json["forks_count"],
        mirrorUrl: json["mirror_url"],
        archived: json["archived"],
        disabled: json["disabled"],
        openIssuesCount: json["open_issues_count"],
        license:
            json["license"] == null ? null : License.fromJson(json["license"]),
        allowForking: json["allow_forking"],
        isTemplate: json["is_template"],
        webCommitSignoffRequired: json["web_commit_signoff_required"],
        topics: List<dynamic>.from(json["topics"].map((x) => x)),
        visibility: visibilityValues.map[json["visibility"]],
        forks: json["forks"],
        openIssues: json["open_issues"],
        watchers: json["watchers"],
        defaultBranch: defaultBranchValues.map[json["default_branch"]],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "node_id": nodeId,
        "name": name,
        "full_name": fullName,
        "private": private,
        "owner": owner.toJson(),
        "html_url": htmlUrl,
        "description": description,
        "fork": fork,
        "url": url,
        "forks_url": forksUrl,
        "keys_url": keysUrl,
        "collaborators_url": collaboratorsUrl,
        "teams_url": teamsUrl,
        "hooks_url": hooksUrl,
        "issue_events_url": issueEventsUrl,
        "events_url": eventsUrl,
        "assignees_url": assigneesUrl,
        "branches_url": branchesUrl,
        "tags_url": tagsUrl,
        "blobs_url": blobsUrl,
        "git_tags_url": gitTagsUrl,
        "git_refs_url": gitRefsUrl,
        "trees_url": treesUrl,
        "statuses_url": statusesUrl,
        "languages_url": languagesUrl,
        "stargazers_url": stargazersUrl,
        "contributors_url": contributorsUrl,
        "subscribers_url": subscribersUrl,
        "subscription_url": subscriptionUrl,
        "commits_url": commitsUrl,
        "git_commits_url": gitCommitsUrl,
        "comments_url": commentsUrl,
        "issue_comment_url": issueCommentUrl,
        "contents_url": contentsUrl,
        "compare_url": compareUrl,
        "merges_url": mergesUrl,
        "archive_url": archiveUrl,
        "downloads_url": downloadsUrl,
        "issues_url": issuesUrl,
        "pulls_url": pullsUrl,
        "milestones_url": milestonesUrl,
        "notifications_url": notificationsUrl,
        "labels_url": labelsUrl,
        "releases_url": releasesUrl,
        "deployments_url": deploymentsUrl,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "pushed_at": pushedAt.toIso8601String(),
        "git_url": gitUrl,
        "ssh_url": sshUrl,
        "clone_url": cloneUrl,
        "svn_url": svnUrl,
        "homepage": homepage,
        "size": size,
        "stargazers_count": stargazersCount,
        "watchers_count": watchersCount,
        "language": language,
        "has_issues": hasIssues,
        "has_projects": hasProjects,
        "has_downloads": hasDownloads,
        "has_wiki": hasWiki,
        "has_pages": hasPages,
        "has_discussions": hasDiscussions,
        "forks_count": forksCount,
        "mirror_url": mirrorUrl,
        "archived": archived,
        "disabled": disabled,
        "open_issues_count": openIssuesCount,
        "license": license == null ? null : license!.toJson(),
        "allow_forking": allowForking,
        "is_template": isTemplate,
        "web_commit_signoff_required": webCommitSignoffRequired,
        "topics": List<dynamic>.from(topics.map((x) => x)),
        "visibility": visibilityValues.reverse[visibility],
        "forks": forks,
        "open_issues": openIssues,
        "watchers": watchers,
        "default_branch": defaultBranchValues.reverse[defaultBranch],
      };
}

enum DefaultBranch { MASTER, TRUNK }

final defaultBranchValues =
    EnumValues({"master": DefaultBranch.MASTER, "trunk": DefaultBranch.TRUNK});

class License {
  License({
    required this.key,
    required this.name,
    required this.spdxId,
    required this.url,
    required this.nodeId,
  });

  final String key;
  final String name;
  final String spdxId;
  final String url;
  final String nodeId;

  factory License.fromJson(Map<String, dynamic> json) => License(
        key: json["key"],
        name: json["name"],
        spdxId: json["spdx_id"],
        url: json["url"],
        nodeId: json["node_id"],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "name": name,
        "spdx_id": spdxId,
        "url": url,
        "node_id": nodeId,
      };
}

class Owner {
  Owner({
    required this.login,
    required this.id,
    required this.nodeId,
    required this.avatarUrl,
    required this.gravatarId,
    required this.url,
    required this.htmlUrl,
    required this.followersUrl,
    required this.followingUrl,
    required this.gistsUrl,
    required this.starredUrl,
    required this.subscriptionsUrl,
    required this.organizationsUrl,
    required this.reposUrl,
    required this.eventsUrl,
    required this.receivedEventsUrl,
    required this.type,
    required this.siteAdmin,
  });

  final Login? login;
  final int id;
  final NodeId? nodeId;
  final String avatarUrl;
  final String gravatarId;
  final String url;
  final String htmlUrl;
  final String followersUrl;
  final FollowingUrl? followingUrl;
  final GistsUrl? gistsUrl;
  final StarredUrl? starredUrl;
  final String subscriptionsUrl;
  final String organizationsUrl;
  final String reposUrl;
  final EventsUrl? eventsUrl;
  final String receivedEventsUrl;
  final Type? type;
  final bool siteAdmin;

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        login: loginValues.map[json["login"]],
        id: json["id"],
        nodeId: nodeIdValues.map[json["node_id"]],
        avatarUrl: json["avatar_url"],
        gravatarId: json["gravatar_id"],
        url: json["url"],
        htmlUrl: json["html_url"],
        followersUrl: json["followers_url"],
        followingUrl: followingUrlValues.map[json["following_url"]],
        gistsUrl: gistsUrlValues.map[json["gists_url"]],
        starredUrl: starredUrlValues.map[json["starred_url"]],
        subscriptionsUrl: json["subscriptions_url"],
        organizationsUrl: json["organizations_url"],
        reposUrl: json["repos_url"],
        eventsUrl: eventsUrlValues.map[json["events_url"]],
        receivedEventsUrl: json["received_events_url"],
        type: typeValues.map[json["type"]],
        siteAdmin: json["site_admin"],
      );

  Map<String, dynamic> toJson() => {
        "login": loginValues.reverse[login],
        "id": id,
        "node_id": nodeIdValues.reverse[nodeId],
        "avatar_url": avatarUrl,
        "gravatar_id": gravatarId,
        "url": url,
        "html_url": htmlUrl,
        "followers_url": followersUrl,
        "following_url": followingUrlValues.reverse[followingUrl],
        "gists_url": gistsUrlValues.reverse[gistsUrl],
        "starred_url": starredUrlValues.reverse[starredUrl],
        "subscriptions_url": subscriptionsUrl,
        "organizations_url": organizationsUrl,
        "repos_url": reposUrl,
        "events_url": eventsUrlValues.reverse[eventsUrl],
        "received_events_url": receivedEventsUrl,
        "type": typeValues.reverse[type],
        "site_admin": siteAdmin,
      };
}

enum EventsUrl { HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_EVENTS_PRIVACY }

final eventsUrlValues = EnumValues({
  "https://api.github.com/users/JakeWharton/events{/privacy}":
      EventsUrl.HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_EVENTS_PRIVACY
});

enum FollowingUrl {
  HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_FOLLOWING_OTHER_USER
}

final followingUrlValues = EnumValues({
  "https://api.github.com/users/JakeWharton/following{/other_user}":
      FollowingUrl.HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_FOLLOWING_OTHER_USER
});

enum GistsUrl { HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_GISTS_GIST_ID }

final gistsUrlValues = EnumValues({
  "https://api.github.com/users/JakeWharton/gists{/gist_id}":
      GistsUrl.HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_GISTS_GIST_ID
});

enum Login { JAKE_WHARTON }

final loginValues = EnumValues({"JakeWharton": Login.JAKE_WHARTON});

enum NodeId { MDQ6_VX_NLCJ_Y2_N_TC3 }

final nodeIdValues =
    EnumValues({"MDQ6VXNlcjY2NTc3": NodeId.MDQ6_VX_NLCJ_Y2_N_TC3});

enum StarredUrl { HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_STARRED_OWNER_REPO }

final starredUrlValues = EnumValues({
  "https://api.github.com/users/JakeWharton/starred{/owner}{/repo}":
      StarredUrl.HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_STARRED_OWNER_REPO
});

enum Type { USER }

final typeValues = EnumValues({"User": Type.USER});

enum Visibility { PUBLIC }

final visibilityValues = EnumValues({"public": Visibility.PUBLIC});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap;
    return reverseMap;
  }
}
