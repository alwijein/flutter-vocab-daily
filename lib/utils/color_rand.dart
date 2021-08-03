part of 'utils.dart';
// class for color random for vocab card

class ColorRand {
  Color _randomColor =
      Colors.primaries[Random().nextInt(Colors.primaries.length)];

  Color get randColor => this._randomColor.withOpacity(0.8);
}
