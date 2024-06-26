import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bitirme_mongo_monolit/models/user_models/student_model.dart';

import '../../services/data_transfer_service.dart';

class StudentRepo extends ChangeNotifier {
  List<Student> students = [];
  var student;
  final DataService converter;

  StudentRepo(this.converter);

  Future<List<Student>> getAll() async {
    students = await converter.getStudents();
    notifyListeners();
    return students;
  }

  Future<Student> getStudent(String id) async {
    student = await converter.getStudent(id);
    notifyListeners();
    return student;
  }

  addStudent(Student student) {
    converter.addStudent(student);
    notifyListeners();
  }
}

final studentProvider = ChangeNotifierProvider(
  (ref) {
    return StudentRepo(ref.watch(dataServiceProvider));
  },
);

final FutureProvider<List<Student>> studentListProvider =
    FutureProvider((ref) async {
  return ref.read(dataServiceProvider).getStudents();
});
