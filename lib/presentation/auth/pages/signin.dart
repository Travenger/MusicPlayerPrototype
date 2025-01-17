import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicapp_trav/common/widgets/appbar/app_bar.dart';
import 'package:musicapp_trav/common/widgets/button/basic_app_button.dart';
import 'package:musicapp_trav/core/configs/assets/app_vectors.dart';
import 'package:musicapp_trav/data/models/auth/signin_user_req.dart';
import 'package:musicapp_trav/domain/usecases/auth/signin.dart';
import 'package:musicapp_trav/presentation/auth/pages/signup.dart';
import 'package:musicapp_trav/presentation/home/pages/home.dart';


import '../../../service_locator.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signupText(context),
      appBar: BasicAppbar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 120,
          width: 120,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
        vertical: 50,
        horizontal: 30
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            const SizedBox(height: 50,),
            _emailField(context),
            const SizedBox(height: 20,),
            _passwordField(context),
            const SizedBox(height: 20,),
            BasicAppButton(
              onPressed: () async {
                 var result = await sl<SigninUseCase>().call(
                  params: SigninUserReq(
                    email: _email.text.toString(),
                    password: _password.text.toString()
                  )
                );
                result.fold(
                  (l){
                    var snackbar = SnackBar(content: Text(l),behavior: SnackBarBehavior.floating,);
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                  (r){
                    Navigator.pushAndRemoveUntil(
                      context, 
                      MaterialPageRoute(builder: (BuildContext context) => const HomePage()), 
                      (route) => false
                    );
                  }
                );
              },
              title: 'Sign In'
            )
      
          ],
        ),
      ),
    );
  }

  Widget _registerText() {
    return const Text(
      'Sign In',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: Colors.white 
      ),
      textAlign: TextAlign.center,
    );
  }
  
 
  Widget _emailField(BuildContext context) {
    return TextField(
      controller: _email,
      decoration: const InputDecoration(
        hintText: 'Enter Email'
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

   Widget _passwordField(BuildContext context) {
    return TextField(
      controller: _password,
      decoration: const InputDecoration(
        hintText: 'Password'
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _signupText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Not A Member? ',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Colors.white
            ),
          ),
          TextButton(
            onPressed: (){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => SignupPage()
                )
              );
            },
            child: const Text(
              'Register Now'
            )
          )
        ],
      ),
    );
  }
}