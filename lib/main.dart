import 'package:chat_ui_lab/screens/chat_screen.dart';
import 'package:chat_ui_lab/widgets/input_bar.dart';
import 'package:flutter/material.dart';
import '/models/chat_message.dart';
import '/widgets/message_bubble.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alu - Complete ✅',
      theme: ThemeData(
        useMaterial3: true,
        // AI Pure Gray Design
        scaffoldBackgroundColor: const Color(0xFFF7F7F8), // Soft off-white gray
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueGrey,
          surface: Colors.white,
          onSurface: const Color(0xFF343541), // Deep charcoal for text readability
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFE5E5E5), // Solid gray header
          elevation: 0.5,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Color(0xFF202123),
            fontWeight: FontWeight.w600,
            fontSize: 18,
            letterSpacing: 0.5,
          ),
          iconTheme: IconThemeData(color: Color(0xFF202123)),
        ),
        // Modernized input look for the bottom bar
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFD1D1D1)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFD1D1D1)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.blueGrey, width: 1.5),
          ),
        ),
      ),
      home: ChatScreen(),  // ← Uses your FULL ChatScreen
      debugShowCheckedModeBanner: false,  // Clean screen
    );
  }
}