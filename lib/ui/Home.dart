import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index=0;
  List Quote = [  "The only way to do great work is to love what you do.",
  "If you want to live a happy life, tie it to a goal, not to people or things.",
    "Believe you can and you're halfway there.",
    "The best way to predict your future is to create it.",
    "In the end, it's not the years in your life that count. It's the life in your years."
 ,  "The only limit to our realization of tomorrow will be our doubts of today."
  ,  "You miss 100% of the shots you don't take."
,  "Don't watch the clock; do what it does. Keep going."
 ,  "Do not go where the path may lead, go instead where there is no path and leave a trail."
  ,  "Strive not to be a success, but rather to be of value."
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 350,
                height: 200,
                alignment: Alignment.center,
                margin: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(18.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(Quote[_index % Quote.length]),
                )),
            Divider(thickness: 2.2,color: Colors.pink,),
            TextButton.icon(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.red),
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
                onPressed: showQuote,
                icon: Icon(Icons.wb_sunny), label:Text("insipire me")),
          ],
        ),
      ),
    );
  }

  void showQuote() {
  setState(() {
    _index +=1;
  });
  }
}





class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        final snackBar =SnackBar(content: Text("hello again"),);
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.blue,
        ),
        child:Text("2Button"),
      )
    );
  }
}




class ScaffoldExamples extends StatelessWidget {
  const ScaffoldExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.cyan,
        title: Text("Scaffolding examples",
        style: TextStyle(fontSize: 23.4),),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "first"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "second"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "third")
      ],
        onTap: (int index){
         debugPrint("tapped: $index");
        },
      ),
      body: Container(
        alignment: Alignment.center,
       color: Colors.red,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            CustomButton()
            // InkWell(
            //   child: Text("tap me twice",
            //   style: TextStyle(color: Colors.white
            //       ,fontSize: 23.4),),
            //   onTap:()=> debugPrint("tapped"),
            // ),
          ],
        )
      ),
    );
  }
}
class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("BizCard"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _getCard(),
            _getAvatar()
          ],
        ),
      ),
    );
  }
}

_getCard(){
  return Container(
    width:350,
    height: 200,
    margin: EdgeInsets.all(50.0),
    decoration: BoxDecoration(
        color: Colors.pinkAccent,
      borderRadius: BorderRadius.circular(15.0)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Oladayo"),
        Text("OladayoAfolabi@outlook.com"),
        Text("welcome"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person),
            Text("T : building with me")
          ],
        )

      ],
    ),
  );
}
_getAvatar(){
  return Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
      color:Colors.white,
      border:Border.all(color:Colors.green,width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(50.0)),
      image: DecorationImage(image: NetworkImage("https://picsum.photos/200/300"),
          fit: BoxFit.cover)
    ),

  );
}


