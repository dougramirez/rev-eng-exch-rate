# rev-eng-exch-rate
COBOL implementation of an exchange rate reverse engineer calculator.

## Getting Started
You can use brew to install GNU Cobol (Open Cobol). Just type:

`
brew install gnu-cobol
`

## Run it!
Compile the program, execute it, and enter the amount the original amount, exchanged amount, any per transaction fees, and any markup on the exchange rate.  For example, if you add a 1.5% markup on top of the exchange rate you would enter 0.985:

```
✗ ./main          
10000
10916.45
5
.985
Original amount: 10000.00
Result: 10916.40
Exchange fee: 5.00
Exch rate markup: 98.5%
Result with fee: 10921.40
Result to original exch rate w/ markup: 0.9156335268372186
Original to result exch rate w/ markup: 1.0921400000000000
Result to original exch rate: 0.9018990239346603
Original to result exch rate: 1.1087715736040610
Reverse the transaction: 10000.00
```