#! /bin/bash
agent="Mozilla/5.0 (Windows NT 10.0; x86_64; rv:67.0) Gecko/20100101 Firefox/67.0"
url="https://sozdik.kz/ru/dictionary/translate/ru/kk"
while true
do 
	read -p "Translate what word/enter command: " word
	if [ $word == "kz/ru" ]
	then 
		url="https://sozdik.kz/ru/dictionary/translate/kk/ru"
		echo "Translating fromm kazakh to russian!"
		continue
	elif [ $word == "ru/kz" ]
	then 
		url="https://sozdik.kz/ru/dictionary/translate/ru/kk"
		echo "Translating fromm russian to kazakh!"
		continue
	fi 
 	echo $url"/"$word"/"
	python3 scrape.py -i "$(echo $url"/"$word"/")" | html2text -utf8 -nobs
done
