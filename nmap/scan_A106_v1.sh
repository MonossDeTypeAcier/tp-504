#!/bin/bash

# Nom du fichier de sortie
OUTPUT_FILE="scan_result_1.csv"

# Nettoyer le fichier de sortie ou le créer
echo "# IP;Ports ouverts" > $OUTPUT_FILE

# Effectuer un scan réseau avec nmap
nmap -oG - 172.16.0.0/24 | grep "open" | awk '/Host:/{ip=$2; open_ports+=gsub(/open/, ""); print ip";"open_ports; open_ports=0}' >> $OUTPUT_FILE

echo "Scan terminé"
