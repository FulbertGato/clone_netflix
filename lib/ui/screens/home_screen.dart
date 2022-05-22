import 'package:clone_netflix/models/movie.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../repositories/data_repository.dart';
import '../../shared/constants.dart';

class HomeScreen extends StatefulWidget {
  //données externes
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final  dataProvider = Provider.of<DataRepository>(context);
    return Scaffold(
      backgroundColor: gjBackgroundColor,
      appBar: AppBar(
        backgroundColor: gjBackgroundColor,
        leading: Image.asset("assets/images/Logo.png"),
      ),
      body: ListView(
        children: [
          Container(
              height: 500,
              
              child: dataProvider.popularMovies.isEmpty
                  ? const Center(
                      child: Text("Indisponibilités du film"),
                    )
                  : Image.network(dataProvider.popularMovies[0].posterUrl(),
                    fit:BoxFit.cover,
                  ),                   
                 ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Tendances actuelles",
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dataProvider.popularMovies.length,
                itemBuilder: ((context, index) => Container(
                      width: 120,
                      margin: const EdgeInsets.only(right: 10),
                      
                      child: Center(child: Image.network(dataProvider.popularMovies[index].posterUrl(),
                    fit:BoxFit.cover,
                  ),),
                    )),
              )),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Actuellement au cinéma",
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
              height: 375,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dataProvider.tendanceMovies.length,
                itemBuilder: ((context, index) => Container(
                      width: 250,
                      margin: const EdgeInsets.only(right: 10),
                      
                      child: Center(child: Image.network(dataProvider.tendanceMovies[index].posterUrl(),
                    fit:BoxFit.cover,
                  ),),
                    )),
              )),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Ils arrivent bientot",
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dataProvider.moviesComing.length,
                itemBuilder: ((context, index) => Container(
                      width: 120,
                      margin: const EdgeInsets.only(right: 10),
                      
                      child: Center(child: 
                      Image.network(dataProvider.moviesComing[index].posterUrl(),
                        fit:BoxFit.cover,
                      ),
                      
                      ),
                    )),
              )),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Animations",
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dataProvider.moviesAnnimation.length,
                itemBuilder: ((context, index) => Container(
                      width: 120,
                      margin: const EdgeInsets.only(right: 10),
                      
                      child: Center(child: Image.network(dataProvider.moviesAnnimation[index].posterUrl(),
                        fit:BoxFit.cover,
                      ),),
                    )),
              ))
        ],
      ),
    );
  }
}
