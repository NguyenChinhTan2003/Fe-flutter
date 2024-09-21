import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_app/presentations/transactions/views/tabbar.dart';
import 'package:wallet_app/presentations/transactions/controller/transaction_controller.dart';

class TransactionView extends GetView<TransactionController> {
  const TransactionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Container(
            color: Theme.of(context).colorScheme.background,
            padding: const EdgeInsets.fromLTRB(25, 40, 25, 0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                 child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Get.back();
                    },
                    iconSize: 25,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                const SizedBox(width: 20.0),
                Text('Transactions',
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(color: Theme.of(context).colorScheme.scrim)),
                const Spacer(),
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: Icon(Icons.menu,
                      color: Theme.of(context).colorScheme.onSurface),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Expanded(child: MyTabbedWidget())
        ],
      ),
    );
  }
}
