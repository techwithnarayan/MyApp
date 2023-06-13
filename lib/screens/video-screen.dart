// import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
import 'package:video_player/video_player.dart';

// import '../models.dart';

class VidScreen extends StatefulWidget {
    final String VideoLink;
  

  const VidScreen({super.key, required this.VideoLink});

  @override
  State<VidScreen> createState() => _VidScreenState();
}

class _VidScreenState extends State<VidScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.network(widget.VideoLink)..initialize().then((_){
setState(() {
  
});
    });
  }

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos'),
        centerTitle: true,
      ),
      body: VideoFile(),
      floatingActionButton: FloatingActionButton(onPressed:(){
        setState(() {
          _controller.value.isPlaying?_controller.pause():_controller.play();
        });
      },
      child: Icon(_controller.value.isPlaying? Icons.pause : Icons.play_arrow),
       ),
    );

  }

  Widget VideoFile(){
    return Container(
      child: _controller.value.isInitialized? VideoPlayer(_controller): Container(),
    );

  }
}

// class VideoFile extends StatefulWidget {
//   const VideoFile({super.key});

//   @override
//   State<VideoFile> createState() => _VideoFileState();
// }

// class _VideoFileState extends State<VideoFile> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [

//       ],
//     );
//   }
// }