class UserData {
  String? displayName, email, photoUrl;

  UserData(this.displayName, this.email, this.photoUrl);

  UserData.fromJson(Map<String, dynamic> json) {
    displayName = json["displayName"];
    email = json["email"];
    photoUrl = json["photourl"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["displayName"] = displayName;
    data["email"] = email;
    data["photoUrl"] = photoUrl;

    return data;
  }
}
