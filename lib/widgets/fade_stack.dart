import 'package:flutter/material.dart';
import 'package:instagram/screens/profile_screen.dart';
import 'package:instagram/widgets/sign_in_form.dart';
import 'package:instagram/widgets/sign_up_form.dart';

class FadeStack extends StatefulWidget {
  final int selectedForm;

  FadeStack(this.selectedForm);

  @override
  _FadeStackState createState() => _FadeStackState();
}

class _FadeStackState extends State<FadeStack>
    with SingleTickerProviderStateMixin {
  List<Widget> forms = [
    SignUpForm(),
    SignInForm(),
  ];

  int selectedForm = 0;
  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: duration);
    _animationController.forward();
    super.initState();
  }

  @override
  void didUpdateWidget(FadeStack oldWidget) {
    if (widget.selectedForm != oldWidget.selectedForm)  {
      _animationController.forward(from: 0.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationController,
      child: IndexedStack(
        index: widget.selectedForm,
        children: forms,
      ),
    );
  }
}
