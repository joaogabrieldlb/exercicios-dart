/*
    - List
    - Set
    - Map
*/
main(List<String> args) {
    
    // List
    var aprovados = ["Ana", "Carlos", "Daniel", "Rafael"];

    print(aprovados is List);
    print(aprovados);
    print(aprovados.elementAt(2));
    print(aprovados[0]);
    print(aprovados.length);

    // Map
    var telefones = {
        "João": "+55 (11) 9876-3234",
        "Maria": "+55 (11) 9432-3124",
        "Pedro": "+55 (11) 9442-3416"
    };

    print(telefones is Map);
    print(telefones);
    print(telefones["João"]);
    print(telefones.length);
    print(telefones.values);
    print(telefones.entries);

    // Set
    var times = {"Vasco", "Flamengo", "São Paulo", "Fortaleza"};
    print(times is Set);
    print(times.length);
    print(times.first);
    print(times.last);
    times.add("Vasco");
    print(times);
}