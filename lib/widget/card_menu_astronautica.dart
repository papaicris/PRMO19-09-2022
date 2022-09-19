import 'package:astroapp/data/bd.dart';
import 'package:astroapp/domain/indicacoes/subPagesDomain/livros.dart';
import 'package:astroapp/domain/menu_astro.dart';
import 'package:astroapp/domain/menu_astro.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../domain/sobre.dart';

class CardMenuAstronautica extends StatefulWidget {
  final Menu_astro menu_astro;
  
  const CardMenuAstronautica({
    Key? key, 
    required this.menu_astro
  }) : super(key: key);

  @override
  State<CardMenuAstronautica> createState() => _CardMenuAstronautica();
}

class _CardMenuAstronautica extends State<CardMenuAstronautica> {

  @override
  Widget build(BuildContext context) {

    return Container(
                          margin: const EdgeInsets.only(bottom: 75.0),
                           decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              width: 7,
                              ),
                          ),
                        

                          child: InkWell(
                            child: Column(
                              children:[
                                Text(
                            widget.menu_astro.titulo,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.yellow,
                            ),
                            ),

                              Image.asset(
                                widget.menu_astro.img,
                          ),
                              ],
                            ),
                            onTap: () {
                              int i = 0;
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => BD.routesList[i]),
                              );
                          },
                          ),
                        );
  }
  
}