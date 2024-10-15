

import 'package:flutter/material.dart';

import '../constant.dart';

class ChatAndCart extends StatelessWidget {
  const ChatAndCart({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(kDefaultPadding),
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.mark_chat_unread_rounded,
            color: Colors.white,
          ),
          const SizedBox(width: kDefaultPadding / 2),
          const Text(
            'Chat',
            style: TextStyle(color: Colors.white),
          ),
          const Spacer(),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_basket_rounded,
              color: Colors.white,
            ),
            label: const Text(
              'Add to cart',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}