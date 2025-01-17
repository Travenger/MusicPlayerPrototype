import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:musicapp_trav/data/models/song/song.dart';
import 'package:musicapp_trav/domain/entities/song/song.dart';

abstract class SongFirebaseService {
  Future<Either<String, List<SongEntity>>> getNewsSongs();
}

class SongFirebaseServiceImpl extends SongFirebaseService {
  @override
  Future<Either<String, List<SongEntity>>> getNewsSongs() async {
    try {
      List<SongEntity> songs = [];
      var data = await FirebaseFirestore.instance.collection('Songs')
        .orderBy('releaseDate', descending: true)
        .limit(10)
        .get();

      if (data.docs.isEmpty) {
        print('No documents found');
      } else {
        for (var element in data.docs) {
          var songModel = SongModel.fromJson(element.data());
          songs.add(songModel.toEntity());
        }
      }

      print('Number of songs fetched: ${songs.length}');
      return Right(songs);

    } catch (e) {
      print('Error fetching songs: $e');
      return const Left('An error occurred, Please try again.');
    }
  }
}