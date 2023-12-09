import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:timer/source/Homepage.dart';
import 'package:timer/source/firstpage.dart';
import 'package:timer/source/secondpage.dart';
import 'package:timer/source/thirdpage.dart';

class mainpage extends StatelessWidget {
  mainpage({super.key});
    final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(221, 51, 50, 50),
               appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new)),
        backgroundColor: const Color.fromARGB(221, 51, 50, 50),
        title: const Padding(
          padding: EdgeInsets.all(36),
          child: Text(textAlign: TextAlign.center, 'Mindful Meals timer'),
          
        ),
    
      ),
        body: Stack(
          
        children: [
          PageView(
            controller: _controller,
            
            children:  [ const firstpage(
            ),
           const secondpage(),
           const thirdpage(),
            ],
          ),
          // dot view
          Container(
            alignment: const Alignment(0,-0.8),
            child: SmoothPageIndicator(controller: _controller,count:3,),
          )
        ],
      ),
   );
  }
}