import 'package:flutter/material.dart';
import 'package:mello/quiz_questions.dart';



class Quiz extends StatelessWidget{
  const Quiz({super.key});
// a quiz
  @override
  Widget build(BuildContext context){
   return Scaffold(
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    body:const QuizBody());
  }
}

class QuizBody extends StatefulWidget{
  const QuizBody({super.key});

  @override
  _QuizBodyState createState()=>_QuizBodyState();

}

class _QuizBodyState extends State<QuizBody>{
  int _currentquestionindex=0;
  int _britishcatscore=0;
  int _cairocatscore=0;

  void answeredquestions(int score){
    if(score==1 || score==2){
      _britishcatscore+=1;
    }
    else if(score==3 || score==4){
      _cairocatscore+=1;
    }

setState(() {
  _currentquestionindex++;
});

if(_currentquestionindex>=questions.length){
_showResult();
}
  }



  void _showResult(){
    String result;
    if(_cairocatscore>_britishcatscore){
      result='You are a cairo cat!';
    }
    else if(_cairocatscore<_britishcatscore){
      result="You are a british cat";
    }
    else{
      result="You are a persian cat!";
    }

    showDialog(
    context: context,
    builder: (_)=>AlertDialog(
title: const Text("Quiz finished! Here's what you got!",style: TextStyle(fontSize: 24,fontFamily: 'Overpass',color: Colors.green)),
content: Text(result),
actions: [
  TextButton(onPressed: (){
    Navigator.of(context).pop();
    setState(() {
  //     int currentquestionindex=0;
  // int britishcatscore=0;
  // int cairocatscore=0;
    });
  }, child: const Text("Restart?"))
],
    )
  );
  }

  @override
  Widget build(BuildContext context){
    return _currentquestionindex<questions.length
    ? Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
  Text(questions[_currentquestionindex].questionstext,
   style: const TextStyle(fontSize: 24,fontFamily: 'Overpass',color:Color.fromARGB(255, 46, 75, 47))),
   ...questions[_currentquestionindex].answers.keys.map((answer){
    return Container(
width:double.infinity,
margin:const EdgeInsets.symmetric(vertical: 5),
padding:const EdgeInsets.symmetric(horizontal: 20),
child: ElevatedButton(
style: ElevatedButton.styleFrom(
padding:const EdgeInsets.symmetric(vertical: 15),
backgroundColor:Colors.white,
side: const BorderSide(color:Colors.green),
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(20)
),
),
onPressed: ()=>answeredquestions(questions[_currentquestionindex].answers[answer]!),
child:Text(answer,style:const TextStyle(
  fontFamily: 'Overpass',
  fontSize: 15,
  color: Color.fromARGB(255, 34, 37, 34)
))
),
    );
   }),
  
],
    ):
    const Center(
      child:Text("Quiz Completed",style: TextStyle(fontSize: 24,fontFamily: 'Overpass'))
    );
  }
}

