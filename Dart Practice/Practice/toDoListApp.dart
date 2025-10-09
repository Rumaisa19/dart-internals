import 'dart:io';

void main() {
  TodoListApp();
}

void TodoListApp() {
  List<Map<String, dynamic>> taskList = [];

  // Input Task + Add More Tasks
  String moreTask = "yes";

  do {
    stdout.write("\nEnter a task: ");
    String? taskInput = stdin.readLineSync();

    if (taskInput != null && taskInput.isNotEmpty) {
      taskList.add({
        "task": taskInput,
        "done": false,
      });
      print("✅ Task added!");
    } else {
      print("❌ Invalid task.");
    }

    stdout.write("Do you want to add more tasks? (yes/no): ");
    moreTask = stdin.readLineSync()!.toLowerCase();
  } while (moreTask == "yes");

  // View Tasks
  stdout.write("Do you want to view your tasks? (yes/no): ");
  String viewTask = stdin.readLineSync()!.toLowerCase();
  if (viewTask == "yes") {
    print("\n📋 Your Tasks:");
    for (int i = 0; i < taskList.length; i++) {
      print("${i + 1}. ${taskList[i]['task']} [${taskList[i]['done'] ? '✅ Done' : '⏳ Pending'}]");
    }
  }

  // Mark as Completed
  stdout.write("Do you want to mark any task as completed? (yes/no): ");
  String complete = stdin.readLineSync()!.toLowerCase();
  if (complete == "yes") {
    stdout.write("Enter task number to mark as done: ");
    int? doneIndex = int.tryParse(stdin.readLineSync() ?? '');
    if (doneIndex != null && doneIndex > 0 && doneIndex <= taskList.length) {
      taskList[doneIndex - 1]['done'] = true;
      print("🎉 Task marked as completed.");
    } else {
      print("❌ Invalid task number.");
    }
  }

  // Delete Task
  stdout.write("Do you want to delete any task? (yes/no): ");
  String del = stdin.readLineSync()!.toLowerCase();
  if (del == "yes") {
    stdout.write("Enter task number to delete: ");
    int? delIndex = int.tryParse(stdin.readLineSync() ?? '');
    if (delIndex != null && delIndex > 0 && delIndex <= taskList.length) {
      taskList.removeAt(delIndex - 1);
      print("🗑️ Task deleted.");
    } else {
      print("❌ Invalid task number.");
    }
  }

  // Exit Message
  stdout.write("Do you want to modify any task later? (yes/no): ");
  String exit = stdin.readLineSync()!.toLowerCase();
  if (exit == "yes") {
    print("🛠️ Sounds great! Make sure to complete your tasks on time!");
  } else {
    print("👋 Goodbye! Stay productive.");print("😂");
  }
}
