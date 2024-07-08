import 'dart:io';

void main() {

  double firstNumber = 0;
  double secondNumber = 0;
  String operation = "";
  String? entry = "";

  List<String> operations = <String>["+", "-", "*", "/"];

  void getOperation() {
    print("Digite a operação: ${operations.toString()}");
    entry = stdin.readLineSync();

    if (entry != null) {
      if (operations.contains(entry)) {
        operation = entry!;
      } else {
        print("Essa operação não existe");
        getOperation();
      }
    }
  }

  void calculate(String selection) {
    if (selection.isNotEmpty) {
      switch (selection) {
        case "+":
        print(firstNumber + secondNumber);
 
        case "-":
        print(firstNumber - secondNumber);

        case "*":
        print(firstNumber * secondNumber);

        case "/":
        print(firstNumber / secondNumber);

        break;
      }
    }
  }

  print("Digite o primeiro valor:");
  entry = stdin.readLineSync();

  if (entry != null) {
    firstNumber = double.parse(entry!);
  }

  getOperation();

  print("Digite o segundo valor:");
  entry = stdin.readLineSync();
  if(entry != null) {
    secondNumber = double.parse(entry!);
  }

  calculate(operation);

}

