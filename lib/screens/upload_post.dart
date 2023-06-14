import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadPosts extends StatelessWidget {
  const UploadPosts({Key? key}) : super(key: key);

  Future<void> _pickImageFromGallery(BuildContext context) async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      // Display the picked image in a dialog box
      showDialog(
        context: context,
        builder: (BuildContext dialogContext) {
          return AlertDialog(
            title: Text('Selected Image'),
            content: Image.file(
              File(pickedImage.path),
              width: 200,
              height: 200,
            ),
            actions: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Write something",
                ),
              ),
              TextButton(
                onPressed: () {
                  // Close the dialog box
                  Navigator.of(dialogContext).pop();
                },
                child: Text('Post'),
              ),
            ],
          );
        },
      );
    } else {
      // Handle error or cancellation
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => _pickImageFromGallery(context),
        child: Container(
          height: 50,
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Select from gallery"),
              Icon(Icons.image),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
