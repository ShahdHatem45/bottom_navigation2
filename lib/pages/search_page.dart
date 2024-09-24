import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.person,
              color: Colors.purple[200],
              size: 50
          ),
          SizedBox(height: 16),

          Text('Your Profile',
              style: TextStyle(fontSize: 25,color: Colors.purple[200]),
          ),
          SizedBox(height: 16),

          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple[200]),
            onPressed: (){},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.edit,
                  color: Colors.white),
                SizedBox(width: 8),
                Text('Edit Profile',
                  style: TextStyle(color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
