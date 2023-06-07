import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
//import '/services/service_locator.dart';
//import '/services/preferencesService.dart';
//import '/services/themesService.dart';
//import '/themes/custom_color_scheme.dart';

/* enum SpiritValidatorType {
  email,
  minLenght,
  required,
  valString,
}

class SpiritFieldValidator {
  final SpiritValidatorType type;
  String errorText;
  int minLength;
  String valString;

  SpiritFieldValidator({
    required this.type,
    required this.errorText,
    this.minLength,
    this.valString,0
  });
} */

class SpiritTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final dynamic validators;
  /* final List<SpiritFieldValidator> validators; */
  final String? label;
  final String? hint;
  final String? initialValue;
  final Icon? prefixIcon;
  final SvgPicture? iconSvg;
  final String? prefixText;
  final IconButton? suffixIcon;
  final String? sufixText;
  final String? errorText;
  bool senha = false;
  final TextInputType? keyboardType;
  // InputDecoration? decoration = const InputDecoration();
  final bool enabled;
  final TextAlign? textAlign;
  final bool? obscureText;
  final List<TextInputFormatter>? inputFormatter;
  final String name;
  final int? maxLength;

  Function(String?)? onChanged;
  Function(String?)? setValue;
  Function(String?, int)? setValueCam;

  SpiritTextFormField(
      {Key? key,
      /* this.validators, */
      this.controller,
      this.validators,
      this.label,
      this.hint,
      this.senha = false,
      this.keyboardType,
      this.setValue,
      this.onChanged,
      this.initialValue,
      this.prefixText,
      this.prefixIcon,
      // this.decoration,
      this.suffixIcon,
      this.sufixText,
      this.errorText,
      this.enabled = true,
      this.textAlign,
      this.obscureText,
      this.setValueCam,
      this.maxLength,
      this.inputFormatter,
      this.iconSvg,
      required this.name})
      : super(key: key);

  @override
  _SpiritTextFormFieldState createState() => _SpiritTextFormFieldState();
}

class _SpiritTextFormFieldState extends State<SpiritTextFormField> {
  /* List<FormFieldValidator<String>> validators() {
    List<FormFieldValidator<String>> validators = [];
    widget.validators.forEach((validator) {
      FormFieldValidator<String> v;
      switch (validator.type) {
        case SpiritValidatorType.email:
          //v = FormBuilderValidators.email(context, errorText: 'validator.errorText');
          v = FormBuilderValidators.email(context, errorText: validator.errorText);
          break;
        case SpiritValidatorType.minLenght:
          v = FormBuilderValidators.minLength(/*context, */validator.minLength, errorText: validator.errorText);
          break;
        case SpiritValidatorType.required:
          v = FormBuilderValidators.required(/*context, */errorText: validator.errorText);
          break;
        case SpiritValidatorType.valString:
          v = (val) {
            if (validator.valString != val) return validator.errorText;
            return null;
          };
          break;
      }
      validators.add(v);
    });
    return validators;
  } */
  @override
  dispose() {
    if (widget.controller != null) {
      widget.controller!.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /* String value = "Test"; */
    // String value = Random().nextInt(1000).toString();
    // final _prefs = locator<PreferencesService>();
    //final _themesService = /*servicelocator*/Get.find<ThemesService>();
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FormBuilderTextField(
            controller: widget.controller,
            maxLength: widget.maxLength,
            showCursor: true,
            style: const TextStyle(),
            initialValue: widget.initialValue,
            name: widget.name,
            maxLines: 1,
            keyboardType: widget.keyboardType,
            obscureText: widget.obscureText ?? false,
            textAlign: widget.textAlign ?? TextAlign.left,
            decoration: InputDecoration(
              labelStyle: const TextStyle(color: Color(0xffDDDEE0)),
              labelText: widget.label!,
              errorText: widget.errorText,
              /* border: OutlineInputBorder(), */
              suffixIcon: widget.suffixIcon,
              suffixText: widget.sufixText,
              prefixText: widget.prefixText,
              prefixIcon: widget.prefixIcon ?? widget.iconSvg,
            ).applyDefaults(Theme.of(context).inputDecorationTheme),
            onChanged: (value) {
              if (widget.onChanged != null) {
                widget.onChanged!(value!);
              }
            },
            onSaved: (value) {
              widget.setValue!(value);
            },
            validator: //FormBuilderValidators.compose(
                /* [
              FormBuilderValidators.email(context, errorText: 'validator.errorText'), /* widget. */ /* valid() */
            ] */
                //validators(),
                widget.validators,
            //),
            enabled: widget.enabled,
          ),
        ],
      ),
    );
  }
}
