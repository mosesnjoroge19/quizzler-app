import 'questions.dart';

class QuizBrain{
  //class to contain the whole list of questions
  
  //question number property
  int _queryNumber = 0;

  //privatize this list from external access
  List<Question> _questionBag = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  //function to track the questions being displayed

  void nextQuestion(){
    if (_queryNumber < _questionBag.length - 1){
      _queryNumber++;
    }
    else{
      reset();
    }
  }
  //a getter function for the question
  String getQuestionText(){
    return _questionBag[_queryNumber].questionText;
  }

  //a getter function for the answers
  bool getAnswerValue(){
    return _questionBag[_queryNumber].questionanswer;
  }
  bool isFinished(){
    if(_queryNumber == (_questionBag.length - 1)){
      return true;
    }else{
      return false;
    }
  }
  int reset(){
    return _queryNumber = 0;
  }

}