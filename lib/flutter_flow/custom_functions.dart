import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic saveChatHistory(
  dynamic chatHistory,
  dynamic newChat,
) {
// If chatHistory isn't a list, make it a list and then add newChat
  if (chatHistory is List) {
    chatHistory.add(newChat);
    return chatHistory;
  } else {
    return [newChat];
  }
}

dynamic convertToJSONCopy(String prompt) {
  // take the prompt and return a JSON with form [{"role": "user", "content": prompt}]
  String cleanedPrompt = prompt.replaceAll('\n', '').trim();

  try {
    // Decodifica il JSON e ritorna l'oggetto
    return json.decode('{"role": "assistant", "content": "$cleanedPrompt"}');
  } catch (e) {
    // Gestisce eventuali errori di decodifica
    return json.decode('{"role": "assistant", "content": "$e"}');
  }
}

dynamic convertToJSON(String prompt) {
  // take the prompt and return a JSON with form [{"role": "user", "content": prompt}]
  String cleanedPrompt = prompt.replaceAll('\n', '').trim();

  try {
    // Decodifica il JSON e ritorna l'oggetto
    return json.decode('{"role": "user", "content": "$cleanedPrompt"}');
  } catch (e) {
    // Gestisce eventuali errori di decodifica
    print('Errore durante la decodifica del JSON: $e');
    return null;
  }
}
