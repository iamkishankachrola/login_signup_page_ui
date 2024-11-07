import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomePage extends StatelessWidget{
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xffeceef6),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70,),
            const Icon(Icons.arrow_back_ios_new,size: 30,),
            const SizedBox(height: 20,),
            Row(
              children: [
                const Text("Log in",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25),),
                const SizedBox(width: 5,),
                Image.asset("assets/images/three_star.jpg",width: 25,height: 25,)
              ],
            ),
            const SizedBox(height: 5,),
            const Text("Welcome back! Please enter your details.",style: TextStyle(fontSize: 16,color: Color(0xff8D8E91)),),
            const SizedBox(height: 15,),
            const Text("Email",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
            const SizedBox(height: 5,),
            TextField(
              keyboardType: TextInputType.emailAddress ,
              decoration: InputDecoration(
                enabledBorder: enableBorder(),
                focusedBorder: focusedBorder(),
                prefixIcon: const Icon(Icons.email_outlined,color: Color(0xff8D8E91),),
                hintText: "Enter your email",
                hintStyle: const TextStyle(fontSize: 16,color: Color(0xff8D8E91)),
              ),
            ),
            const SizedBox(height: 15,),
            const Text("Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
            const SizedBox(height: 5,),
            TextField(
              keyboardType: TextInputType.visiblePassword ,
              obscureText: true,
              decoration: InputDecoration(
                enabledBorder:enableBorder(),
                focusedBorder: focusedBorder(),
                prefixIcon: const Icon(Icons.lock_outline_rounded,color: Color(0xff8D8E91),),
                suffixIcon: const Icon(Icons.visibility_off_outlined,color: Color(0xff8D8E91),),
                hintText: "Enter your password",
                hintStyle: const TextStyle(fontSize: 16,color: Color(0xff8D8E91)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged:(value) {

                    },activeColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),),
                    const Text("Remember for 30 days",style: TextStyle(color:Color(0xff8D8E91),fontSize: 14 ),),
                  ],
                ),
                const InkWell(child: Text("Forgot password",style: TextStyle(color: Colors.blue,fontSize: 14))),
              ],
            ),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    elevation: 3,
                    shadowColor: Colors.black,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
                child: const Text("Log In",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/images/line.jpeg",width: 130,height: 1,fit: BoxFit.fill,color:const Color(0xff8D8E91),),
                const Text("Or log in with",style: TextStyle(color: Color(0xff8D8E91),fontSize: 12),),
                Image.asset("assets/images/line.jpeg",width: 130,height: 1,fit: BoxFit.fill,color:const Color(0xff8D8E91),),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  color: Colors.white,
                  elevation: 3,
                  shadowColor: Colors.black,
                  child: SizedBox(
                    width: 60,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Image.asset("assets/images/apple.png"),
                    ),
                  ),
                ),
                const SizedBox(width: 15,),
                Card(
                  color: Colors.white,
                  elevation: 3,
                  shadowColor: Colors.black,
                  child: SizedBox(
                    width: 60,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Image.asset("assets/images/google.png"),
                    ),
                  ),
                ),
                const SizedBox(width: 15,),
                Card(
                  color: Colors.white,
                  elevation: 3,
                  shadowColor: Colors.black,
                  child: SizedBox(
                    width: 60,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Image.asset("assets/images/facebook.png"),
                    ),
                  ),
                )
              ],
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Don't have an account?",style: TextStyle(color: Color(0xff8D8E91),fontSize: 14),),
                    SizedBox(width: 5,),
                    InkWell(child: Text("Sign up",style: TextStyle(color: Colors.blue,fontSize: 14))),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  OutlineInputBorder enableBorder(){
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: Color(0xff8D8E91),
          width: 2,
        )
    );
  }
  OutlineInputBorder focusedBorder(){
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: Colors.blue,
          width: 2,
        )
    );
  }
}
