class Book {
  // attributes go here
  String title;
  double price;
  String author;
  int numbereOfPages;

  // constructor
  Book({this.title, this.author, this.numbereOfPages, this.price});

  // methods
  void finalPrice() {
    // sles tax rate is 6%
    var tax = (6 / 100) * (this.price);
    print('\n tax: ${tax}');
  }
}
