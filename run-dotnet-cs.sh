#!/bin/bash
# filepath: /workspaces/my-csharp-project/run-dotnet-cs.sh

if [ $# -ne 1 ]; then
    echo "Usage: $0 <path-to-cs-file>"
    exit 1
fi

CSFILE="$1"
APPDIR="tempApp"

# Remove any previous tempApp directory
rm -rf "$APPDIR"

# Create new console project
dotnet new console -o "$APPDIR" --force

# Copy the provided C# file as Program.cs
cp "$CSFILE" "$APPDIR/Program.cs"

# Open the code to insert breakpoints
code /workspaces/my-csharp-project/tempApp/Program.cs

# Change to the app directory and run
cd "$APPDIR"

# Execute the C# program
dotnet run