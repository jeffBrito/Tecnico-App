import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    Size mySize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: mySize.width * 1,
                  height: mySize.height * 0.38,
                  decoration: const BoxDecoration(
                    color: Color(0xff0071BC),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(95),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 0.8,
                        blurRadius: 5,
                      )
                    ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const  [
                       Spacer(),
                       Align(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage('assets/images/logo-infrosystem_reduzida.png'),
                          width: 180,
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 38,right: 10),
                          child: Text('Acesso Administrativo - Equipe Técnica',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16
                            ),
                          ),
                        )
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                ListView(
                  shrinkWrap: true,
                  reverse: false,
                  padding: const EdgeInsets.all(32),
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Ex.: fulano',
                        labelText: 'Login',
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black54,
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Ex.: 123456',
                        labelText: 'Senha',
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.black54,
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Esqueceu a Senha ?',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.blueGrey
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                      height: 45,
                      child: ElevatedButton(
                        onPressed: (){}, 
                        style: ElevatedButton.styleFrom(
                          elevation: 3,
                          backgroundColor: Color(0xff0071BC),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.login
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}