import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_calculadora/widgets/sub_result.dart';

import '../controllers/calculator_controller.dart';
import 'line_separator.dart';
import 'main_result.dart';

class MathResults extends StatelessWidget {
  
  final calculatorCtrl = Get.find<CalculatorController>();
  
  MathResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => 
      Column(
        children: [
          SubResult( text: '${calculatorCtrl.firstNumber}' ),
          SubResult( text: '${calculatorCtrl.operation}' ),
          SubResult( text: '${calculatorCtrl.secondNumber}' ),
          const LineSeparator(),
          MainResultText( text: '${calculatorCtrl.mathResult}' ),
        ],
      )
    );
  }
}