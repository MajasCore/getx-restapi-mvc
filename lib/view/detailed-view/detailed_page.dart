import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel/controller/result_controller.dart';

class DetailPage extends StatelessWidget {
  final int index;
  const DetailPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Center(
          child: GetX<ResultController>(
            builder: (selected) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(selected.one(index)?.name ?? "")],
              );
            },
          ),
        ),
      ),
    );
  }
}
