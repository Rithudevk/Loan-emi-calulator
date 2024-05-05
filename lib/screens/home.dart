import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String? selected;
  
  final controller1=TextEditingController();
  final controller2=TextEditingController();
  double ?totalintres;
  double? minIntrest;
   double? Tamount;
 
  void emicalculator(){
    final amount=  double.parse(controller1.text);
    final tintrest=amount*(double.parse(controller2.text)/100)*int.parse(selected!);
    final minintrest=(amount+tintrest)/(int.parse(selected!)*12);
    setState(() {
       Tamount=amount;
       minIntrest=minintrest;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 10,
                right: 10
              ),
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight:  Radius.circular(20),

             )
           ),
            height: 100,
              padding: EdgeInsets.only(
                top: 10,

              ),
             child:const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios,
                color: Colors.black,
                ),
                Text('Bank of Baroda',
                style: TextStyle(
                  color: Color.fromARGB(255, 2, 22, 38),
                  fontSize: 20,
                   fontWeight: FontWeight.bold
                ),
                ),
                   Icon(Icons.notes_outlined,
                   color: Colors.black,
                   ),
                
              ],
             ), 
            ),
        
         
        Container(
           
          color: Colors.grey.shade200,
          height: 600,

          margin: EdgeInsets.only(
            left: 10,
            right: 10,
          

          ),
          padding: EdgeInsets.only(
            top: 50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                 
                  Container(
                    
              margin: EdgeInsets.only(
                left: 10,
                
              ),
              child: Text('Loan',
              style: TextStyle(
                color: const Color.fromARGB(255, 1, 35, 63),
              fontSize: 30,
              fontFamily: GoogleFonts.actor().fontFamily
              ),
              ),
            ),
                
                  Container(
                    
              margin: EdgeInsets.only(
                left: 10,
              ),
              child: Text('EMI calculator',
              style: TextStyle(
                color: const Color.fromARGB(255, 8, 54, 91),
              fontSize: 30,
              fontFamily: GoogleFonts.actor().fontFamily
              ),
              ),
            ),
            SizedBox(height: 35,),
        

                  Container(
                    
              margin: EdgeInsets.only(
                left: 10
              ),
              child: Text('Loan Amount',
              style: TextStyle(
                color: Colors.black,
              fontSize: 20,
              fontFamily: GoogleFonts.actor().fontFamily
              ),
              ),
            ),
            SizedBox(height: 10,),
           Container(
            height: 70,
            margin: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white
            ),
            child: TextField(
              controller: controller1,
             decoration: InputDecoration(
              hintText: 'eg:100000',
              border: OutlineInputBorder(
                borderSide: BorderSide.none
              )
             ),
            ),
           ),
           SizedBox(
            height: 20,
           ),
             Container(
              margin: EdgeInsets.only(
                left: 10,

              ),
              child: Text('Interest Rate',
              style: TextStyle(
                color: Colors.black,
              fontSize: 20,
              fontFamily: GoogleFonts.actor().fontFamily
              ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(
                left: 10,right: 10
              ),
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: TextField(
              controller: controller2,
             decoration: InputDecoration(
              hintText: 'Interest Rate(eg:3.5)',
              border: OutlineInputBorder(
                borderSide: BorderSide.none
              )
             ),
            ),
           ),
           SizedBox(
            height: 20,
           ),
          
             Container(
              margin: EdgeInsets.only(
                left: 10
              ),
              child: Text('Loan Period(eg:1y)',
              style: TextStyle(
                color: Colors.black,
              fontSize: 20,
              fontFamily: GoogleFonts.actor().fontFamily
              ),
              ),
            ),
             SizedBox(
            height: 20,
           ),
           Row(
            children: [
              loanPeriod('1'),
              loanPeriod('2'),
              loanPeriod('3'),
              loanPeriod('4'),
              loanPeriod('5'),
            ],
           ),
           SizedBox(
            height: 10,
           ),
             Row(
            children: [
              loanPeriod('6'),
              loanPeriod('7'),
              loanPeriod('8'),
              loanPeriod('9'),
              loanPeriod('10'),
            ],
           ),
           SizedBox(
            height: 30,
           ),

           
        
            ],
          ),
        ),
        SizedBox(height: 10,),
          GestureDetector(
              onTap: () {
                
                emicalculator();

                Future.delayed(Duration.zero);
                showModalBottomSheet(
                  backgroundColor: Colors.white.withOpacity(0.8),
                  context: context, 
                builder: (BuildContext context) {
                  return Container(
                    height: 500,
                    width: 500,
                 child: Center
                 (child: Column(
                   children: [
                     Container(
                      margin: EdgeInsets.only(
                        top: 50,
                      ),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Container(

                             child: Text('Monthly interest',
                             style: TextStyle(
                              fontSize: 20,
                              color: const Color.fromARGB(255, 2, 39, 69),
                              fontWeight: FontWeight.bold,
                              fontFamily: GoogleFonts.andika().fontFamily
                             ),
                             ),
                           ),
                               Container(
                   
                       child: Text('${minIntrest}₹',
                       style: TextStyle(
                        fontSize: 20,
                        color:const Color.fromARGB(255, 99, 15, 9),
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.andika().fontFamily
                       ),
                       ),
                     ),
                         ],
                       ),
                     ),
                     SizedBox(height: 10,),
                      Container(
                      margin: EdgeInsets.only(
                        top: 50,
                      ),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Container(

                             child: Text('Total Amount',
                             style: TextStyle(
                              fontSize: 20,
                              color: const Color.fromARGB(255, 2, 39, 69),
                              fontWeight: FontWeight.bold,
                              fontFamily: GoogleFonts.andika().fontFamily
                             ),
                             ),
                           ),
                               Container(
                   
                       child: Text('${Tamount}₹',
                       style: TextStyle(
                        fontSize: 20,
                        color:const Color.fromARGB(255, 99, 15, 9),
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.andika().fontFamily
                       ),
                       ),
                     ),
                         ],
                       ),
                     ),
                  
                  
                     

                   ],
                 )),
                    decoration: BoxDecoration(
                         
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight:  Radius.circular(30),


                      )
                    ),

                  );
                },);
              },
              child:    Container(
                 
                  margin: EdgeInsets.only(
                    left: 70
                  ),
                          height: 60,
                         width: 240,
                          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 2, 29, 50)
                          ),
                          child: Center(
              child: Text('Calculate Emi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              
              ),
              ),
                          ),
                        
                         ),
             )
          ],
        ),
      )
    );

    
  }

  Widget loanPeriod(String number){
    return GestureDetector(
      onTap: () {
        debugPrint(number);
        setState(() {
          selected=number;
        });
      },
      child: Container(
        margin: EdgeInsets.only(
          left: 20
        ),
        padding: EdgeInsets.only(
          left: 15,
          top:10,
        ),
        height: 40,
        width: 40,
        child: Text(number,
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
        ),
        color:selected==number?Colors.red: Colors.white70,
      ),
    );
  }
}