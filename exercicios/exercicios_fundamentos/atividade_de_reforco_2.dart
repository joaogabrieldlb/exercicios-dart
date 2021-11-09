
bool isNumeber(String char)
{
  int? number = int.tryParse(char);
  if (number != null)
  {
    return true;
  }
  return false;
}

main()
{
  String chars = "12j3lk21j3kl";
  print(chars);
  for (int i = 0; i < chars.length; i++)
  {
    var char = chars[i];
    print("$char " + (isNumeber(char) ? "e" : "nao e") + " um numero.");
  }
}