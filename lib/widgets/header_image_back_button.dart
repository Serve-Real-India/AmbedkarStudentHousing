import 'package:ambedkar_student_housing/widgets/custom_back_button.dart';
import 'package:flutter/cupertino.dart';

class HeaderImageBackButton extends StatelessWidget {
  const HeaderImageBackButton({
    super.key,
    required this.imagePath,
    this.buttonBorderColor,
    required this.icon,
    required this.onPressed,
  });

  final String imagePath;
  final Color? buttonBorderColor;
  final Icon icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double containerHeight = (screenHeight) * 0.15;
    return Container(
       width: MediaQuery.of(context).size.width,
        height: screenHeight * 0.20,
        decoration: BoxDecoration(
          image: _buildDecorationImage(),
        ),
        child: _buildCustomRow());
  }

  DecorationImage _buildDecorationImage() {
    return DecorationImage(
      fit: BoxFit.fill,
      image: AssetImage(imagePath),
    );
  }

  Widget _buildCustomRow() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCustomBackButton(),
      ],
    );
  }

  Widget _buildCustomBackButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 20),
      child: CustomBackButton(
        onPressed: onPressed,
        borderColor: buttonBorderColor,
      ),
    );
  }
}
