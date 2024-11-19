import 'package:flutter/material.dart';

class TaskListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: Text('Tasks', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.purple.shade600,
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                title: Text('Task Title', style: TextStyle(fontSize: 18)),
                subtitle: Text('Due: 15/12/2024'),
                trailing: Icon(Icons.check_circle, color: Colors.green.shade400),
                onTap: () {
                  Navigator.pushNamed(context, '/taskDetail');
                },
              ),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                title: Text('Another Task', style: TextStyle(fontSize: 18)),
                subtitle: Text('Due: 20/12/2024'),
                trailing: Icon(Icons.check_circle_outline, color: Colors.red.shade400),
                onTap: () {
                  Navigator.pushNamed(context, '/taskDetail');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
