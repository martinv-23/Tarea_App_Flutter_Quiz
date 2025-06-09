import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OutlinedButtonExample extends StatefulWidget {
  const OutlinedButtonExample(this.text, this.action, this.selectedIcon, {super.key});

  final void Function() action;
  final String text;
  final Icon selectedIcon;

  @override
  State<OutlinedButtonExample> createState() => _OutlinedButtonExampleState();
}

class _OutlinedButtonExampleState extends State<OutlinedButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          OutlinedButton.icon(
            onPressed: widget.action,
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.transparent,
              side: const BorderSide(width: 2, color: Color(0xFFFC03A1)),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            icon: widget.selectedIcon,
            label: Text(
              widget.text,
              style: GoogleFonts.bebasNeue(fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}