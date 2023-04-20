import 'package:flutter/material.dart';

void main() {
  runApp( BasketballPointsCounter());
  
}
class  BasketballPointsCounter extends StatefulWidget {
  @override
  State<BasketballPointsCounter> createState() => _BasketballPointsCounterState();
}

class _BasketballPointsCounterState extends State<BasketballPointsCounter> {
 int teamApoints=0;

 int teamBpoints=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(' Basketball Score Counter'),
          backgroundColor: Colors.indigo,),
        body: Column(
        
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Team A',style:TextStyle(fontSize: 30) ,),
                      Text('$teamApoints',style:TextStyle(fontSize: 80) ,),
                      ElevatedButton(onPressed: (){
                       
                         setState(() {
                           teamApoints++;
                           print(teamApoints);
                         });
                      },
                       child: Text('+1 point',style:TextStyle(fontSize: 20)),
                       style: ElevatedButton.styleFrom(
                      
                       ),),
                      
                       ElevatedButton(onPressed: (){
                         
                         setState(() {
                          teamApoints=teamApoints+2;
                           print(teamApoints);
                         });
                        
                       },
                       child: Text('+2 points',style:TextStyle(fontSize: 21)),
                       style: ElevatedButton.styleFrom(
                     
                       ),),
                     
                       ElevatedButton(onPressed: (){
                           
                        setState(() {
                           teamApoints=teamApoints+3;
                           print(teamApoints);
                         });
                       },
                       child: Text('+3 points',style:TextStyle(fontSize: 20)),
                       style: ElevatedButton.styleFrom(
                      
                       ),),
                    ],
                  ),
                ),

              Container(
                height: 450,
                child: VerticalDivider(
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                  
              
                ),
              ),

                  Container(
                    height: 450,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Team B',style:TextStyle(fontSize: 30) ,),
                      Text('$teamBpoints',style:TextStyle(fontSize: 80) ,),
                      ElevatedButton(onPressed: (){
                           
                         setState(() {
                          teamBpoints=teamBpoints+1;
                           print(teamBpoints);
                         });
                      },
                       child: Text('+1 point',style:TextStyle(fontSize: 21)),
                       style: ElevatedButton.styleFrom(
                    
                       ),),
                  
                       ElevatedButton(onPressed: (){
                         
                         setState(() {
                            teamBpoints=teamBpoints+2;
                           print(teamBpoints);
                         });
                       },
                       child: Text('+2 points',style:TextStyle(fontSize: 20)),
                       style: ElevatedButton.styleFrom(
                   
                       ),),
                    
                       ElevatedButton(onPressed: (){
                          
                         setState(() {
                           teamBpoints=teamBpoints+3;
                           print(teamBpoints);
                         });
                       },
                       child: Text('+3 points',style:TextStyle(fontSize: 20)),
                       style: ElevatedButton.styleFrom(
                      
                       ),),
                    ],
                                  ),
                  ),
              ],

            ),
             ElevatedButton(onPressed: (){
               setState(() {
                           teamApoints=0;
                           teamBpoints=0;
                           print(teamApoints);
                            print(teamBpoints);
                         });
             },
                     child: Text('Reset',style:TextStyle(fontSize: 20)),
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(211, 231, 230, 230),
                      foregroundColor: Colors.black,
                     ),),
          ],
       
        ),
      ),
    );
  }
}
