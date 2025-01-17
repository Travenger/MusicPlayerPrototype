import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicapp_trav/common/widgets/button/basic_app_button.dart';
import 'package:musicapp_trav/core/configs/assets/app_images.dart';
import 'package:musicapp_trav/core/configs/assets/app_vectors.dart';
import 'package:musicapp_trav/presentation/auth/pages/signin.dart';
import 'package:musicapp_trav/presentation/auth/pages/signup.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

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
                  
                  const SizedBox(height: 20,),
                 Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: BasicAppButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context)=> SignupPage()
                              )
                            );
                          },
                          title: 'Register'
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                          onPressed: (){
                             Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context)=> SigninPage()
                              )
                            );
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white
                            ),
                          )
                        ),
                      )
                    ],
                  )
                ],
              ),
          ),
        ],
      ),
    );
  }
}
