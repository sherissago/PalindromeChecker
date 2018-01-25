public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
    String lol = "";
  for(int i = 0; i < word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i)) == true)
    {
      lol = lol + word.charAt(i);
    }
  }
  lol = lol.toLowerCase();
  if(reverse(lol).equals(lol))
  {
    return true;
  }
  return false;
 
}
public String reverse(String str)
{
    String theReverse = "";
  for(int i = str.length()-1; i >= 0; i--)
  {
    theReverse = theReverse + str.substring(i,i+1);
  }
  return theReverse;
}
