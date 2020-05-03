       IDENTIFICATION DIVISION.
       PROGRAM-ID. BSCALC.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 WS-ORIG PIC 9(5)V9(2).
           01 WS-RESULT PIC 9(5)V9(2).
           01 WS-FEE PIC 9(1)V9(2).
           01 WS-RESULT-FEE PIC 9(5)V9(2).
           01 WS-R2O-MUP PIC 9(1)V9(16).
           01 WS-O2R-MUP PIC 9(1)V9(16).
           01 WS-MUP PIC 9(1)V9(3).
           01 WS-MUP-OUT PIC 9(2)V9(1).
           01 WS-R2O PIC 9(1)V9(16).
           01 WS-O2R PIC 9(1)V9(16).
           01 WS-REVERSE PIC 9(5)V9(2).

       PROCEDURE DIVISION.
           ACCEPT WS-ORIG.
           ACCEPT WS-RESULT.
           ACCEPT WS-FEE.
           ACCEPT WS-MUP.
           DISPLAY "Original amount: "WS-ORIG.
           DISPLAY "Result: "WS-RESULT.
           DISPLAY "Exchange fee: "WS-FEE.
           MULTIPLY 100 BY WS-MUP GIVING WS-MUP-OUT.
           DISPLAY "Exch rate markup: "WS-MUP-OUT"%".
           ADD WS-RESULT WS-FEE TO WS-RESULT-FEE.
           DISPLAY "Result with fee: "WS-RESULT-FEE.
           DIVIDE WS-ORIG BY WS-RESULT-FEE GIVING WS-R2O-MUP.
           DISPLAY "Result to original exch rate w/ markup: "WS-R2O-MUP.
           DIVIDE 1 BY WS-R2O-MUP GIVING WS-O2R-MUP.
           DISPLAY "Original to result exch rate w/ markup: "WS-O2R-MUP.
           MULTIPLY WS-R2O-MUP BY WS-MUP GIVING WS-R2O.
           DISPLAY "Result to original exch rate: "WS-R2O
           DIVIDE 1 BY WS-R2O GIVING WS-O2R.
           DISPLAY "Original to result exch rate: "WS-O2R.
           COMPUTE WS-REVERSE ROUNDED = WS-R2O-MUP * WS-RESULT-FEE
           END-COMPUTE.
           DISPLAY "Reverse the transaction: "WS-REVERSE.
       STOP RUN.
