#!/bin/bash -e
dotnet pack src/NHibernate.AspNetCore.Identity/NHibernate.AspNetCore.Identity.csproj -c Release
dotnet nuget push src/NHibernate.AspNetCore.Identity/bin/Release/NHibernate.AspNetCore.Identity.3.1.9.nupkg -s nuget.org -k $(cat ~/.nuget/key.txt)
rm src/NHibernate.AspNetCore.Identity/bin/Release/*.nupkg
