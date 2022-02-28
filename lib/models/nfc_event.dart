import 'package:RFID/models/nfc_message.dart';

class NfcEvent {
  NfcEvent({
    this.error,
    this.message,
  });

  factory NfcEvent.fromMap(Map data) => NfcEvent(
        error: data['error'],
        message: data['message'] != null
            ? NfcMessage.fromMap(data['message'])
            : null,
      );

  String error;
  NfcMessage message;
}
