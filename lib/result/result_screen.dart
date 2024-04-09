import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../widgets/buttons_material.dart';
import '../widgets/calculate_BMI.dart';
import '../widgets/cards_info_bmi.dart';
import '../widgets/description_result_bmi.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: ResultBody(),
    );
  }
}

class ResultBody extends StatelessWidget {
  const ResultBody({Key? key});

  @override
  Widget build(BuildContext context) {
    final CalculateBMI calculateBMI =
    ModalRoute.of(context)!.settings.arguments as CalculateBMI;

    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            children: [
              DescriptionResultBMI(calculateBMI: calculateBMI),
              const Spacer(),
              const CardInfoBMI(),
              const Spacer(),
              const SizedBox(height: 35), // espaço entre o botão e o ícone
              buildButton(
                context: context,
                labelText: 'Try again',
                onClicked: () => Navigator.of(context).pushNamedAndRemoveUntil(
                  '/homeScreen',
                      (route) => false,
                ),
              ),
              const SizedBox(height: 50),
              FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                  // Adicione aqui o que deseja fazer quando o FloatingActionButton for pressionado
                },
                child: const CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('assets/images/natalia.png'),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Virtual assistant for more information',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
