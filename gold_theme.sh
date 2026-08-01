#!/data/data/com.termux/files/usr/bin/bash
# Thème doré AFRO RP pour boutons/UI (à lancer depuis la racine du projet)
set -e

C=app/src/main/res/values/colors.xml
T=app/src/main/res/values/themes.xml
D=app/src/main/res/drawable
L=app/src/main/res/layout

# 1) Dégradé principal des boutons (gradient1/gradient2) : rouge/orange -> doré
sed -i 's/<color name="gradient1">#ffce0e03<\/color>/<color name="gradient1">#ffB8860B<\/color>/' "$C"
sed -i 's/<color name="gradient2">#fff75514<\/color>/<color name="gradient2">#ffFFD700<\/color>/' "$C"

# 2) Couleur d'accent globale (checkboxes, switches, etc.)
sed -i 's/<color name="colorAccent">#ffed4319<\/color>/<color name="colorAccent">#ffFFC700<\/color>/' "$C"

# 3) Texte de menu actif (orange -> doré)
sed -i 's/<color name="menuTextEnable">#ffde2a09<\/color>/<color name="menuTextEnable">#ffFFD700<\/color>/' "$C"

# 4) Thème principal : plus de violet par défaut jamais custom, on passe en noir/doré
sed -i 's/<item name="colorPrimary">@color\/purple_500<\/item>/<item name="colorPrimary">@color\/black<\/item>/' "$T"
sed -i 's/<item name="colorPrimaryVariant">@color\/purple_700<\/item>/<item name="colorPrimaryVariant">@color\/black<\/item>/' "$T"
sed -i 's/<item name="colorSecondary">@color\/teal_200<\/item>/<item name="colorSecondary">@color\/color_FFBA08<\/item>/' "$T"
sed -i 's/<item name="colorSecondaryVariant">@color\/teal_700<\/item>/<item name="colorSecondaryVariant">#ffB8860B<\/item>/' "$T"
sed -i 's/<item name="colorOnSecondary">@color\/black<\/item>/<item name="colorOnSecondary">@color\/black<\/item>/' "$T"

# 5) Boutons avec couleurs codées en dur
sed -i 's/#ff6317/#ffD4AF37/g' "$D/button_br_red_unfilled.xml" "$D/button_br_red_unfilled_ss.xml"
sed -i 's/android:startColor="#FF0037" android:endColor="#B5009D"/android:startColor="#ffB8860B" android:endColor="#ffFFD700"/' "$D/ic_buttoncolor.xml"
sed -i 's/#008BF6/#ffB8860B/' "$D/ic_dialog_button_positive.xml"
sed -i 's/#1900FD/#ffFFD700/' "$D/ic_dialog_button_positive.xml"

# 6) Barre de progression du splash (rouge -> doré)
sed -i 's/app:indicatorColor="#FF0037"/app:indicatorColor="#ffFFD700"/' "$L/activity_splash.xml"

echo "Thème doré appliqué."
