import 'package:firebase_database/firebase_database.dart';


DatabaseReference starCountRef =
        FirebaseDatabase.instance.ref('posts/$postId/starCount');
starCountRef.onValue.listen((DatabaseEvent event) {
    final data = event.snapshot.value;
    updateStarCount(data);
});