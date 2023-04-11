import 'package:flutter/material.dart';

class InputButton extends StatelessWidget {
  const InputButton({
    Key? key,
    this.hinttext,
    this.onchange,
    this.controller,
    this.chose,
    this.height,
    this.boder1,
    this.boder2,
    this.boder3,
    this.keyboard,
    this.next,
    this.icon,
  }) : super(key: key);

  final String? hinttext;
  final Function()? onchange;
  final bool? chose;
  final TextEditingController? controller;
  final int? height;
  final BorderRadius? boder1;
  final BorderRadius? boder2;
  final BorderRadius? boder3;
  final TextInputType? keyboard;
  final bool? next;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: next ?? false,
      keyboardType: keyboard,
      maxLength: height,
      textAlign: TextAlign.start,
      obscureText: chose ?? false,
      onChanged: (e) => onchange,
      controller: controller,
      style: const TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        hintText: hinttext,
        prefixIcon: icon,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 12.0,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        border: OutlineInputBorder(
          borderRadius: boder1 ??
              const BorderRadius.all(
                Radius.circular(20.0),
              ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
          borderRadius: boder2 ??
              const BorderRadius.all(
                Radius.circular(20.0),
              ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFF5DE898),
            width: 2.0,
          ),
          borderRadius: boder3 ??
              const BorderRadius.all(
                Radius.circular(32.0),
              ),
        ),
      ),
    );
  }
}
