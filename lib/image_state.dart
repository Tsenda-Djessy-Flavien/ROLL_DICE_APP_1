// définir l'état de votre application

import 'package:equatable/equatable.dart';

class ImageState extends Equatable {
  final String imagePath;

  const ImageState(this.imagePath);

  @override
  List<Object> get props => [imagePath];
}
