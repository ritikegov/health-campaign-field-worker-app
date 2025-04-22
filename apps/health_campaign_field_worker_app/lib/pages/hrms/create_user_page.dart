import 'package:flutter/material.dart';

import '../../router/app_router.dart';


@RoutePage()
class CreateUserPage extends StatelessWidget {
  const CreateUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Replace with your actual form
    return Scaffold(
      appBar: AppBar(
        title: Text('Create User'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: "Name")),
            TextField(decoration: InputDecoration(labelText: "Email")),
            // Add more fields as required
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Handle submit
              },
              child: Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}
