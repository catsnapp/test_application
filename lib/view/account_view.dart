import 'package:flutter/material.dart';
import 'package:test_application/resourse.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17.0, right: 17.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Мои данные',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          const Divider(),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('lib/assets/cat.jpg'),
            ),
            title: const Text(
              'Имя, фамилия',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black38,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '$name  $lastName',
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NameScreen()));
              },
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10.0),
            height: 35,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: const Color.fromARGB(255, 236, 249, 255),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Учетные данные'.toUpperCase(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black45),
                ),
                const Divider(),
                // ListTile(
                //   title: const Text(
                //     'Телефон',
                //     style: TextStyle(
                //       fontSize: 14.0,
                //       color: Colors.black38,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                //   subtitle: const Text(
                //     '+7(111)123456',
                //     style: TextStyle(
                //       fontSize: 20.0,
                //       color: Colors.black,
                //     ),
                //   ),
                //   trailing: IconButton(
                //     icon: const Icon(Icons.arrow_forward_ios),
                //     onPressed: () {},
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NameScreen extends StatelessWidget {
  const NameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
    );
  }
}

String name = MyAccount().name;
String lastName = MyAccount().lastName;
