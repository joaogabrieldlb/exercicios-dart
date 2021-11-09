import 'dart:io';

bool isWord(String word)
{
  // Regex com apenas letras
  final RegExp wordRegex = new RegExp("[a-zA-Z]+");
  // Verifica se a palavra é maior que 1
  // e se só possui letras
  if (word.length > 1 && 
    wordRegex.hasMatch(word))
  {
    return true;
  }
  return false;
}

bool isVowel(String char)
{
  char = char.toUpperCase();
  String vowels = "AEIOU";
  return vowels.contains(char);
}

bool isConsonant(String char)
{
  char = char.toUpperCase();
  String consonants = "BCDFGHJKLMNPQRSTVWXYZ";
  return consonants.contains(char);
}

main()
{
  stdout.write("Digite uma palavra: ");
  String result = stdin.readLineSync() ?? "";
  
  // Removendo espacos no inicio e final de result
  result = result.trim();
  // Separando as palavras digitadas por espaco
  var words = result.split(" ");
  // Iterando sobre todas a palavras digitadas
  for (String word in words)
  {
    int countVowels = 0;
    int countConsonant = 0;
    
    if (isWord(word))
    {
      // Iterando sobre os caracteres de result
      for (int i = 0; i < word.length; i++)
      {
        // Verifica se o caracter e vogal
        if (isVowel(word[i]))
        {
          countVowels++;
        }
        else
        {
          // Verifica se o caracter e consoante
          if(isConsonant(word[i]))
            countConsonant++;
        }
      }
      print('\nA palavra "$word" possui ${word.length} letras,');
      print("dentre as letras, $countVowels " + 
        (countVowels > 1 ? "sao vogais" : "e vogal") + " e $countConsonant " + 
        (countConsonant > 1 ? "consoantes" : "consoante") + ".");
    }
    else
    {
      print('\nErro: "$word" nao e uma palavra!');
    }
  }
}