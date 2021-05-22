class Question{
  //Question's properties
  String questionText;
  bool questionanswer;

  //Constructor to set values for properties in a new object

  //better code technique to set constructors
  Question(String q, bool a){
    questionText = q;
    questionanswer = a;
  }
}