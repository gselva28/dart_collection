void main() {
  SelfDrivingCar waymo = SelfDrivingCar('1 Hacker Way');
  waymo.drive();
}

class Car {
  int noOfSeats = 5;

  void drive() {
    print('wheels turn right');
  }
}

class SelfDrivingCar extends Car {
  String destination;

  SelfDrivingCar(String userSelfDestination) {
    destination = userSelfDestination;
  }

  @override
  void drive() {  //for the child
    super.drive(); //go to the parent

    print('Sterring towards $destination');
  }
}