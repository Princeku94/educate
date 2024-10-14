import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        cursorColor: Colors.black,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          suffixIcon: const Icon(
            Icons.search,
            color: Color(0xff7d23e0),
            size: 40,
          ),
          hintStyle: const TextStyle(
              color: Colors.black38, fontWeight: FontWeight.w400),
          hintText: "Search here...",
          filled: true,
          fillColor: Colors.white.withOpacity(0.9),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(width: 1, color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffF0E3FF), width: 2),
              borderRadius: BorderRadius.circular(25.0)),
        ),
      ),
    );
  }
}
