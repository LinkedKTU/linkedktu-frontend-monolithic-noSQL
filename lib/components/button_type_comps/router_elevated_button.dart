import 'package:flutter/material.dart';
import 'package:bitirme_mongo_monolit/services/routing_services.dart';

class RouterElevatedButton extends StatelessWidget {
  final String? text;
  final bool pushReplacement;
  final Widget page;
  final IconData? icon;
  final GlobalKey<FormState>? formKey;
  final bool condition;

  const RouterElevatedButton({
    Key? key,
    this.text,
    this.pushReplacement = false,
    required this.page,
    this.icon,
    this.formKey,
    this.condition = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {

        if (formKey != null) {
          if (formKey!.currentState!.validate()) {
            pushReplacement
                ? RouterService.pushReplacementRoute(context, page)
                : RouterService.pushRoute(context, page);
          }
          else {
            return;
          }
        }
        else {
          pushReplacement
              ? RouterService.pushReplacementRoute(context, page)
              : RouterService.pushRoute(context, page);
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) Icon(icon),
          if (text != null) Text(text!),
        ],
      ),
    );
  }
}
