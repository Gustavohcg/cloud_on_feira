import 'package:flutter/material.dart';

class ShowBottomDialog {
  showBottomDialog(
      {required bool sucesso,
      required BuildContext context,
      Function()? onPressedSucces,
      Function()? onPressedError,
      String successText = '',
      String errorText = ''}) {
    if (sucesso) {
      if (successText == '') {
        return null;
      } else {
        showModalBottomSheet<void>(
          context: context,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0)),
          ),
          builder: (context) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(Icons.check_circle_outline_rounded,
                        color: Colors.green, size: 25),
                    title: Text(
                      successText,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: ElevatedButton(
                          child: const Text('OK'), onPressed: onPressedSucces)),
                )
              ],
            );
          },
        );
      }
    } else {
      showModalBottomSheet<void>(
        context: context,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
        ),
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: const Icon(Icons.error_outline,
                      color: Colors.red, size: 25),
                  title: Text(
                    errorText,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: ElevatedButton(
                        child: const Text('OK'), onPressed: onPressedError)),
              )
            ],
          );
        },
      );
    }
  }
}
