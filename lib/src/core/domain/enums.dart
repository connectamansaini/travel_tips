enum Rating { star5, star4, star3, star2 }

int mapIndexToBudgetPerPerson(int index) {
  switch (index) {
    case 0:
      return 20000;
    case 1:
      return 40000;
    case 2:
      return 60000;
    case 3:
      return 80000;
    default:
      return 20000;
  }
}

int mapRatingToStarLength(Rating rating) {
  switch (rating) {
    case Rating.star5:
      return 5;
    case Rating.star4:
      return 4;
    case Rating.star3:
      return 3;
    case Rating.star2:
      return 2;
  }
}
