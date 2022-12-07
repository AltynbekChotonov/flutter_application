
import 'package:flutter/material.dart';

class EkinchiBarak extends StatefulWidget {
  final int san;

 
  EkinchiBarak({Key key, this.san}) : super(key: key);

  @override
  _EkinchiBarakState createState() => _EkinchiBarakState();
}

class _EkinchiBarakState extends State<EkinchiBarak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              centerTitle: true,
              title: Text(
                "Тапшырма 02",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EkinchiBarak(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 28.0,
                        right: 28.0,
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xff46F3F3),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        height: 50,
                        // color: Color(0xff46F3F3), //decoration bolgonu uchun bul jerde tus bolbosh kerek
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'SAN: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('${widget.san}'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}