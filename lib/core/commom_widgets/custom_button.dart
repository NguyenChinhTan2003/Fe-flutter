import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.color,
      this.iconColor,
      this.hoverColor,
      required this.title,
      this.iconSize = 18,
      this.width = 40,
      this.height = 40,
      this.borderRadius = 20,
      this.action,
      this.marginLeft = 10,
      this.decoration,
      this.disable = false});
  final Color? iconColor;
  final Color? color;
  final Color? hoverColor;
  final double iconSize;
  final double width;
  final double height;
  final Function? action;
  final bool? disable;
  final double marginLeft;
  final double borderRadius;
  final String title;
  final Color? decoration;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            color: color ?? Theme.of(context).colorScheme.primary),
        child: Material(
            color: Colors.transparent,

            child: InkWell(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
              focusColor: hoverColor ?? Theme.of(context).colorScheme.secondary,
              hoverColor: hoverColor ?? Theme.of(context).colorScheme.secondary,
              onTap: () => disable == true ? null : action ?? (),
              child: Container(
                 decoration:  BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                  Color(0xff29b3e2),
                  Color(0xffb972fc),
                  Color(0xffe47cbb),
                  Color(0xfffd956f),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  
                ),
                borderRadius: BorderRadius.circular(20),
              ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                   
                  ),
                  child: 
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary
                    )
                    
                    
                  
                  ),
                ),
              ),
              
            )));
  }
}
