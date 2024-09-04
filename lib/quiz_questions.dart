class Questions {
  final String questionstext;
  final Map<String, int> answers;

  Questions(this.questionstext, this.answers);
}

List<Questions> questions = [
  Questions("Pick a seat:", {
    "An overstuffed couch that takes up the entire room.": 2,
    "A rocking chair.": 1,
    "A giant bean bag that I can snuggle up in.": 3,
    "A swinging bench on the front porch.": 4
  }),
  Questions("Your friend offers to grab you a drink. What do you ask for?:", {
    "Juice or soda. I’m in the mood for something sweet.": 3,
    "I’ll just grab the drink myself.": 2,
    "An energy drink. Time to liven things up!": 1,
    "Anything’s fine. I want to be surprised!": 4
  }),
  Questions("What’s your favorite day of the week?", {
    "Friday. I have all night to stay up late with my friends.": 2,
    "Sunday. I can spend all day recharging at home.": 1,
    "Any day I can spend with my bestie is my favorite.": 3,
    "Saturday. There are endless opportunities for adventure!": 4
  }),
  Questions(
      "You just got the aux cord in the car. What tunes are you putting on?",
      {"Lo-fi": 1, "Pop": 4, "Classic rock": 3, "EDM": 2}),
  Questions("What’s your favorite type of fish sandwich?", {
    "A classic tuna fish sandwich.": 4,
    "Salmon-cucumber sushi rolls count, right?": 1,
    "A lobster roll.": 2,
    "A bagel with whitefish.": 3
  }),
  Questions("What’s your favorite type of fish sandwich?", {
    "Something thrilling, like Gone Girl or The Girl with the Dragon Tattoo.":3,
    "Something wholesome, like The Little Prince or The Secret Garden.": 2,
    "Something classic, like Animal Farm or Of Mice and Men.": 4,
    "Something educational, like a language-learning or travel-related book.": 1
  })
];
