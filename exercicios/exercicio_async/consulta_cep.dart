import 'dart:convert';
import 'dart:io';

main() async
{
  final RegExp cepRegex = RegExp("[0-9]{5}-[0-9]{3}");
  int cep = -1;

  do
  {
    stdout.write("Digite o CEP: ");
    String result = stdin.readLineSync() ?? "";

    result = (cepRegex.hasMatch(result)) ? 
              result.replaceAll("-", "") :
              result;
    
    if(result.length == 8)
    {
      cep = int.tryParse(result) ?? -1;

      if(cep != -1)
      {
        var request = await HttpClient()
          .getUrl(Uri.parse("http://viacep.com.br/ws/$cep/json/"));
        var response = await request.close();

        await for(var conteudo in response.transform(Utf8Decoder()))
        {
          print(conteudo);
        }
        return;
      }
    }
    print("Erro: CEP invalido.");
    print("(00000-000 ou 00000000)");
  }
  while(cep == -1);
}