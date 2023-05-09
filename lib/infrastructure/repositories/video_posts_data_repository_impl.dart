import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';
import 'package:toktik/domain/datasources/video_posts_datasource.dart';

class VideoPostRepositoryImpl implements VideoPostRepository {
  final VideoPostDataSource videoDataSource;

  VideoPostRepositoryImpl({required this.videoDataSource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId, int page) {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videoDataSource.getTrendingVideosByPage(page);
  }
}
