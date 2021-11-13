// Lets create a Dog class together
class Dog {
  String breed;
  String color;
  String name;
  double weight;

  // classic constructor
  // Dog(String breed, String color, String name, double weight) {
  //   this.breed = breed;
  //   this.color = color;
  //   this.name = name;
  //   this.weight = weight;
  // }

  // simpler way to create a constructor
  // Dog(this.breed, this.color, this.name, this.weight);

  // constructor with named parameters
  Dog({this.breed, this.color, this.name, this.weight});

  void bark() {
    print("Bark Bark!!!!");
  }

  void showProfile() {
    print("\n--- " + this.name + "'s Info ---");
    print("Breed: ${this.breed}");
    print("Color: ${this.color}");
    print("Weight: ${this.weight}");
  }
}

void main() {
  // var dog1 = Dog('Husky', 'black and white', 'Geo', 30.0); /// classic constructor params
  var dog1 =
      Dog(breed: 'Husky', weight: 30.0, name: 'Goe', color: 'black and white');
  dog1.bark();
  dog1.showProfile();

  var dog2 = Dog(
      breed: 'Corgi',
      color: 'orange and white',
      name: 'Meatloaf',
      weight: 30.0);
  dog2.showProfile();
}
