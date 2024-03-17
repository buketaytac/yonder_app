import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yonder_app/pages/rota.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool sifre_gozukme=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              color: Colors.white70,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top:80, left:20, right:20),
                    child: Text("Hoş Geldin",
                      style: GoogleFonts.inter(
                        color: Colors.black87,
                        fontSize:40,
                        fontWeight: FontWeight.w500, )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffE6E6E6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.only(top:80,bottom: 40,right:30,left: 30),
                    padding: EdgeInsets.only(left: 15, right: 15,top: 5, bottom: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          hintText: 'E-mail'
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffE6E6E6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.only(top:10,bottom: 40,right:30,left: 30),
                    padding: EdgeInsets.only(left: 15, right: 15,top: 5, bottom: 5),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            obscureText: sifre_gozukme,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Şifre',
                          
                            ),
                          ),
                        ),
                        IconButton(onPressed:  () {
                          setState(() {
                            sifre_gozukme=!sifre_gozukme;
                          });
                        }, icon: Icon(
                            sifre_gozukme ? Icons.remove_red_eye_outlined : Icons.remove_red_eye,
                            ), color: Colors.green,)
                      ],
                    ),
                  ),

                  InkWell(
                    onTap: ()  {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Rota(),
                      ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top:10,bottom: 40,right:30,left: 30),
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xff5db075),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blueGrey,
                              offset: Offset(0,4),
                            blurRadius: 5
                          )
                        ]
                      ),
                      child: Center (
                        child: Text("Giriş Yap",
                         style: GoogleFonts.inter(
                          color: Colors.white
                      ))),
              
                    ),
                  ),
                  Center(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left:150, right: 10),
                          child: IconButton(onPressed:  () {
                          }, icon: Icon(
                            Icons.facebook_outlined,
                          ), color: Colors.green,)
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(),
                            child: IconButton(onPressed:  () {
                            }, icon: Icon(
                              Icons.g_mobiledata_outlined,
                            ), color: Colors.green,)
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:30, left:30, right:20),
                    child: Text("Şifremi Unuttum",
                        style: GoogleFonts.inter(
                          color: Colors.green,
                          fontSize:15,
                          fontWeight: FontWeight.w500, )),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

