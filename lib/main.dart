import 'dart:io';

void main() {
  while (true) {
    print("***********************************************************");
    print("wellcome to distance and time calculator\n");
    print("***********************************************************");
    print(" ");
    print(
      "\n choose your programm  \n \n 1-calculate distance \n 2-calculate time \n 3-calculate speed \n 4-to exit \n",
    );
    print("***********************************************************");
    int? input = int.parse(stdin.readLineSync()!);
    if (input == 1) {
      print("plz enter the speed ");
      int speed = int.parse(stdin.readLineSync()!);

      print(' ');
      print('plz enter the time');
      int time = int.parse(stdin.readLineSync()!);
      Distance one = Distance(time, speed);
      one.calculateDistance();
      one.printthecalculated();
    } else if (input == 2) {
      print(" plz enter the distance");
      int distance = int.parse(stdin.readLineSync()!);
      print(" plz enter the speed");
      int speed = int.parse(stdin.readLineSync()!);

      Time one = Time(speed, distance);
      one.calculateTime();
      one.printthecalculated();
    } else if (input == 3) {
      print(" plz enter the distance");
      int distance = int.parse(stdin.readLineSync()!);
      print(" plz enter the time");
      int time = int.parse(stdin.readLineSync()!);

      Speed one = Speed(time, distance);
      one.calculaterectangle();
      one.printthecalculated();
    } else {
      print("**********programm endedd");
      break;
    }
  }
}

class Distance {
  int Time;
  int speed;
  int distance = 0;

  Distance(this.Time, this.speed);

  int calculateDistance() {
    distance = Time * speed;
    return distance;
  }

  void printthecalculated() {
    print(" the distance is : $distance \n");
  }
}

class Time {
  int distance;
  int speed;
  double time = 0;

  Time(this.speed, this.distance);

  double calculateTime() {
    time = distance / speed;
    return time;
  }

  void printthecalculated() {
    print(" the distance is : $time \n");
  }
}

class Speed {
  int Time;
  int Distance;
  double speed = 0;

  Speed(this.Time, this.Distance);

  double calculaterectangle() {
    speed = Distance / Time;
    return speed;
  }

  void printthecalculated() {
    print(" the distance is : $speed \n");
  }
}
