

# response=$(curl --write-out %{data} --silent --output /dev/null "http://finance.yahoo.com/d/quotes.csv?s=KBC.BR&f=a")
price=$(curl "http://download.finance.yahoo.com/d/quotes.csv?s=KBC.BR&f=a")

echo $price

echo $price >> $RMBASHPATH/src/github.com/romainmenke/stockPriceRecorder/kbc.csv

cd $RMBASHPATH/src/github.com/romainmenke/stockPriceRecorder

git add .

git commit -m "update"

git push
