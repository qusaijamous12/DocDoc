abstract class RegisterState{}

class InitialRegisterState extends RegisterState{}

class LoadingRegister extends RegisterState{}

class RegisterSuccessState extends RegisterState{}

class RegisterFailedState extends RegisterState{
  final String error;
  RegisterFailedState(this.error);
}
