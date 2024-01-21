import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class APIKeyInputPage extends StatefulWidget {
  const APIKeyInputPage({super.key});

  @override
  State<APIKeyInputPage> createState() => _APIKeyInputPageState();
}

class _APIKeyInputPageState extends State<APIKeyInputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Gap(65),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  " Provide your Gemini API",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter your text',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0),
                    ),
                  ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text("Start Chating", style: TextStyle(color: Colors.white),),
                    ),
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                  ),
                ),
              ),
              const Gap(10),
              SizedBox(
                width: 300,
                child: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.blueAccent,
                ),
                // add border of 40
              ),
              const Gap(60),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  " How to get Gemini API: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "- Visit https://ai.google.dev/ and create a Gemini account.\n- Generate an API key and keep it secure ",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// https://youtu.be/6aj5a7qGcb4
YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: '6aj5a7qGcb4',
  flags: const YoutubePlayerFlags(
    autoPlay: true,
    mute: false,
  ),
);
