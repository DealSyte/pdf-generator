#!/bin/bash
# prepared for execution on Linux, not tested on other OSs
clear
echo "cleaning environment"
rm -fr node_modules
rm -fr *.pdf
rm -fr folder*
rm -fr BFF*

echo "installing deps"
npm init -y
npm install pdfkit
npm install uuid
clear

echo "done with deps"
echo "creating 50 pdf files in folder50"
for i in {1..50}; do node index.js; done
  mkdir folder50
  mv *.pdf folder50
clear
echo "created 50 pdf files in folder50"
echo "creating 100 pdf files in folder100"
for i in {1..100}; do node index.js; done
  mkdir folder100
	mv *.pdf folder100
clear
echo "created 50 pdf files in folder50"
echo "created 100 pdf files in folder100"
echo "creating 200 pdf files in folder200"
for i in {1..200}; do node index.js; done
  mkdir folder200
	mv *.pdf folder200
clear
echo "created 50 pdf files in folder50"
echo "created 100 pdf files in folder100"
echo "created 200 pdf files in folder200"
echo "creating BFF with 350 files"
	mkdir BFF
	cp -R folder50 BFF
	cp -R folder100 BFF
	cp -R folder200 BFF
	mkdir BFFdouble
	cp -R BFF BFFdouble
	cp -R folder200 BFFdouble
clear
echo "Downloading 25mb file"
mkdir bigFiles
wget https://research.nhm.org/pdfs/10840/10840.pdf
mv 10840.pdf bigFiles/
echo "creating txt files"
mkdir txtFiles
base64 /dev/urandom | head -c 10000000 > 10MbFile.txt 
base64 /dev/urandom | head -c 20000000 > 20MbFile.txt 
base64 /dev/urandom | head -c 30000000 > 300MbFile.txt 
mv *.txt txtFiles/
exit
