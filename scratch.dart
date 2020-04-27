import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String tt = await task2();
  task3(tt);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration dur = Duration(seconds: 5);
  String result;
  await Future.delayed(dur, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(String task2Result) {
  print('Task 3 complete $task2Result');
}
