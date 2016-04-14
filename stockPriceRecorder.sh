


while :
do
  price=$(curl "http://download.finance.yahoo.com/d/quotes.csv?s=KBC.BR&f=a")

  echo $price >> $RMBASHPATH/src/github.com/romainmenke/stockPriceRecorder/kbc.csv

  cd $RMBASHPATH/src/github.com/romainmenke/stockPriceRecorder

  git add .

  git commit -m "update"

  git push

  sleep 30
done
