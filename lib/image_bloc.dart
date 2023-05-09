// définir le bloc de votre application

import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:roll_dice_app_1/image_event.dart';
import 'package:roll_dice_app_1/image_state.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  final List<String> images;

  // prend en charge la gestion de l'état et de la logique de l'application.
  ImageBloc(this.images) : super(ImageState(images[0])) {
    // methode on enregistre le gestionnaire d'événement pour l'événement ChangeImageEvent
    on<ChangeImageEvent>((event, emit) {
      final random = Random();
      int newIndex = random.nextInt(images.length);
      emit(ImageState(images[newIndex]));
    });
  }

  // Stream<ImageState> mapEventToState(ImageEvent event) async* {}
}
