#! /bin/bash
agent="Mozilla/5.0 (Windows NT 10.0; x86_64; rv:67.0) Gecko/20100101 Firefox/67.0"
while true
do 
	read -p "Translate what word: " word
	python3 GOOGLE.pyw -i "$(echo "https://sozdik.kz/ru/dictionary/translate/ru/kk/"$word"/")"  | html2text
done
