import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> resgisterUser({required String email ,required String password})
  async {
    emit(ResgisterLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      emit(ResgisterSuccess());
    } on FirebaseAuthException catch (ex) {
      // If a Firebase-specific exception occurs, handle it accordingly
      if (ex.code == 'weak-password') {
        // Emit a failure state with a message for weak password
        emit(ResgisterFailure(errorMessage: 'The password is too weak.'));
      } else if (ex.code == 'email-already-in-use') {
        // Emit a failure state with a message for email already in use
        emit(ResgisterFailure(errorMessage: 'The email is already in use.'));
      } else {
        // Emit a failure state with a generic message for other Firebase errors
        emit(ResgisterFailure(errorMessage: 'Firebase error: ${ex.message}'));
      }
    } catch (e) {
      // If any other exception occurs, emit a failure state with a generic message
      emit(ResgisterFailure(errorMessage: 'There was an error: ${e.toString()}'));
    }
  }

  Future<void> loginUser({required String email ,required String password}) async {
    emit(LoginLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(LoginSuccess(user: user));
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'user-not-found') {
        emit(LoginFailure(errorMessage: 'user not found'));
      } else if (ex.code == 'wrong-password') {
        emit(LoginFailure(errorMessage: 'wrong password'));
      }
    }  catch (e) {
      emit(LoginFailure(errorMessage: 'something wrong'));
    }
  }

}
