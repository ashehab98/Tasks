import 'dart:io';

void main() {
  task1();
}

// برنامج يحتوي على أسماء حيوانات و طباعة الاسماء التى بداخلها باستخدم foreach
void task1() {
  List<String> animals = [
    "Kangaroo",
    "Horse",
    "Cat",
    "Lion",
    "Dog",
    "Panda",
  ];
  animals.forEach((animalName) {
    print(animalName);
  });
}

//برنامج فيه ليست أسماء أفلام هلف عليها بإستخدام foreach وأخزن أسماء الأفلام التى تبدأ بحرف a سواء الحرف capital or small فى ليست جديدة وطباعتهم
void task2() {
  List<String> movies = [
    "alllll 1",
    "Aqqqq 2",
    "hlllll",
    "bllll",
    "aoooo 3",
    "Apppp 4",
    "kpppp",
    "Tpppp",
    "Aapp 5",
  ];
  List<String> aMovies = [];
  movies.forEach((element) {
    if (element.toLowerCase().startsWith("a")) {
      aMovies.add(element);
    }
  });
  print(aMovies);
}

//برنامج ياخد الايميل و الباسوورد من اليوزر ويتشيك عليهم هل هما صح ولا غلط يعني اليوزر لازم ينتهي ب @gmail.com والباسوورد لا يقل عن 7 أحرف او أرقام و لو اليوزر كتب الباسوورد 3 مرات غلط يطبعله انه خلص كل المحاولات
void task3() {
  int i = 1;
  for (i; i <= 3; i++) {
    print("Enter your email");
    String email = stdin.readLineSync()!;
    print("Enter your password");
    String password = stdin.readLineSync()!;
    if (i >= 3) {
      print("لقد تجاوزت الحد الاقصى لتسجيل لدخول");
    } else if (!email.endsWith("@gmail.com")) {
      print("Write the correct email");
    } else if (password.length < 7) {
      print("Password should be more than 7 digits");
    } else {
      print(email);
      print(password);
      break;
    }
  }
}

//اتنين ميثود واحده تطبع الارقام الزوجيه و التانيه تطبع الارقام الفرديه من و الى رقم اليوزر اللى يقوم بتدخيله
void task4Even() {
  print("Enter the first number");
  int fitst = int.tryParse(stdin.readLineSync()!) ?? 0;
  print("Enter the second number");
  int second = int.tryParse(stdin.readLineSync()!) ?? 0;
  int x = fitst;
  for (x; x <= second; x++) {
    if (x.isEven) {
      print("The even number = $x");
    }
  }
}

void task4Odd() {
  print("Enter the first number");
  int fitst = int.tryParse(stdin.readLineSync()!) ?? 0;
  print("Enter the second number");
  int second = int.tryParse(stdin.readLineSync()!) ?? 0;
  int x = fitst;
  for (x; x <= second; x++) {
    if (x.isOdd) {
      print("The odd number = $x");
    }
  }
}

//برنامج بياخد حرف او حرفين او تلاتة ويدور فى ليست فيها كلمات ولو لقى اي كلمه موجوده بتبدأ بالحرف ده او الاتنين او التلاته ياخدهم ويضيفهم فى ليست جديده
void task5() {
  print("Enter a letter or two letters or three letters");
  String letters = stdin.readLineSync()!;
  List<String> words = [
    "Lighthouse",
    "Lighthouse",
    "Lighthouse",
    "nebula",
    "nebula",
    "nebula",
    "serendipity",
    "serendipity",
    "serendipity",
    "effervescent",
    "effervescent",
    "effervescent",
  ];
  List<String> letterWord = [];
  words.forEach((element) {
    if (element.toLowerCase().startsWith(letters)) {
      letterWord.add(element);
    }
  });
  print(letterWord);
}

//برنامج ياخد جملة من اليوزر وتقسمها كلمات وتخزنها في ليست وتطبع ال ليست الجديدة
void task6() {
  print("Enter the sentence");
  String sentence = stdin.readLineSync()!;
  List<String> words = sentence.split("");
  print(words);
}

//برنامج ياخد جملة ويمسح اي ارقام او علامات مميزة فى الجملة ويسيب الكلمات بس ويطبع الجملة الجديدة بعد التغيير
void task7() {
  print("Enter the sentence");
  String sentence = stdin.readLineSync()!;
  String sentenceWithoutSigns = "";
  sentenceWithoutSigns =
      sentence.replaceAll(RegExp("[1234567890-=`~!@#%^&*()_+|/]"), "");
  print(sentenceWithoutSigns);
}

//برنامج ياخد 10 كلمات وبعد ما يخلصهم يطبعهم كلهم كجمله واحده
void task8() {
  List<String> names = [];
  String sentence = "";
  for (int i = 0; i < 10; i++) {
    print("Enter the name");
    String sentence = stdin.readLineSync()!;
    names.add(sentence);
  }
  sentence = names.join(" ");
  print(sentence);
}

// برنامج فيه ليست وفيها أسماء و أطبع اسم واعدى اسم
void task9() {
  List<String> names = [
    "Ahmed",
    "Ali",
    "Kareem",
    "Mostafa",
    "Mahmoud",
  ];
  for (int i = 0; i < names.length; i += 2) {
    print(names[i]);
  }
}

// برنامج ياخد أسماء من اليوزر ويخزنها في ليست ولو اليوزر كتب كلمة " end or exit or close " البرنامج يقف وميكملش تخزين
void task10() {
  List<String> list = [];
  while (true) {
    print("Enter names");
    String names = stdin.readLineSync()!;
    if (names.toLowerCase() == "exit" ||
        names.toLowerCase() == "end" ||
        names.toLowerCase() == "close") {
      break;
    } else {
      list.add(names);
    }
  }
  print(list);
}
