class Book {
  // attributes go here
  String title;
  double price;
  String author;
  int numberOfPages;

  // constructor
  Book({this.title, this.author, this.numberOfPages, this.price});

  // methods
  void finalPrice() {
    // sales tax rate is 6%
    var tax = (6 / 100) * (this.price);
    print("\n6% sales tax: ${tax}");
  }
}
