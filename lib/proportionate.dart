import 'package:flutter/material.dart';


double getScreenPropotionHeight(double actualHeight, Size size){
  return (actualHeight / 896.0 ) * size.height;
}
double getScreenPropotionWidth(double actualWidth, Size size){
  return (actualWidth / 896.0 ) * size.width;
}
