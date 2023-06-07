import 'package:cloud_on_feira/animations/login_animation.dart';
import 'package:cloud_on_feira/pages/home/home.dart';
import 'package:cloud_on_feira/widgets/show_bottom_dialog.dart';
import 'package:cloud_on_feira/widgets/text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:local_auth/local_auth.dart';

import '/widgets/waiting.dart';

class LoginPage extends StatefulWidget {
  final GlobalKey<FormBuilderState> fbKey;
  String? e;

  LoginPage({
    Key? key,
    required this.fbKey,
    /* this.isAppConfigured */
  }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState(fbKey);
}

class _LoginPageState extends State<LoginPage> /* with LoginViewCommon  */ {
  bool _passwordVisible = false;

  late GlobalKey<FormBuilderState> fbKey;

  String? emailNewAccount;

  _LoginPageState(this.fbKey);

  String? email;

  String? locale;
  final bool _isProtectionEnabled = true;

  String? password;
  final _localAuth = LocalAuthentication();

  @override
  initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  setEmail(String? em) {
    setState(() {
      email = em;
    });
  }

  setPassword(String? pass) {
    setState(() {
      password = pass;
    });
  }

  showError() {
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.error_outline, color: Colors.red, size: 25),
                title: Text(
                  'deu erro',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: ElevatedButton(
                child: const Text('OK'),
                onPressed: () => GoRouter.of(context).pop(),
              )),
            )
          ],
        );
      },
      enableDrag: false,
      isDismissible: false,
    );
  }

  Future loginBiometria() async {
    if (_isProtectionEnabled) {
      bool au = false;
      try {
        au = await _localAuth.authenticate /* authenticateWithBiometrics */ (
          localizedReason: 'authenticate to access',
          options: const AuthenticationOptions(
              biometricOnly: true, useErrorDialogs: true, stickyAuth: true),
        );
        //_updateAuthStatus(au ? AuthState.loggingIn : AuthState.loggedOut);
        /* removi navigator2 _routeService.updateAuthStatus(au ? AuthState.loggingIn : AuthState.loggedOut); */
      } on PlatformException {
        return const Text('erro');
      }

      if (au) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DashboardPage()));
      }
    }
    return 'erro';
  }

  /* @override
  showWaitingWidget(bool value) {
    context.read<WaitingNotifier>().isWaiting = value;
  } */

  Future<void> loginButtonClick(BuildContext context) async {
    if (fbKey.currentState!.saveAndValidate()) {
      final currentFocus = FocusScope.of(context);
      //Para esconder o teclado quando clicar no botão para logar
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
      Future.delayed(const Duration(seconds: 1)).then((value) => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginAnimation())));
    }
  }

  Widget loginButton() {
    return DragTarget(
      builder: (context, List candidateData, rejectedData) {
        return SizedBox(
          child: Column(
            children: [
              ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  loginButtonClick(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget appleLogin() {
    return SizedBox(
      width: 30,
      height: 90,
      child: InkWell(
        child: SvgPicture.asset(
          'assets/logoapple.svg',
        ), /* () => presenter.startNetworkConfiguration(), */
      ),
    );
  }

  Widget facebookLogin() {
    return SizedBox(
      width: 30,
      height: 90,
      child: InkWell(
        child: SvgPicture.asset(
          'assets/logofacebook.svg',
        ),
      ),
    );
  }

  Widget googleLogin() {
    return SizedBox(
      width: 30,
      height: 90,
      child: InkWell(
        child: SvgPicture.asset(
          'assets/logogoogle.svg',
        ),
      ),
    );
  }

  Widget passwordRecover() {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.only(bottom: 20),
        alignment: Alignment.centerRight,
        child: Text(
          'recuperar senha',
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }

  Widget createAccountLabel() {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Draggable(
            data: 7,
            feedback: const Icon(Icons.ac_unit),
            child: Text(
              'criar conta', //.naoTemConta,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              /* Navigator.pushNamed(context, NewAccountPage.routeName); */
            },
            child: const Text('cadastre-se'),
          ),
        ],
      ),
    );
  }

  String? Function(String?) emailValidator() {
    return FormBuilderValidators.compose([
      FormBuilderValidators.email(
        /* context, */
        errorText: 'e-mail invalido',
      ),
      FormBuilderValidators.minLength(
        /* context, */
        5,
        errorText: 'minimo caracteres',
      ),
    ]);
  }

  String? Function(String?) passwordValidator() {
    return FormBuilderValidators.compose([
      FormBuilderValidators.minLength(
        /* context, */
        6,
        errorText: /* appLocalizations.digiteSenhaValida, */
            'senha nao corresponde',
      ),
      FormBuilderValidators.required(
          /* context,  */ errorText: 'deu bom fiote'),
    ]);
  }

  Widget emailPasswordWidget() {
    print('yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy');
    print(emailNewAccount);
    print('yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy');
    return Column(
      children: <Widget>[
        // decoration: BoxDecoration(boxShadow: [
        //   BoxShadow(
        //     offset: Offset(0, 5),
        //     blurRadius: 20.0,
        //     color: Colors.black.withOpacity(0.2),
        //   )
        // ]),
        SpiritTextFormField(
          name: 'emailLogin',
          initialValue: emailNewAccount ?? '',
          label: 'Email',
          senha: false,
          keyboardType: TextInputType.emailAddress,
          iconSvg: SvgPicture.asset('assets/mail.svg', fit: BoxFit.scaleDown),
          setValue: setEmail,
          validators: emailValidator(),
        ),
        SpiritTextFormField(
          obscureText: !_passwordVisible,
          // decoration: InputDecoration(
          // labelText: 'Senha',
          suffixIcon: IconButton(
            icon: _passwordVisible
                ? SvgPicture.asset(
                    'assets/icone_olho.svg',
                    fit: BoxFit.cover,
                  )
                : const Icon(
                    Icons.remove_red_eye,
                    color: Colors.black,
                  ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
            // ),
          ),
          name: 'emailSenha',
          label: 'senha',
          senha: true,
          keyboardType: TextInputType.text,
          iconSvg:
              SvgPicture.asset('assets/cadeado.svg', fit: BoxFit.scaleDown),
          // prefixIcon: Icon(
          //   Icons.password,
          //   size: 16,
          // ),
          setValue: setPassword,
          validators: passwordValidator(),
        ),
      ],
    );
  }

  Widget biometria() {
    return Container(
      padding: const EdgeInsets.only(top: 5),
      child: FutureBuilder(
        future: loginBiometria(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Waiting();
          } else {
            if (snapshot.connectionState == ConnectionState.done) {
              return InkWell(
                onTap: () async {
                  ShowBottomDialog().showBottomDialog(
                    context: context,
                  );
                },
                child: const Icon(
                  Icons.fingerprint,
                  size: 70,
                ),
              );
            } else {
              return const SizedBox(
                height: 0,
                width: 0,
              );
            }
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //AppLocalizations appLocalizations = AppLocalizations.of(context);
    /* _automaticLogin().then((value) { */
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/fundo_novo.jpg'), fit: BoxFit.cover)),
      child: FormBuilder(
          key: fbKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                sliver: SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      Draggable(
                        data: 7,
                        feedback: const Icon(Icons.ac_unit,
                            color: Colors.transparent),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: SvgPicture.asset('assets/logoppaoncloud.svg'),
                        ),
                      ),
                      const SizedBox(height: 16),
                      emailPasswordWidget(),
                      passwordRecover(),
                      const SizedBox(height: 20),
                      loginButton(),
                      const SizedBox(height: 20),
                      const Text('logar com'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          facebookLogin(),
                          googleLogin(),
                          appleLogin(),
                        ],
                      ),
                      biometria(),
                      const SizedBox(height: 20),
                      createAccountLabel(),
                    ],
                  ),
                ),
              ),
            ],
          )),
    ));
  }
}
