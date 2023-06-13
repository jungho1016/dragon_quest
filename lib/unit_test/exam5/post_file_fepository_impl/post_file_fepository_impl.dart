import 'dart:convert';
import 'dart:io';

class PostMemoryRepositoryImpl {
  List<Post> _posts = [];
  File file = File('post_file_repository_impl.txt');

  // ... existing code ...

  Future<void> _savePostsToFile() async {
    final List<Map<String, dynamic>> serializedPosts = _posts
        .map((post) => {
              'id': post.id,
              'title': post.title,
              'body': post.body,
            })
        .toList();

    final content = jsonEncode(serializedPosts);
    await file.writeAsString(content);
  }
}

void main() async {
  PostMemoryRepositoryImpl postMemoryRepositoryImpl =
      PostMemoryRepositoryImpl();

  // Create a new post
  Post post = Post(1, 'Title', 'Body');

  // Add the post to the repository
  await postMemoryRepositoryImpl.addPost(post);

  // Get all posts from the repository
  List<Post> posts = await postMemoryRepositoryImpl.getPosts();
  print(posts);

  // Delete the post from the repository
  await postMemoryRepositoryImpl.deletePost(post);

  // Update the post in the repository
  post.title = 'Updated Title';
  post.body = 'Updated Body';
  await postMemoryRepositoryImpl.updatePost(post);
}
