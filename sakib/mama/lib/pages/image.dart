
import 'package:flutter/material.dart';

class image extends StatelessWidget {
  final String iconimage;
  const image({super.key, required this.iconimage});

  @override
  Widget build(BuildContext context) {
    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height:200,
                          decoration: BoxDecoration(
                            
                          ),
                          child:Image.asset(iconimage,fit: BoxFit.cover,),
                        ),
                      ),
                    );
  }
}