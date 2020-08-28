

import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:formvalidation/src/blocs/validators.dart';

class LoginBloc with Validators{

  final _emailController = BehaviorSubject<String>(); 
  final _passwordController = BehaviorSubject<String>(); 

  Stream<String> get emailStream => _emailController.stream.transform(validarEmail);
  Stream<String> get passwordStream => _passwordController.stream.transform(validarPassword);

  Stream<bool>   get formValidStream => 
       Rx.combineLatest2(emailStream, passwordStream, (e, p) => true);

 
//insertar valores a stream
  Function (String)get changeEmail =>_emailController.sink.add;
  Function (String)get changePassword => _passwordController.sink.add;


  dispose(){
    _emailController?.close();
    _passwordController?.close();
  }
  ///ultimos valores ingresados 
  String get email => _emailController.value;
  String get password => _passwordController.value;
  



}