import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [Card(child: Column(  //height: MediaQuery.of(context).size.height * 0.5,
          children: [
            ListTile( 
                  leading: Image.asset('images/image7.jpg',                   
                    height: MediaQuery.of(context).size.height * 0.4, 
                    width: MediaQuery.of(context).size.width * 0.3,
                    fit: BoxFit.cover), 
                    trailing: const Icon(Icons.star_border),                
                  title: const Text('Гарри Поттер и Дары смерти'), 
                  subtitle: Text( 
                    '2010 г. ‧ Фэнтези ‧ 2 ч 31 мин ', 
                    style: TextStyle(color: Colors.black.withOpacity(0.6)), 
                  ), 
                ),             
             const Padding (padding: EdgeInsets.all(16.0), 
             child: Text
             ('Гарри Поттера ждёт самое страшное испытание в жизни — смертельная схватка с Волан-де-Мортом. Ждать помощи не от кого — Гарри одинок, как никогда…'),             
             ), 
            ]     
          ),           
        ),
      SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
      Card(child: Column(  //height: MediaQuery.of(context).size.height * 0.5,
          children: [
            ListTile( 
                  leading: Image.asset('images/image8.jpg',
                    alignment: Alignment.bottomRight,
                    height: MediaQuery.of(context).size.height * 0.4, 
                    width: MediaQuery.of(context).size.width * 0.3,
                    fit: BoxFit.cover), 
                    trailing: const Icon(Icons.star_border),                
                  title: const Text('Астрал 3'), 
                  subtitle: Text( 
                    '2015 г. ‧ Ужастик ‧ 2 ч 15 мин ', 
                    style: TextStyle(color: Colors.black.withOpacity(0.6)), 
                  ), 
                ),             
             const Padding (padding: EdgeInsets.all(16.0), 
             child: Text
             ('Продолжение хоррора о нечистой силе, пытающейся завладеть невинной человеческой душой, считается одним из главных ужастиков лета-2015.'),             
             ), 
            ]     
          ),           
        ),
         SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
      Card(child: Column(  //height: MediaQuery.of(context).size.height * 0.5,
          children: [
            ListTile( 
                  leading: Image.asset('images/image9.jpg',
                  height: MediaQuery.of(context).size.height * 0.4, 
                    width: MediaQuery.of(context).size.width * 0.3,
                    fit: BoxFit.cover), 
                    trailing: const Icon(Icons.star_border),                
                  title: const Text('Реинкарнация'), 
                  subtitle: Text( 
                    'Ужастик ‧ 2 ч 35 мин 2014 г. ', 
                    style: TextStyle(color: Colors.black.withOpacity(0.6)), 
                  ), 
                ),             
             const Padding (padding: EdgeInsets.all(16.0), 
             child: Text
             ('Смерть бабушки Элен по-разному отразилась на каждом из членов семьи. Её дочь Энни испытывает странную смесь горя и освобождения от гнёта власти матери.'),             
             ), 
            ]     
          ),           
        ),
      ],
    );
  }
}
