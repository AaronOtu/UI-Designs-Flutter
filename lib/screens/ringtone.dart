import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_sound_lite/flutter_sound.dart";
import "package:my_designs/screens/fig1.dart";
import "package:my_designs/widgets/font_widget.dart";

class RingtonePage extends StatefulWidget {
  const RingtonePage({super.key});

  @override
  State<RingtonePage> createState() => _RingtonePageState();
}

class _RingtonePageState extends State<RingtonePage> {
  List ringtones = [];
  var player = FlutterSoundPlayer();
  //final player = AudioPlay

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C0D0E),
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FigmaPage1()));
            },
            child: Image(image: AssetImage('images/arrow-square-left.png'))),
        backgroundColor: Color(0xFF0E1758),
        centerTitle: true,
        title: Xtext(text: 'Ringtone Lists', color: Colors.white, fontSize: 24),
      ),
      body: Column(
        children: [
          if (ringtones.isNotEmpty)
            Expanded(
              child: ListView.builder(
                  itemCount: ringtones.length,
                  itemBuilder: (_, index) {
                    final ringtone = ringtones[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                          color: Color(0xFF0E1758),
                          child: ListTile(
                              onTap: () async {
                                player = (await player.openAudioSession())!;
                                player.startPlayer(
                                  fromURI:
                                      '/system/media/audio/ringtones/$ringtone.ogg',
                                  codec: Codec.opusOGG,
                                );
                              },
                              title: Xtext(
                                  text: ringtone,
                                  color: Colors.white,
                                  fontSize: 24))),
                    );
                  }),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(Color(0xFF0A28F4))),
                onPressed: () async {
                  const channel = MethodChannel('flutter_channel');
                  ringtones = await channel.invokeMethod('getRingtones');
                  setState(() {});
                  debugPrint('Hello you\'ve clicked on an elevated button');
                },
                child: Xtext(
                    text: "Get Ringtones",
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

