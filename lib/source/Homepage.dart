import 'package:flutter/material.dart';
import 'package:timer/source/mainpage.dart';
class Homepage extends StatelessWidget {
   const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 51, 50, 50),
        appBar: AppBar(
        leading: const SizedBox(
          height: 150,
        ),
        backgroundColor:  const Color.fromARGB(221, 51, 50, 50),
        ),

      body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(alignment: const Alignment (0,0.5),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 209, 255, 196),minimumSize: const Size(70, 60)),
              onPressed: (){  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>  mainpage()));
                              
               }, child: const Text('     START     ',style:TextStyle(fontSize: 30,color: Colors.black),)),
          ),
        ],
      ),
    );
  }
}
