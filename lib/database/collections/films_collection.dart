import 'package:cloud_firestore/cloud_firestore.dart';

class FilmsCollection{
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<void> addFilmsCollection(String filmName, String filmYear, String filmRating,
                                  String filmGenre, String filmDuration, String filmDescription, String filmImage, String url,)async{
    try {
      await _firebaseFirestore.collection('films').add({
        'name':filmName,
        'year': filmYear,
        'rating': filmRating,
        'genre': filmGenre,
        'duration': filmDuration,
        'description': filmDescription,
        'filmImage': filmImage,
        'url':url,
      });
    } catch (e) {
      return;
    }

  }

  Future <void> editFilmCollection(String filmName, String filmYear, String filmRating,
                                  String filmGenre, String filmDuration, String filmDescription, String filmImage, String url, dynamic docs,)async{

    try {
      await _firebaseFirestore.collection('films').doc(docs.id).update({
        'name':filmName,
        'year': filmYear,
        'rating': filmRating,
        'genre': filmGenre,
        'duration': filmDuration,
        'description': filmDescription,
        'filmImage': filmImage,
        'url':url,
      });
    } catch (e) {
      return;
    }
    }

    Future <void> deleteFilmCollection(dynamic docs,) async
      {
        try {
          await _firebaseFirestore.collection('films').doc(docs.id).delete();
        } catch (e) { 
          return;         
        }
    }
}

