import 'package:flutter/material.dart';

double DESIGN_SCREEN_HEIGHT = 812.0;
double DESIGN_SCREEN_WIDTH = 375.0;


double getScreenHeight(double value, BuildContext context)
=> MediaQuery.of(context).size.height * (value / DESIGN_SCREEN_HEIGHT);

double getScreenWidth(double value, BuildContext context)
=> MediaQuery.of(context).size.width * (value / DESIGN_SCREEN_WIDTH);