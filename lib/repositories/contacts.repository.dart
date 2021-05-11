import 'dart:math';

import 'package:contacts_bloc_app/model/contact.model.dart';

class ContactsRepository {
  Map<int, Contact> contacts = {
    1: Contact(
        id: 1, name: 'Mounia', profile: 'MO', type: 'Developer', score: 1000),
    2: Contact(
        id: 2, name: 'Yassmine', profile: 'YA', type: 'Developer', score: 1500),
    3: Contact(
        id: 3, name: 'Lamia', profile: 'LA', type: 'Student', score: 2000),
    4: Contact(
        id: 4, name: 'Aymane', profile: 'AY', type: 'Developer', score: 2500),
    5: Contact(
        id: 5, name: 'Brahim', profile: 'BR', type: 'Student', score: 3000),
  };

  Future<List<Contact>> allContacts() async {
    var future = await Future.delayed(Duration(seconds: 1));
    int rnd = new Random().nextInt(10);
    if (rnd > 1) {
      return contacts.values.toList();
    } else {
      throw new Exception("Internet Error");
    }
  }

  Future<List<Contact>> contactsByType(String type) async {
    var future = await Future.delayed(Duration(seconds: 1));
    int rnd = new Random().nextInt(10);
    if (rnd > 1) {
      return contacts.values
          .toList()
          .where((element) => element.type == type)
          .toList();
    } else {
      throw new Exception("Internet Error");
    }
  }
}
