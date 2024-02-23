import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onboarding/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Stack(
          children: [
            Container(
              color: AppColors.purplish,
            ),
            Container(
              width: context.screenWidth,
              height: context.percentHeight * 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60)),
              ),
              child: VStack(crossAlignment: CrossAxisAlignment.center, [
                SvgPicture.asset(
                  "assets/vaccum.svg",
                  fit: BoxFit.cover,
                ).py32(),
                SizedBox(
                  width: 400,
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "email address",
                        hintText: "ashwanichandel@gmail.com",
                        prefixIcon: Icon(Icons.email)),
                  ).py(16),
                ).centered(),
                TextField(
                  autofocus: true,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock_clock_outlined)),
                ).py(16),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
