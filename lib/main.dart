import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:roll_dice_app_1/image_bloc.dart';
import 'package:roll_dice_app_1/image_event.dart';
import 'package:roll_dice_app_1/image_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> images = [
    'assets/images/dice-1.png',
    'assets/images/dice-2.png',
    'assets/images/dice-3.png',
    'assets/images/dice-4.png',
    'assets/images/dice-5.png',
    'assets/images/dice-6.png',
  ];

  // initialisation de l'instance ImageBloc avec la liste d'images
  ImageBloc createImageBloc() => ImageBloc(images);

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final imageBloc = createImageBloc();

    return BlocProvider(
      create: (context) => imageBloc,
      child: MaterialApp(
        title: "Visionneuse d'images",
        home: Scaffold(
          body: Center(
            child: BlocBuilder<ImageBloc, ImageState>(
              builder: (context, state) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(state.imagePath, width: 200),
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                        imageBloc.add(ChangeImageEvent());
                      },
                      child: Text(
                        'Changer d\'image'.toUpperCase(),
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
