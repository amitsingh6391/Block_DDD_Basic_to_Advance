// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_application_ddd/application/notes/note_form/note_form_bloc.dart';
import 'package:todo_application_ddd/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:todo_application_ddd/infrastructure/auth/firebase_auth_facade.dart';
import 'package:todo_application_ddd/domain/auth/i_auth_facade.dart';
import 'package:todo_application_ddd/application/notes/note_actor/note_actor_bloc.dart';
import 'package:todo_application_ddd/domain/notes/i_note_repository.dart';
import 'package:todo_application_ddd/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:todo_application_ddd/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:todo_application_ddd/application/auth/auth_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_application_ddd/infrastructure/notes/note_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance
GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(get<FirebaseAuth>(), get<GoogleSignIn>()));
  gh.lazySingleton<INoteRepository>(() => NoteRepository(get<Firestore>()));
  gh.factory<NoteActorBloc>(() => NoteActorBloc(get<INoteRepository>()));
  gh.factory<NoteFormBloc>(() => NoteFormBloc(get<INoteRepository>()));
  gh.factory<NoteWatcherBloc>(() => NoteWatcherBloc(get<INoteRepository>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
