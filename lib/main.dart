import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: UITiktok(),
        ),
        bottomNavigationBar: _bottomNav(),
      ),
    );
  }

  Widget _bottomNav() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,

      items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.network('https://upload-icon.s3.us-east-2.amazonaws.com/uploads/icons/png/3895539931556258249-512.png', width: 24.0,),
          ),
          title: Text(
            'Inicio',
            style: TextStyle(fontSize: 10.0),
          )
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.network('https://upload-icon.s3.us-east-2.amazonaws.com/uploads/icons/png/3895539931556258249-512.png', width: 24.0),
          ),
          title: Text(
            'Tendencias',
            style: TextStyle(fontSize: 10.0),
          )
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.network('https://upload-icon.s3.us-east-2.amazonaws.com/uploads/icons/png/3895539931556258249-512.png', width: 24.0),
          ),
          title: Container()
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.network('https://upload-icon.s3.us-east-2.amazonaws.com/uploads/icons/png/3895539931556258249-512.png', width: 24.0),
          ),
          title: Text(
            'Bandeja',
            style: TextStyle(fontSize: 10.0),
          )
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.network('https://upload-icon.s3.us-east-2.amazonaws.com/uploads/icons/png/3895539931556258249-512.png', width: 24.0),
          ),
          title: Text(
            'Yo',
            style: TextStyle(fontSize: 10.0),
          )
        ),
      ],
    );
  }
}

class UITiktok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.network(
          '',
          fit: BoxFit.cover,
          height: double.infinity,
        ),
        _blackGradient(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _topNav(),
            Column(
              children: <Widget>[
                _interactionButtons(),
                _postData(),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _blackGradient(){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color> [
            Colors.black87,
            Colors.black26,
            Colors.black26,
            Colors.black26,
            Colors.black54,
            Colors.black87,
          ]
        ),
      ),
    );
  }

  Widget _topNav() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                'Siguiendo',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                color: Colors.white,
                width: 40.0,
                height: 2.0,
              )
            ],
          ),

          SizedBox(width: 30.0),

          Column(
            children: <Widget>[
              Text(
                'Para ti',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white54,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                color: Colors.white54,
                width: 40.0,
                height: 2.0,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _interactionButtons() {
    return Align(
      alignment: Alignment.centerRight,
        child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              border: Border.all(
                color: Colors.white,
              )
            ),
            child: ClipOval(
              child: Image.network(
                '',
                width: 50.0,
                height: 50.0,
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(height: 25.0),

          Image.network(''),
          SizedBox(height: 5.0),
          Text(
            '169.4k',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10.0,
            ),
          ),

          SizedBox(height: 20.0),

          Image.network(''),
          SizedBox(height: 5.0),
          Text(
            '509',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10.0,
            ),
          ),

          SizedBox(height: 20.0),

          Image.network(''),
          SizedBox(height: 5.0),
          Text(
            '110',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _postData() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 8.0, bottom: 15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '@username',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(width: 10.0),

              Text(
                '03-05',
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
            ],
          ),
        
          SizedBox(height: 15.0),

          Row(
            children: <Widget>[
              Flexible(
                child: Column(
                  children: <Widget>[
                    Text(
                      'LOREM IPSUM GENERAL SIP',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Image.network('', width: 20.0),
                        SizedBox(width: 10.0),
                        Text(
                          'Lorem - Ipsum',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          'lorem ipsum',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(
                    color: Colors.white24,
                    width: 10.0,
                  )
                ),
                child: ClipOval(
                  child: Image.network(
                    '',
                    width: 30.0,
                    height: 30.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}