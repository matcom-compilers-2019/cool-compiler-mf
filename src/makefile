# .PHONY: clean

# main:
# 	# Compiling the compiler :)

# clean:
# 	rm -rf build/*

all : clean restore build publish

clean:
	dotnet clean coolc/src/coolc/coolc.csproj

restore:
	dotnet restore coolc/src/coolc/coolc.csproj

build: 
	dotnet build coolc/src/coolc/coolc.csproj

publish:
	dotnet publish coolc/src/coolc/coolc.csproj -c Release -o bin/

run:
	cd coolc/src/coolc/; dotnet run 