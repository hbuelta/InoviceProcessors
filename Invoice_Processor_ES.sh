#!/bin/bash

rm ~/Desktop/THN.txt
grep -m 1 'C\.I\.F\.' ~/Desktop/hh.rtf | sed 's/C.I.F.: //g' | sed 's/\\//' >> ~/Desktop/THN.txt
grep -m 1 'No PEDIDO' ~/Desktop/hh.rtf | sed 's/\\cf[0-9] No PEDIDO: //g' | sed 's/\\//' >> ~/Desktop/THN.txt
grep -A 2 -m 3 'IMPORTE' ~/Desktop/hh.rtf | tail -n -3 | head -n 1 | sed 's/\./,/' | sed 's/[^0-9,]//' >> ~/Desktop/THN.txt
grep -m 1 'FORMA DE PAGO' ~/Desktop/hh.rtf | sed 's/\\cf[0-9] FORMA DE PAGO: //g' | sed 's/\\//' >> ~/Desktop/THN.txt
rm ~/Desktop/hh.rtf