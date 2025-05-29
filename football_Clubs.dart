void main() {
  Country country = Country("pak", 4, <Club>[]);
  Club club1 = Club("sindh", "karachi", <Coaches>[], <Player>[]);
  Club club2 = Club("punjab", "lahore", <Coaches>[], <Player>[]);
  Club club3 = Club("kpk", "peshawar", <Coaches>[], <Player>[]);
  Club club4 = Club("balochistan", "quetta", <Coaches>[], <Player>[]);
  country.clubs.add(club1);
  country.clubs.add(club2);
  country.clubs.add(club3);
  country.clubs.add(club4);
  club1.coaches.add(Coaches("Ali", "Head Coach", 5));
  club2.coaches.add(Coaches("zaid", "fitness", 5));
  club3.coaches.add(Coaches("qamar", "field coach", 5));
  club4.coaches.add(Coaches("zia", "game Coach", 5));
  club1.players.addAll([
    Player("Ahmed", "Forward", 25),
    Player("Bilal", "Midfielder", 24),
    Player("Ali", "Defender", 26),
  ]);

  country.displayInfo();
  club1.displayClubInfo();
  club2.displayClubInfo();
  club3.displayClubInfo();
  club4.displayClubInfo();
  club1.coaches.forEach((coach) {
    coach.displaycoachInfo();
  });
  club1.players.forEach((player) {
    player.displayPlayerInfo();
  });
}

class Country {
  String countryName;
  int clubsCount;
  List<Club> clubs;
  Country(this.countryName, this.clubsCount, this.clubs);
  void displayInfo() {
    print(
      "Country: $countryName, Clubs Count: $clubsCount,clubs:${clubs.first.clubName},location:${clubs.first.clubLocation}",
    );
  }
}

class Club {
  String clubName;
  String clubLocation;
  List<Coaches> coaches;
  List<Player> players;
  Club(this.clubName, this.clubLocation, this.coaches, this.players);
  void displayClubInfo() {
    print(
      "clubs:$clubName,location:$clubLocation,coaches:${coaches.length},players:${players.length}",
    );
  }
}

class Coaches {
  String coachName;
  String coachRole;
  int experienceYears;
  Coaches(this.coachName, this.coachRole, this.experienceYears);
  void displaycoachInfo() {
    print(
      "coachName:$coachName,coachRole:$coachRole,experirenceYears:$experienceYears",
    );
  }
}

class Player {
  String playerName;
  String playerPosition;
  int playerAge;
  Player(this.playerName, this.playerPosition, this.playerAge);
  void displayPlayerInfo() {
    print(
      "playerName:$playerName, playerPosition:$playerPosition, playerAge:$playerAge",
    );
  }
}
