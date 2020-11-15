import 'package:bmi_calculator/components/text_field_imc.dart';
import 'package:bmi_calculator/components/text_imc.dart';
import 'package:bmi_calculator/components/text_result_imc.dart';
import 'package:flutter/material.dart';

class ImcScreen extends StatefulWidget {
  @override
  _ImcScreenState createState() => _ImcScreenState();
}

class _ImcScreenState extends State<ImcScreen> {

  String resultImc = "";
  String situacaoImc = "";

  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            " Calcular IMC",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0.0,
          backgroundColor: Color(0xfffafafa),

        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 20.0),
                TextImc("Sua altura em metros: "),
                SizedBox(height: 8.0),
                TextFieldImc(heightController, "Sua altura em metros"),
                SizedBox(height: 20.0),
                TextImc("Seu peso em quilos: "),
                SizedBox(height: 8.0),
                TextFieldImc(weightController, "Seu peso em quilos"),
                SizedBox(height: 20.0),
                Container(
                  width: double.infinity,
                  height: 50.0,
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      "Calcular",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      double height = double.parse(heightController.value.text);
                      double weight = double.parse(weightController.value.text);
                      calcularImc(weight, height);
                    },
                  ),
                ),
                SizedBox(height: 50.0),
                TextResultImc("Seu índice de massa corporal é: ", 24.0),
                SizedBox(height: 30.0),
                TextResultImc(resultImc, 30.0),
                SizedBox(height: 30.0),
                TextResultImc(situacaoImc, 40.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String calcularImc(double weight, double height) {
    double finalResult = weight / (height * height);
    String imc = finalResult.toStringAsFixed(2);
    setState(() {
      resultImc = imc;
      situacaoImc = situation(finalResult);
      heightController.clear();
      weightController.clear();
    });
    FocusScope.of(context).requestFocus(new FocusNode());
  }

  String situation(double value) {
    if (value < 18.5) {
      return "Abaixo do peso";
    } else if (value > 18.5 && value <= 24.9) {
      return "Peso normal";
    } else if (value > 25 && value <= 29.9) {
      return "Sobrepeso";
    } else if (value > 30 && value <= 34.9) {
      return "Obesidade grau 1";
    } else if (value > 35 && value <= 39.9) {
      return "Obesidade grau 2";
    } else if (value > 40) {
      return "Obesidade grau 3";
    }
  }

}
