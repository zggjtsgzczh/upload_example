@echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo ::::::::::::::::::::download data:::::::::::::::::::::
@echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::
wget o "http://fchart.stock.naver.com/sise.nhn?symbol=KOSPI&timeframe=day&count=500&requestType=0" -O temp.txt

@echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo ::::::::::::::::::adjustment data:::::::::::::::::::::
@echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::
sed -i "8,1008!d;s/\t//g;s/<item data\=//g;s/ \/>//g;s/|/\,/g;/^$/d;s/<chartdata //g;s/symbol=//g;s/ name=/\,/g;s/ count=/\,/g;s/ timeframe=/\,/g;s/ precision=/\,/g;s/ origintime=/\,/g;s/>/\,/g;s/^.//g" temp.txt  
sed -i "s/\"//g" temp.txt
