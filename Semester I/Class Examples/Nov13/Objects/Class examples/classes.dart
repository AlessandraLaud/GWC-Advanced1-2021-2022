import 'Dog.dart';
import 'Book.dart';
import 'Ebook.dart';

main() {
  // var dog1 = Dog('Husky', 'black and white', 'Geo', 30.0); /// classic constructor params
  var dog1 =
      Dog(breed: 'Husky', weight: 30.0, name: 'Goe', color: 'black and white');
  dog1.showProfile();

  var dog2 = Dog(
      breed: 'Corgi',
      color: 'orange and white',
      name: 'Meatloaf',
      weight: 30.0);
  dog2.showProfile();

  var book = Book(
      title: "The Great Gatsby",
      price: 10,
      author: "F Scott Fitzgerald",
      numberOfPages: 100);
  book.finalPrice();

  var ebook =
      Ebook("gatsby.com", "The Great Gatsby", 10.0, "F Scott Fitzgerald", 100);
  ebook.finalPrice();
}
