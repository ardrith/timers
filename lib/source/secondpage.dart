import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class secondpage extends StatefulWidget {
  
  const secondpage({super.key});

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
    final CountDownController _controller = CountDownController();

  bool _isPause = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold( backgroundColor: const Color.fromARGB(221, 51, 50, 50),
      body: Column(
mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Add your text widget here
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Break Time',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
              // Add your CircularCountDownTimer widget
            
          Center(
            
            child: CircularCountDownTimer(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 2,
                duration: 30,
                fillColor: const Color.fromARGB(255, 90, 219, 94),
                ringColor: Colors.white,
              controller: _controller,
              backgroundColor: Colors.white54,
              strokeWidth: 10.0,
              strokeCap: StrokeCap.round,
              isTimerTextShown: true,
              isReverse: true,
              onComplete: (){
                  Alert(
                      context: context,
                      title: 'Done',
                    style: const AlertStyle(
                      isCloseButton: true,
                      isButtonVisible: false,
                      titleStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                    type: AlertType.success
                  ).show();
              },
              textStyle: const TextStyle(fontSize: 50.0,color: Colors.black),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
       padding: const EdgeInsets.symmetric(horizontal:150,vertical:148),
        child: FloatingActionButton.extended(
            onPressed: (){
              setState(() {
                if(_isPause){
                  _isPause = false;
                  _controller.resume();
                }else{
                  _isPause = true;
                  _controller.pause();
                }
              });
            },
            icon: Icon(_isPause ? Icons.play_arrow : Icons.pause),
            label: Text(_isPause ? 'Resume' : 'Pause'),
        ),
      ),
    );
  }
}
