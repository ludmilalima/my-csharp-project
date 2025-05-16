### How to execute a single C# file:

``` bash
    dotnet new console -o tempApp
    cp /workspaces/my-csharp-project/SquaresOfASortedArray/soasa.cs tempApp/Program.cs
    cd tempApp
    dotnet run
```

```bash
    chmod +x run-dotnet-cs.sh
    ./run-dotnet-cs.sh /workspaces/my-csharp-project/SquaresOfASortedArray/soasa.cs
    dotnet run
```