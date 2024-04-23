import 'dart:async';

void main(List<String> args) {
  bringUser(2304764)
    .then((Map<String, dynamic> result) {
      print(result);
      return findCourses(result['Username']);
    })
    .then((List<String> courses) {
      print(courses);
      return courses;
    })
    .then((List<String> courses) {
      // Chaining another 'then' to handle grades after courses are fetched
      print('Fetching grades for courses...');
      return Future.wait([
        grade(courses[0]),
        grade(courses[1]),
        grade(courses[2]),
      ]);
    })
    .then((List<String> grades) {
      print('Grades for courses:');
      print('Course 1: ${grades[0]}');
      print('Course 2: ${grades[1]}');
      print('Course 3: ${grades[2]}');
    })
    .catchError((error) {
      print('Error occurred: $error');
    })
    .whenComplete(() {
      print('Process completed.'); // 'whenComplete' to indicate completion
    });
}

Future<Map<String, dynamic>> bringUser(int idNo) {
  print("Creating user with ID number $idNo");
  return Future.delayed(Duration(seconds: 2), () {
    print('User created successfully.');
    return {'Username': "BarisGuzel", 'id': idNo}; 
  });
}

Future<List<String>> findCourses(String user) {
  print("Preparing courses for user: $user");
  return Future.delayed(Duration(seconds: 4), () {
    print('Courses are ready.');
    return ["Computer Architecture", "Microprocessor", "Object Oriented Programming"];
  });
}

Future<String> grade(String course) {
  print("Calculating grade for course: $course");
  return Future.delayed(Duration(seconds: 4), () {
    print('Grade calculation completed.');

    switch (course) {
      case "Computer Architecture":
        return "AA";
      case "Microprocessor":
        return "BA";
      case "Object Oriented Programming":
        return "AA";
      default:
        throw Exception('Invalid course: $course');
    }
  });
}
