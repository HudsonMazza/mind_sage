// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mind_sage/components/my_button.dart';
import 'package:mind_sage/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});
  // Text editing controllers - controladores de edição do texto
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method - método entrar com usuario
   void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 35,),

            // Logo of branch Mind Sage - Foto da marca Mind Sage
            Image.asset(
              'lib/Images/logo.png',
              height: 100,
            ),

            SizedBox(height: 30,),

            // welcome back, you've been missed! - bem vindo, sentimos sua falta!
            Text(
              'Bem vindo de volta, faça seu Login!',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 15,
              ),
            ),

          const SizedBox(height: 12,),

              // username textfield - campo de username
          MyTextField(
            controller: usernameController,
            hintText: 'Insira seu E-mail',
            obscureText: false,
          ),

          const SizedBox(height: 10,),

              // password textfield - campo de senha
          MyTextField(
            controller: passwordController,
            hintText: 'Insira sua Senha',
            obscureText: true,
          ),

          const SizedBox(height: 5,),

              // forgot password? - esqueceu sua senha?
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Esqueceu sua senha?',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14.5,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25,),
            // sign in button - botão de logar
            MyButton(
              onTap: signUserIn,
            ),

          const SizedBox(height: 25,),

            // or continue with... - ou continuar com...
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 25.0),
               child: Row(children: [
                 Expanded(child:
                   Divider(
                   thickness: 0.5,
                     color: Colors.grey[700],
                     ),
                   ),

                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10.0),
                   child: Text(
                       'Ou continue com...',
                        style: TextStyle(color: Colors.grey[700],),
                   ),
                 ),
                 Expanded(child:
                 Divider(
                   thickness: 0.5,
                   color: Colors.grey[700],
                     ),
                   ),
                 ],
               ),
             ), //
            const SizedBox(height: 15,),
            // google sing in button - logar com o google
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 3.5,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      color: Colors.grey[200], //
                    ),
                    child: Image.asset(
                      'lib/Images/google.png',
                      height:60,
                    ),
                  ),
                ],
              ),

            const SizedBox(height: 10,),

            // not a member? register now! - não tem cadastro? cadastre-se agora!

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Não tem cadastro?',
                  style: TextStyle(
                    color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(width: 4,),
                  const Text("Cadastre-se agora!",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.5,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

