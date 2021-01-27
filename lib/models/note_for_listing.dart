class NoteForListing {
  String noteID;
  String noteTitle;
  DateTime createDateTime;
  DateTime latestEditDateTime;

  NoteForListing(
      {this.noteID,
      this.noteTitle,
      this.createDateTime,
      this.latestEditDateTime});

  factory NoteForListing.fromJson(Map<String, dynamic> json) {
    return NoteForListing(
      noteID: json['noteID'],
      noteTitle: json['noteTitle'],
      createDateTime: json['createDateTime'],
      latestEditDateTime: json['latestEditDateTime'],
    );
  }
}
