public String reverse (String word){
  String toReturn = "";
  for(int i = word.length() -1; i >= 0; i--)
    toReturn += word.charAt(i);
  return toReturn;
}

public String onlyLetters(String word){
  String toReturn = "";
  for(int i = 0; i < word.length(); i++)
    if(Character.isLetter(word.charAt(i)))
      toReturn += word.charAt(i);      
  return toReturn;
}

public boolean palindrome(String word){
  String wordL = word.toLowerCase();
  wordL = onlyLetters(wordL);
  String wordM = word.toLowerCase();
  
  wordM = onlyLetters(wordM);
  wordM = reverse(wordM);

  return wordM.equals(wordL);
}
void setup(){
  //String lines[] = loadStrings("palindromes.txt");
  String lines[] = {"test", "rotator", "rewriter", "nurses run", "Madam , I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
    System.out.println("there are " + lines.length + " lines");
    for (int i=0; i < lines.length; i++){
      print(lines[i] + " ");
      print( palindrome(lines[i])? "is": "is NOT");
      println(" a palindrome");      
    }
       
}
