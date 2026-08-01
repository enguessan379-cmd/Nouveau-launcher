#!/data/data/com.termux/files/usr/bin/bash
# Traduction des textes en dur dans les layouts (à lancer depuis la racine du projet)
set -e

L=app/src/main/res/layout

sed -i 's/android:text="Loading"/android:text="Chargement"/' "$L/activity_splash.xml"
sed -i 's/android:text="Using original launcher"/android:text="Utilise le launcher original"/' "$L/activity_splash.xml"

sed -i 's/android:text="Updating game data..."/android:text="Mise à jour des données du jeu..."/' "$L/activity_update.xml"

sed -i 's/android:text="Add"/android:text="Ajouter"/' "$L/alertdialog_addserver.xml"

sed -i 's/android:text="Players\/Maxplayers: "/android:text="Joueurs\/Max joueurs: "/' "$L/alertdialog_server.xml"
sed -i 's/android:text="Connect"/android:text="Connexion"/' "$L/alertdialog_server.xml"
sed -i 's/android:text="Delete"/android:text="Supprimer"/' "$L/alertdialog_server.xml"
sed -i 's/android:text="Language: "/android:text="Langue: "/' "$L/alertdialog_server.xml"

sed -i 's/android:text="Scale"/android:text="Échelle"/' "$L/attachedit.xml"
sed -i 's/android:text="EXIT"/android:text="QUITTER"/' "$L/attachedit.xml"
sed -i 's/android:text="SAVE"/android:text="SAUVEGARDER"/' "$L/attachedit.xml"

sed -i 's/android:text="Войти"/android:text="Connexion"/' "$L/dialog.xml"
sed -i 's/android:text="Отмена"/android:text="Annuler"/' "$L/dialog.xml"

sed -i 's/android:text="ADD SERVER"/android:text="AJOUTER UN SERVEUR"/' "$L/fragment_favorite.xml"
sed -i 's/android:text="ADD SERVER"/android:text="AJOUTER UN SERVEUR"/' "$L/fragment_internet.xml"

sed -i 's/android:text="Our community"/android:text="Notre communauté"/' "$L/fragment_home.xml"
sed -i 's/android:text="Our community"/android:text="Notre communauté"/' "$L/fragment_news.xml"

sed -i 's/android:text="Voice chat"/android:text="Chat vocal"/' "$L/fragment_settings.xml"
sed -i 's/android:text="Display FPS"/android:text="Afficher les FPS"/' "$L/fragment_settings.xml"
sed -i 's/android:text="Modified data"/android:text="Données modifiées"/' "$L/fragment_settings.xml"
sed -i 's/android:text="Chat messages"/android:text="Messages du chat"/' "$L/fragment_settings.xml"
sed -i 's/android:text="FPS Limit"/android:text="Limite de FPS"/' "$L/fragment_settings.xml"
sed -i 's/android:text="Settings"/android:text="Paramètres"/' "$L/fragment_settings.xml"
sed -i 's/android:text="Android Keyboard"/android:text="Clavier Android"/' "$L/fragment_settings.xml"

sed -i 's/android:text="Loading\.\.\."/android:text="Chargement..."/' "$L/server_item.xml"
sed -i 's/android:text="Adress: 127.0.0.1"/android:text="Adresse: 127.0.0.1"/' "$L/server_item.xml"
sed -i 's/android:text="Mode: None"/android:text="Mode: Aucun"/' "$L/server_item.xml"

echo "Traduction terminée."
