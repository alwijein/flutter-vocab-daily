part of 'utils.dart';

class DotBuilder {
  static AnimatedContainer dotBuilder(int index, int currentPage) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 340),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
