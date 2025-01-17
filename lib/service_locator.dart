import 'package:get_it/get_it.dart';
import 'package:musicapp_trav/data/repository/auth/auth_repository_impl.dart';
import 'package:musicapp_trav/data/repository/song/song_repository_impl.dart';
import 'package:musicapp_trav/data/sources/auth/auth_firebase_service.dart';
import 'package:musicapp_trav/data/sources/song/song_firebase_service.dart';
import 'package:musicapp_trav/domain/repository/auth/auth.dart';
import 'package:musicapp_trav/domain/repository/song/song.dart';
import 'package:musicapp_trav/domain/usecases/auth/signin.dart';
import 'package:musicapp_trav/domain/usecases/auth/signup.dart';
import 'package:musicapp_trav/domain/usecases/song/get_news_songs.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
 
 
 sl.registerSingleton<AuthFirebaseService>(
  AuthFirebaseServiceImpl()
 );

 sl.registerSingleton<SongFirebaseService>(
  SongFirebaseServiceImpl()
 );
 

 sl.registerSingleton<AuthRepository>(
  AuthRepositoryImpl()
 );

 sl.registerSingleton<SongsRepository>(
  SongRepositoryImpl()
 );



 sl.registerSingleton<SignupUseCase>(
  SignupUseCase()
 );

 sl.registerSingleton<SigninUseCase>(
  SigninUseCase()
 );

 sl.registerSingleton<GetNewsSongsUseCase>(
  GetNewsSongsUseCase()
 );
 
}