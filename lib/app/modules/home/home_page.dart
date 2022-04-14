import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tatu_do_bem/app/modules/home/counter_bloc/counter_bloc.dart';
import 'package:tatu_do_bem/app/modules/home/store/home_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<ListResult> futureFiles;
  Map<int, double> downloadProgress = {};

  @override
  void initState() {
    super.initState();
    //  futureFiles = FirebaseStorage.instance.ref('/files').listAll();
  }

  @override
  Widget build(BuildContext context) {
    final HomeStore store = Modular.get<HomeStore>();

    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => store.bloc.add(DecrementEvent()),
          ),
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => store.bloc.add(IncrementEvent()),
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // // SizedBox(
              //   height: double.infinity,
              //   width: double.infinity,
              //   child: FutureBuilder<ListResult>(
              //     future: futureFiles,
              //     builder: (context, snapshot) {
              //       if (snapshot.hasData) {
              //         final files = snapshot.data!.items;

              //         return ListView.builder(
              //           itemCount: files.length,
              //           itemBuilder: (context, index) {
              //             final file = files[index];
              //             double? progress = downloadProgress[index];
              //             return ListTile(
              //               title: Text(file.name),
              //               subtitle: progress != null
              //                   ? LinearProgressIndicator(
              //                       value: progress,
              //                       backgroundColor: Colors.black,
              //                     )
              //                   : null,
              //               trailing: IconButton(
              //                 icon: const Icon(
              //                   Icons.download,
              //                   color: Colors.black,
              //                 ),
              //                 onPressed: () => downloadFile(index, file),
              //               ),
              //             );
              //           },
              //         );
              //       } else if (snapshot.hasError) {
              //         return const Center(child: Text('Error'));
              //       }
              //       return const Center(
              //         child: Text("Sem itens"),
              //       );
              //     },
              //   ),
              // ),
              const Text("Button Tapped:"),
              BlocBuilder<CounterBloc, int>(
                bloc: store.bloc,
                builder: (context, count) {
                  return Text(
                    "$count",
                    style: Theme.of(context).textTheme.headline3,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future downloadFile(int index, Reference ref) async {
    final url = await ref.getDownloadURL();

    //final dir = await getApplicationDocumentsDirectory();
    //final tempDir = await getApplicationDocumentsDirectory();
    //await ref.writeToFile(file);
    final tempDir = await getTemporaryDirectory();
    final path = '${tempDir.path}/${ref.name}';
    await Dio().download(url, path, onReceiveProgress: ((count, total) {
      double progress = count / total;
      setState(() {
        downloadProgress[index] = progress;
      });
    }));

    if (url.contains('.mp4')) {
      await GallerySaver.saveVideo(path, toDcim: true);
    } else if (url.contains('.jpg')) {
      await GallerySaver.saveImage(path, toDcim: true);
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Downloaded ${ref.name}')),
    );
  }

  // Future<DocumentSnapshot> getData() async {
  //   await Firebase.initializeApp();
  //   return await FirebaseFirestore.instance
  //       .collection("users")
  //       .doc("docID")
  //       .get();
  // }
}
