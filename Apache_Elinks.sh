#!/bin/bash

# Meno autora: Denis Varga
# Dátum vytvorenia: 23.11.2023
# Trieda: IV.C
# Script na nainštalovanie/odinštalovanie Apache a Elinks

# Opýtame sa užívateľa či chce Apache nainštalovať či odinštalovať
read -rp "Chcete nainštalovať alebo odinštalovať Apache a Elinks ? (1 = Inštalovať, 2 = Odinštalovať)" vyber
case $vyber in
    1)
        sudo apt update

        sudo apt upgrade

        # Nainštalujeme Apache
        sudo apt install apache2

        # Nainštalujeme Elinks (webový prehliadač)
        sudo apt install elinks
        ;;
    2)
        read -rp "Chcete odinštalovať aj Elinks alebo iba Apache ? (1 = Aj Elinks, 2 = Iba Apache)" vyber2
        case $vyber2 in
            1)
                # Odinštalujeme Apache
                sudo apt remove apache2

                # Odinštalujeme Elinks
                sudo apt remove elinks
                ;;
            2)
                # Odinštalujeme IBA Apache
                sudo apt remove apache2
                ;;
            *)
                # Urobíme ochranu pred zlým vstupom
                echo "Zlý vstup, musíte zadať buď 1 alebo 2."
                ;;
        esac
        ;;
    *)
        # Urobíme ochranu pred zlým vstupom
        echo "Zlý vstup, musíte zadať buď 1 alebo 2."
        ;;
esac
