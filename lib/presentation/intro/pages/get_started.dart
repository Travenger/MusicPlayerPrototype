import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicapp_trav/common/widgets/button/basic_app_button.dart';
import 'package:musicapp_trav/core/configs/assets/app_images.dart';
import 'package:musicapp_trav/core/configs/assets/app_vectors.dart';
import 'package:musicapp_trav/presentation/auth/pages/signup_or_signin.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AppImages.introBG,
                )
              )
            ),
          ),

          Container(
            color: Colors.black.withOpacity(0.15),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 70,
              horizontal: 40
            ),
            child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(
                      AppVectors.logo
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'Enjoy Listening To Music',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                  const SizedBox(height: 20,),
                  BasicAppButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const SignupOrSigninPage()
                        )
                     );
                    },
                    title: 'Get Started'
                  )
                ],
              ),
          ),
        ],
      ),
    );
  }
}