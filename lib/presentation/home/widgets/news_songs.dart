import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicapp_trav/core/configs/constants/app_urls.dart';
import 'package:musicapp_trav/domain/entities/song/song.dart';
import 'package:musicapp_trav/presentation/home/bloc/news_song_cubit.dart';
import 'package:musicapp_trav/presentation/home/bloc/news_song_state.dart';
import 'package:musicapp_trav/presentation/song_player/pages/song_player.dart';

class NewsSongs extends StatelessWidget {
  const NewsSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NewsSongsCubit()..getNewsSongs(),
      child: SizedBox(
        height: 200,
        child: BlocBuilder<NewsSongsCubit, NewsSongsState>(
          builder: (context, state) {
            if (state is NewsSongsLoading) {
              return Container(
                alignment: Alignment.center,
                child: const CircularProgressIndicator(),
              );
            }

            if (state is NewsSongsLoaded) {
              print('Songs loaded: ${state.songs.length}');
              return _songs(state.songs);
            }

            return Container();
          },
        ),
      ),
    );
  }

  Widget _songs(List<SongEntity> songs) {
    print('Number of songs to display: ${songs.length}');
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
               builder: (BuildContext context) 
              => SongPlayerPage(
                songEntity: songs[index],
              )
            )
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            '${AppURLs.coverFirestorage}${songs[index].artist} - ${songs[index].title}.jpg?${AppURLs.mediaAlt}'
                          ),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 40,
                          width: 40,
                          transform: Matrix4.translationValues(10, 10, 0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            //color: context.isDarkMode ?  AppColors.darkGrey : const Color(0xffE6E6E6)
                          ),
                          child: Icon(
                            Icons.play_arrow_rounded,
                            //color: context.isDarkMode ? const Color(0xff959595) : const Color(0xff555555),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    songs[index].title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Text(
                    songs[index].artist,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 14,),
      itemCount: songs.length,
    );
  }
}