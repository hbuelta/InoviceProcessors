#!/bin/bash

# ZARA Invoice Processor / ENGLISH INVOICES 

rm ~/Desktop/THN.txt
grep -m 1 'VAT NUMBER' ~/Desktop/hh.rtf | sed 's/VAT NUMBER: //g' | sed 's/\\//' >> ~/Desktop/THN.txt
grep -m 1 'ORDER NUMBER' ~/Desktop/hh.rtf | sed 's/\\cf[0-9] ORDER NUMBER: //g' | sed 's/\\//' >> ~/Desktop/THN.txt
grep -A 2 -m 3 'AMOUNT' ~/Desktop/hh.rtf | tail -n -3 | head -n 1 | sed 's/\./,/' | sed 's/[^0-9,]//' >> ~/Desktop/THN.txt
grep -m 1 'PAYMENT TERMS' ~/Desktop/hh.rtf | sed 's/\\cf[0-9] PAYMENT TERMS: //g' | sed 's/\\//' >> ~/Desktop/THN.txt
rm ~/Desktop/hh.rtf