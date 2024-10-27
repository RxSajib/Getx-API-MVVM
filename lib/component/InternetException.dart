import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InternetException extends StatefulWidget {

  VoidCallback callback;

  InternetException({super.key, required this.callback});

  @override
  State<InternetException> createState() => _InternetExceptionState();
}

class _InternetExceptionState extends State<InternetException> {

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(padding: EdgeInsets.all(10),
    child: Center(
      child: Column(
        children: [
          SizedBox(height: height *.1,),
            Icon(Icons.cloud, size: 80,  color: Colors.black38,),
          SizedBox(height: height *0.05,),
          Text(
            'internet_error'.tr,
            textAlign: TextAlign.center,
          ),
          
          SizedBox(height: 20,),
          InkWell(
            onTap: widget.callback,
            child: Container(
              height: 50,
              width: width * .5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blueAccent
              ),
              child: Center(
                child: Text("Retry Again", style: TextStyle(color: Colors.white),),
              ),
            ),
          )
        ],
      ),
    ),);
  }
}


