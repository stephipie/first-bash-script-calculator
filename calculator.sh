#! /bin/bash
###########################################################################################################################################
#
#
#              TASCHENRECHNER MIT BASH CASE STATEMENT FUNKTION
#
##########################################################################################################################################
#
#Ich setze eine Schleife, damit, wenn gewünscht, mehrere Berechnungen durchgeführt werden können.
while true; do
#Abfrage der Zahlen und auslesen der User Eingabe mit read	
echo "Bitte gebe zwei Zahlen ein."
read zahl1 zahl2
echo "Vielen Dank. Möchtest Du

1  Addieren
2  Subtrahieren
3  Multiplizieren
4  Dividieren?

Treffe Deine Auswahl durch Eingabe der entsprechenden Zahl."

#Der Operator ist die Berechnungsart, die vom User ausgewählt wurde
		
read operator

#Damit ich keine lange if, else Abfrage durchführen muss, arbeite ich mit dem bash case-statement
case $operator in


	1) Ergebnis=$(expr $zahl1 + $zahl2)
	       echo "Ergebnis :  $Ergebnis"
	       ;;

       2) Ergebnis=$(expr $zahl1 - $zahl2)
		echo "Ergebnis : $Ergebnis"
		;;

	3) Ergebnis=$(expr $zahl1 \*  $zahl2)
		echo "Ergebnis : $Ergebnis"
		;;
	4) Ergebnis=$(echo $zahl1 / $zahl2 | bc -l)
		echo "Ergebnis : $Ergebnis"
		;;
	*)
	echo -n "Fehlerhafte Eingabe"	

esac

echo "Für eine weitere Berechnung drücken Sie bitte (j) zum beenden (n)."

read weiter

	if [ "$weiter" != "j" ];

then
	echo "Vielen Dankn. Bis zum nächsten Mal."
	break
fi
done
