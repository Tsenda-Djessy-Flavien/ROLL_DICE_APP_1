// définir le bloc de votre application

import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:roll_dice_app_1/image_event.dart';
import 'package:roll_dice_app_1/image_state.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  final List<String> images;

  ImageBloc(this.images) : super(ImageState(images[0]));

  Stream<ImageState> mapEventToState(ImageEvent event) async* {
    if (event is ChangeImageEvent) {
      final random = Random();
      int newIndex = random.nextInt(images.length);

      yield ImageState(images[newIndex]);
    }
  }
}
