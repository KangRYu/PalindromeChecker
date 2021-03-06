public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = noCapitals(word);
  word = noSpaces(word);
  word = onlyLetters(word);
  if(reverse(word).equals(word)) 
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length() - 1; i >= 0; i--) 
    {
      sNew += String.valueOf(str.charAt(i));
    }
    return sNew;
}
public String noCapitals(String str)
{
  return str.toLowerCase();
}
public String noSpaces(String str)
{
  String result = "";
  for(int i = 0; i < str.length(); i++)
  {
    if(str.charAt(i) != ' ')
    {
      result += str.substring(i, i + 1);
    }
  }
  return result;
}
public String onlyLetters(String str)
{
  String result = "";
  for(int i = 0; i < str.length(); i++)
  {
    if(Character.isLetter(str.charAt(i)))
    {
      result += str.substring(i, i + 1);
    }
  }
  return result;
}