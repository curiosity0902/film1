import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
     children: [
      Card(child: Column(  //height: MediaQuery.of(context).size.height * 0.5,
          children: [
            ListTile( 
                  leading: Image.asset('images/image6.jpg',                   
                    height: MediaQuery.of(context).size.height * 0.4, 
                    width: MediaQuery.of(context).size.width * 0.3,
                    fit: BoxFit.cover), 
                    trailing: const Icon(Icons.star),                
                  title: const Text('Мстители: Финал'), 
                  subtitle: Text( 
                    '2019 г. ‧ Боевик ‧ 1 ч 46 мин ', 
                    style: TextStyle(color: Colors.black.withOpacity(0.7)), 
                  ), 
                ),             
             const Padding (padding: EdgeInsets.all(16.0), 
             child: Text
             ('Оставшиеся в живых члены команды Мстителей и их союзники должны разработать новый план, который поможет противостоять разрушительным действиям могущественного титана Таноса.',            
             style: TextStyle(color: Colors.black87),
             ), 
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
                  leading: Image.asset('images/image5.jpg',                  
                    height: MediaQuery.of(context).size.height * 0.4, 
                    width: MediaQuery.of(context).size.width * 0.3,
                    fit: BoxFit.cover), 
                    trailing: const Icon(Icons.star),                
                  title: const Text('Воздушный маршал'), 
                  subtitle: Text( 
                    '2014 г. ‧ Триллер ‧ 1 ч 46 мин ', 
                    style: TextStyle(color: Colors.black.withOpacity(0.7)), 
                  ), 
                ),             
             const Padding (padding: EdgeInsets.all(16.0), 
             child: Text
             ('Межконтинентальный авиарейс. Билл Маркс, воздушный маршал, который обеспечивает безопасность пассажиров, получает сообщения с угрозами от маньяка-террориста.',
             style: TextStyle(color: Colors.black87),
             ),             
             ), 
            ]     
          ),           
        ),
      
      ],
    );
  }
}

