import 'package:flutter/material.dart';


class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Pesan', 
          style: TextStyle(
            color: Colors.white
          ),
          ),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          ChatTile(
            name: 'Mas Dika',
            message: 'info nongkrong ra dik?...',
            time: '14/04/19',
          ),
          ChatTile(
            name: 'Gaten',
            message: 'Tidak bisa',
            time: 'Kemarin',
          ),
          ChatTile(
            name: 'Bayu',
            message: 'gass ayo mancing',
            time: '06.54',
            unread: true,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: Icon(Icons.message, color: Colors.white,),
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final bool unread;

  ChatTile({
    required this.name,
    required this.message,
    required this.time,
    this.unread = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
        child: Icon(Icons.person, color: Colors.white),
      ),
      title: Text(name),
      subtitle: Text(message),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            style: TextStyle(
              fontSize: 12,
              color: unread ? Colors.black : Colors.grey,
            ),
          ),
          if (unread)
            Container(
              margin: EdgeInsets.only(top: 4),
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  "1",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
