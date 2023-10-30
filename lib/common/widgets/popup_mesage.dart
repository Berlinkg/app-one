import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

//positional optional porometer
toastInfo([String msg=""]){
  Fluttertoast.showToast( 
   msg:msg,
   toastLength: Toast.LENGTH_SHORT,
   gravity: ToastGravity.TOP,
   timeInSecForIosWeb: 1,
   backgroundColor: Colors.amber,
   textColor: Colors.black,
   fontSize: 16,




    );
}

