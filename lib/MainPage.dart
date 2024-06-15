import 'package:flutter/material.dart';

import 'Supabase.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  State createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String _link = '';

  void _getLink() async{
    if(_link == ''){
    String? response = await getLinkFromSupabase();
      if(response != null){
        _link = response;
        setState(() {
        });
      }
    }
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Ackerherz.de 20€ Rabatt-Code erhalten!", style: TextStyle(fontSize: 30.0),textAlign: TextAlign.center,),
                SizedBox(
                  height: 40,
                ),
                if (_link.isNotEmpty)
                  SelectableText(
                    _link,
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                if (_link.isNotEmpty)
                  Text('Mit diesem Link erhältst du 20€ Rabatt auf deinen Mitgliedsbeitrag!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: _getLink,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange), // Change background color
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Change text color
                    minimumSize: MaterialStateProperty.all<Size>(Size(170, 60)), // Change button size
                  ),
                  child: Text('Code erhalten', style: TextStyle(fontSize: 17),),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Ackerherz.de ist dein Online-Bio-Mitgliederladen, bei dem du mit unserem exklusiven Rabattcode ordentlich sparen kannst.',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Werde jetzt Mitglied bei Ackerherz und sichere dir bis zu 50% Ersparnis gegenüber dem UVP auf haltbare Bio-Produkte. Nutze unseren Coupon Code und erhalte zusätzlich 20€ Rabatt auf deinen Mitgliedsbeitrag.',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Entdecke die Vielfalt an Bio-Trockenwaren und profitiere von kostenlosen Lieferungen ab einem Mindestbestellwert von 49€.',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Teste Ackerherz jetzt einen Monat lang kostenlos und erhalte danach für nur 3,90€ im Monat Zugang zu exklusiven Angeboten. Werde Teil der Ackerherz-Community und genieße hochwertige Bio-Produkte zu unschlagbaren Preisen!',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}