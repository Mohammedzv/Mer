# Mer
import 'dart:io';

void main() {
  // إدخال الاسم الأولي
  print("أدخل اسمك:");
  String? username = stdin.readLineSync();

  print("أهلاً بك يا $username");

  // هل تريد تغيير اسمك؟
  print("هل تريد تغيير اسمك؟ (نعم / لا):");
  String? answer = stdin.readLineSync();

  if (answer != null && answer.toLowerCase() == "نعم") {
    print("أدخل الاسم الجديد:");
    String? newName = stdin.readLineSync();
    if (newName != null && newName.isNotEmpty) {
      username = newName;
      print("تم تحديث اسمك إلى: $username");
    }
  }

  // تقييم المستخدم من 1 إلى 5
  print("قيّم تجربتك من 1 إلى 5 نجوم:");
  String? rateInput = stdin.readLineSync();
  int rating = int.tryParse(rateInput ?? "") ?? 0;

  if (rating >= 1 && rating <= 5) {
    String stars = '⭐' * rating;
    print("شكرًا على تقييمك يا $username: $stars");
  } else {
    print("تقييم غير صالح، الرجاء إدخال رقم بين 1 و 5.");
  }
}
