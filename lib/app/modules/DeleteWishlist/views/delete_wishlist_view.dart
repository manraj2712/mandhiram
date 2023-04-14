import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/delete_wishlist_controller.dart';

class DeleteWishlistView extends GetView<DeleteWishlistController> {
  const DeleteWishlistView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeleteWishlistView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DeleteWishlistView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
