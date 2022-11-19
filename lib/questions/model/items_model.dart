
import 'package:hive/hive.dart';

part 'items_model.g.dart';

@HiveType(typeId: 0)
class Items extends HiveObject{
  @HiveField(0)
  List<String>? tags;

  @HiveField(1)
  Owner? owner;

  @HiveField(2)
  bool? isAnswered;

  @HiveField(3)
  int? viewCount;

  @HiveField(4)
  int? answerCount;

  @HiveField(5)
  int? score;

  @HiveField(6)
  int? lastActivityDate;

  @HiveField(7)
  int? creationDate;

  @HiveField(8)
  int? lastEditDate;

  @HiveField(9)
  int? questionId;

  @HiveField(10)
  String? contentLicense;

  @HiveField(11)
  String? link;

  @HiveField(12)
  String? title;

  @HiveField(13)
  int? acceptedAnswerId;

  @HiveField(14)
  int? closedDate;

  @HiveField(15)
  String? closedReason;

  @HiveField(16)
  int? bountyAmount;

  @HiveField(17)
  int? bountyClosesDate;

  Items(
      {this.tags,
        this.owner,
        this.isAnswered,
        this.viewCount,
        this.answerCount,
        this.score,
        this.lastActivityDate,
        this.creationDate,
        this.lastEditDate,
        this.questionId,
        this.contentLicense,
        this.link,
        this.title,
        this.acceptedAnswerId,
        this.closedDate,
        this.closedReason,
        this.bountyAmount,
        this.bountyClosesDate});

  Items.fromJson(Map<String, dynamic> json) {
    tags = json['tags'].cast<String>();
    owner = json['owner'] != null ? new Owner.fromJson(json['owner']) : null;
    isAnswered = json['is_answered'];
    viewCount = json['view_count'];
    answerCount = json['answer_count'];
    score = json['score'];
    lastActivityDate = json['last_activity_date'];
    creationDate = json['creation_date'];
    lastEditDate = json['last_edit_date'];
    questionId = json['question_id'];
    contentLicense = json['content_license'];
    link = json['link'];
    title = json['title'];
    acceptedAnswerId = json['accepted_answer_id'];
    closedDate = json['closed_date'];
    closedReason = json['closed_reason'];
    bountyAmount = json['bounty_amount'];
    bountyClosesDate = json['bounty_closes_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tags'] = this.tags;
    if (this.owner != null) {
      data['owner'] = this.owner!.toJson();
    }
    data['is_answered'] = this.isAnswered;
    data['view_count'] = this.viewCount;
    data['answer_count'] = this.answerCount;
    data['score'] = this.score;
    data['last_activity_date'] = this.lastActivityDate;
    data['creation_date'] = this.creationDate;
    data['last_edit_date'] = this.lastEditDate;
    data['question_id'] = this.questionId;
    data['content_license'] = this.contentLicense;
    data['link'] = this.link;
    data['title'] = this.title;
    data['accepted_answer_id'] = this.acceptedAnswerId;
    data['closed_date'] = this.closedDate;
    data['closed_reason'] = this.closedReason;
    data['bounty_amount'] = this.bountyAmount;
    data['bounty_closes_date'] = this.bountyClosesDate;
    return data;
  }
}

@HiveType(typeId: 1)
class Owner extends HiveObject{
  @HiveField(0)
  int? accountId;

  @HiveField(1)
  int? reputation;

  @HiveField(2)
  int? userId;

  @HiveField(3)
  String? userType;

  @HiveField(4)
  String? profileImage;

  @HiveField(5)
  String? displayName;

  @HiveField(6)
  String? link;

  @HiveField(7)
  int? acceptRate;

  Owner(
      {this.accountId,
        this.reputation,
        this.userId,
        this.userType,
        this.profileImage,
        this.displayName,
        this.link,
        this.acceptRate});

  Owner.fromJson(Map<String, dynamic> json) {
    accountId = json['account_id'];
    reputation = json['reputation'];
    userId = json['user_id'];
    userType = json['user_type'];
    profileImage = json['profile_image'];
    displayName = json['display_name'];
    link = json['link'];
    acceptRate = json['accept_rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['account_id'] = this.accountId;
    data['reputation'] = this.reputation;
    data['user_id'] = this.userId;
    data['user_type'] = this.userType;
    data['profile_image'] = this.profileImage;
    data['display_name'] = this.displayName;
    data['link'] = this.link;
    data['accept_rate'] = this.acceptRate;
    return data;
  }
}
