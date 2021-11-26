import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        list(Icons.one_k_plus, 'Flipkart Plus Zone', () {}),
        const Divider(
          color: Colors.blueGrey,
        ),
        list(Icons.one_k_plus, 'All Categories', () {}),
        const Divider(
          color: Colors.blueGrey,
        ),
        list(Icons.one_k_plus, 'More on Flipkart', () {}),
        const Divider(
          color: Colors.blueGrey,
        ),
        list(Icons.one_k_plus, 'Chose Language', () {}),
        const Divider(
          color: Colors.blueGrey,
        ),
        list(Icons.one_k_plus, 'offer Zone', () {}),
        const Divider(
          color: Colors.blueGrey,
        ),
        list(Icons.one_k_plus, 'Sell on Flipkart', () {}),
        const Divider(
          color: Colors.blueGrey,
        ),
        list(Icons.one_k_plus, 'My Orders', () {}),
        const Divider(
          color: Colors.blueGrey,
        ),
        list(Icons.one_k_plus, 'my Rewards', () {}),
        const Divider(
          color: Colors.blueGrey,
        ),
        list(Icons.one_k_plus, 'My Cart', () {}),
        const Divider(
          color: Colors.blueGrey,
        ),
        list(Icons.one_k_plus, 'My Wishlist', () {}),
        const Divider(
          color: Colors.blueGrey,
        ),
        list(Icons.one_k_plus, 'My Account', () {}),
        const Divider(
          color: Colors.blueGrey,
        ),
        list(Icons.one_k_plus, 'My Notifications', () {}),
        const Divider(
          color: Colors.blueGrey,
        ),
        list(Icons.one_k_plus, 'My Chats', () {}),
        const Divider(
          color: Colors.blueGrey,
        ),
        Container(
          color: Colors.transparent,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                InkWell(
                  child: Text(
                    'Notification Preferences',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 6),
                InkWell(
                  child: Text(
                    'Help centre.'
                        ''
                        '',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 6),
                InkWell(
                  child: Text(
                    'Notification Preferences',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 6),
                InkWell(
                  child: Text(
                    'Notification Preferences',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget list(IconData icon, String data, void Function() tap) {
  return InkWell(
    splashColor: Colors.white,
    onTap: tap,
    child: Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(width: 15.0),
          Text(
            data,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          )
        ],
      ),
    ),
  );
}
