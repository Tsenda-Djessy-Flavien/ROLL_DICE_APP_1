// définir les événements de votre application

import 'package:equatable/equatable.dart';

// abstract : c'est une class qui sert de modele pour d'autres classes qui ont hérite
abstract class ImageEvent extends Equatable {
  const ImageEvent();

  @override
  List<Object> get props => [];
}

class ChangeImageEvent extends ImageEvent {}
