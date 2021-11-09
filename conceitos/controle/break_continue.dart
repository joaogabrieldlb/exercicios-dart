main()
{ 
  print("laço for #01");
  for(int a = 0; a < 10; a++)
  {
    if(a == 6)
    {
      break;
    }
    print(a);
  }

  print("laço for #02");
  for(int a = 0; a < 10; a++)
  {
    if(a & 1 == 1)
    {
      continue;
    }
    print(a);
  }

  print("Fim do programa!");
}