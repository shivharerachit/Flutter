// Course Link: https://youtu.be/CzRQ9mnmh44
// Duration: 2:47 - 
// Classes and Objects

class Cookie{
  // variables
  final String shape;
  final double size;
  // Constructor
  // Normal Constructor
  Cookie({required this.shape, required this.size}){ // this is pointing the instance of the class or the object of the class
    baking();
  }

  // Private Variables 
  // Private Variables are private to the file and not to the class
  int _height = 4;
  int _width = 5;

  // Getters
  int get height => _height;
  int get width => _width;

  // Setters
  set setHeight(int h){
    _height = h;
  }

  // Stactic Variables/Functions
  // We define Variables/Functions static so that it can be accessed outside class without creating object of the class
  static const int maxCookies = 10;
  static void bakeCookies(){
    // print("Baking $height cookies"); // This will give error as height is not static
    print("Baking $maxCookies cookies");
  }
  // To create a private variable a read-only value outside the class



  // functions/method
  int calculateSize(){
    return _height*_width;
  }

  void baking(){
    print("Your cookie which is of the shape $shape and size $size cm is baking..");
  }

  bool isCooling(){
    return false;
  }
}

// Approach of using class without object.
// void main(){
//   Cookie().baking();
//   final isCookieCooling = Cookie().isCooling();
//   print(isCookieCooling);
// }

// Approach of using class with object.{Better Approach}
void main(){
  Cookie cookie = Cookie(shape:'Hello', size:20);
  cookie.isCooling();
  cookie.setHeight = 10;
  print(cookie.height);
}