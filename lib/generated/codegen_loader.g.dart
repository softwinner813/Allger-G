// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> de_DE = {
  "welcome": "Willkommen!",
  "validEmail": "Bitte geben Sie eine gültige Email-Adresse ein",
  "lengthError": "Stellen Sie sicher, dass {} zwischen {} und {} Zeichen steht",
  "formatError": "Es darf nur A-Za-z0-9 enthalten",
  "error": "Ein Fehler ist aufgetreten. Bitte erneut versuchen!",
  "confirmPassError": "Passwort stimmt nicht überein!",
  "success": "{} Erfolgreich!",
  "helpPage": {
    "title1": "Ingridients auswählen",
    "title2": "Verfolgen Sie Ihre Allergie",
    "title3": "Kontakt aufnehmen",
    "subTitle1": "Kontakt aufnehmenKontakt aufnehmenKontakt aufnehmenKontakt aufnehmen",
    "subTitle2": "Kontakt aufnehmenKontakt aufnehmenKontakt aufnehmenKontakt aufnehmen",
    "subTitle3": "Kontakt aufnehmenKontakt aufnehmenKontakt aufnehmenKontakt aufnehmen",
    "continueBtn": "Fortsetzen",
    "skipBtn": "Überspringen"
  },
  "loginPage": {
    "title": "Anmelden",
    "username": "Benutzername",
    "password": "Passwort",
    "signinBtn": "Eintragen",
    "forgot": "Passwort vergessen? ",
    "loginWith": "oder Anmeldung mit",
    "dontaccount": "Sie haben noch kein Konto? ",
    "signupBtn": "sich einschreiben",
    "wrongUsername": "Falscher Benutzername!",
    "wrongpass": "Falsches Passwort!"
  },
  "signupPage": {
    "title": "sich einschreiben",
    "email": "E-mail",
    "username": "Benutzername",
    "password": "Passwort",
    "RPassword": "Passwort wiederholen",
    "signinBtn": "Anmelden",
    "signupWith": "oder registrieren Sie sich mit E-Mail",
    "alreadyAccount": "Sie haben bereits ein Konto?  ",
    "signupBtn": "sich einschreiben",
    "weakPass": "Das angegebene Passwort ist zu schwach!",
    "existEmail": "Das Konto für diese E-Mail existiert bereits"
  },
  "menu": {
    "homepage": "Startseite",
    "profile": "Profil",
    "EpiPen": "Finden Epi Pen",
    "game": "Spiel"
  },
  "profilePage": {
    "title": "Profil",
    "personal": "Persönliche Daten",
    "allergy": "Informationen zu Allergien",
    "setting": "Einstellungen",
    "logout": "Abmelden"
  },
  "personalPage": {
    "title": "Persönliche Daten",
    "firsname": "Vorname",
    "lastname": "Nachname",
    "phoneNumber": "Telefon Nummer",
    "ePhoneNumber": "Notfall-Telefonnummer",
    "addNumber": "Eine weitere Zahl hinzufügen",
    "contactName": "Kontaktnummer für Notfälle",
    "gender": "Geschlecht",
    "birth": "Geburtsdatum",
    "age": "Alter",
    "address": "Adresse",
    "updateBtn": "Aktualisierung"
  },
  "uploadPhotoPage": {
    "title": "Profilfoto",
    "source": "Wählen Sie ein Foto aus Ihrer Bibliothek aus",
    "or": "oder",
    "takePhoto": "Foto machen",
    "success": "Erfolgreich hochgeladen!"
  },
  "informationPage": {
    "title": "Informationen zu Allergien",
    "type": "Allergie-Typ",
    "peanut": "Erdnuss",
    "soy": "Soja",
    "nuts": "Nüsse",
    "legumes": "Hülsenfrüchte",
    "fruit": "Obst",
    "fish": "Fisch",
    "wheat": "Weizen",
    "milk": "Milch",
    "eggs": "Eier",
    "sesame": "Sesam",
    "height": "Höhe",
    "weight": "Gewicht",
    "epiPen": "Haben Sie einen Epi-Pen?",
    "addAllergy": "Allergietyp hinzufügen"
  },
  "settingPage": {
    "title": "Einstellungen",
    "loginInfo": "Informationen zur Anmeldung",
    "language": "Sprache",
    "notification": "Benachrichtigung",
    "location": "Standort",
    "help": "Hilfe"
  },
  "loginInfoPage": {
    "title": "Informationen zur Anmeldung",
    "username": "Benutzername",
    "email": "E-mail",
    "password": "Passwort",
    "rpassword": "Passwort wiederholen",
    "changePass": "Passwort ändern",
    "incorrectEmail": "Bitte korrekte E-Mail eingeben!",
    "currentPass": "Jetziges Passwort"
  },
  "languagePage": {
    "title": "Sprache ",
    "english": "Englisch",
    "hebrew": "Hebräisch",
    "french": "Französisch",
    "german": "Deutsch",
    "chinese": "Chinesisch",
    "Japanese": "Japanisch",
    "Norway": "Norwegen ",
    "Italy": "Italien ",
    "selectedLang": "Ausgewählte Sprache",
    "selectLang": "Sprache auswählen"
  },
  "locationPage": {
    "title": "Standort",
    "allowLocation": "Zugriff auf Standort zulassen",
    "myLocation": "Ihr Standort"
  },
  "notificationPage": {
    "title": "Benachrichtigung",
    "allowNotification": "Push-Benachrichtigung"
  },
  "contactsPage": {
    "title": "Kontaktliste",
    "maxerror": "Sie können nicht mehr als {} Kontaktnummern hinzufügen",
    "nonumber": "Keine verfügbare Telefonnummer"
  }
};
static const Map<String,dynamic> en_US = {
  "welcome": "Welcome!",
  "validEmail": "Please enter a valid Email",
  "lengthError": "Make sure {} between {} and {} characters",
  "formatError": "It must contains only A-Za-z0-9",
  "error": "Some error occured. Please retry!",
  "confirmPassError": "Password doesn't match!",
  "success": "{} Successfully!",
  "helpPage": {
    "title1": "Choose Ingridients",
    "title2": "Track Your Allergy",
    "title3": "Get in Touch",
    "subTitle1": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "subTitle2": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "subTitle3": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "continueBtn": "Continue",
    "skipBtn": "Skip"
  },
  "loginPage": {
    "title": "Log In",
    "username": "Username",
    "password": "Password",
    "signinBtn": "Sign In",
    "forgot": "Forgot Password?",
    "loginWith": "or login with",
    "dontaccount": "Don’t have an account? ",
    "signupBtn": "Sign Up",
    "wrongUsername": "Wrong username!",
    "wrongpass": "Wrong password!"
  },
  "signupPage": {
    "title": "Sign Up",
    "email": "E-mail",
    "username": "Username",
    "password": "Password",
    "RPassword": "Repeat Password",
    "signinBtn": "Sign In",
    "signupWith": "or register with e-mail",
    "alreadyAccount": "Already have an account? ",
    "signupBtn": "Sign Up",
    "weakPass": "The password provided is too weak!",
    "existEmail": "The account already exists for that email"
  },
  "menu": {
    "homepage": "Home page",
    "profile": "Profile",
    "EpiPen": "Find Epi Pen",
    "game": "Game"
  },
  "profilePage": {
    "title": "Profile",
    "personal": "Personal Data",
    "allergy": "Allergy Information",
    "setting": "Settings",
    "logout": "Log Out"
  },
  "personalPage": {
    "title": "Personal Data",
    "firsname": "First Name",
    "lastname": "Last Name",
    "phoneNumber": "Phone Number",
    "ePhoneNumber": "Emergency Phone Number",
    "addNumber": "Add another number",
    "contactName": "Emergency contact",
    "gender": "Gender*",
    "birth": "Date of Birth",
    "age": "Age",
    "address": "Address",
    "updateBtn": "Update"
  },
  "uploadPhotoPage": {
    "title": "Profile Photo",
    "source": "Select photo from your library",
    "or": "or",
    "takePhoto": "Take Photo",
    "success": "Uploaded Successfully!"
  },
  "informationPage": {
    "title": "Alergy Informations",
    "type": "Alergy Type",
    "peanut": "Peanut",
    "soy": "Soy",
    "nuts": "Nuts",
    "legumes": "Legumes",
    "fruit": "Fruit",
    "fish": "Fish",
    "wheat": "Wheat",
    "milk": "Milk",
    "eggs": "Eggs",
    "sesame": "Sesame",
    "height": "Height",
    "weight": "Weight",
    "epiPen": "Do you have an Epi Pen?",
    "addAllergy": "Add Allergy Type"
  },
  "settingPage": {
    "title": "Settings",
    "loginInfo": "Login Information",
    "language": "Language",
    "notification": "Notification",
    "location": "Location",
    "help": "Help"
  },
  "loginInfoPage": {
    "title": "Login Information",
    "username": "Username",
    "email": "E-mail",
    "password": "Password",
    "rpassword": "Repeat Password",
    "changePass": "Change Password",
    "incorrectEmail": "Please enter correct email!",
    "currentPass": "Current Password"
  },
  "languagePage": {
    "title": "Language ",
    "english": "English",
    "hebrew": "Hebrew",
    "french": "French",
    "german": "German",
    "chinese": "Chinese",
    "Japanese": "Japanese",
    "Norway": "Norway",
    "Italy": "Italy",
    "selectedLang": "Selected Language",
    "selectLang": "Select Language"
  },
  "locationPage": {
    "title": "Location",
    "allowLocation": "Allow Access to Location",
    "myLocation": "Your Location"
  },
  "notificationPage": {
    "title": "Notification",
    "allowNotification": "Push Notification"
  },
  "contactsPage": {
    "title": "Contact List",
    "maxerror": "You can't add contact number more than {}",
    "nonumber": "No available phone number"
  }
};
static const Map<String,dynamic> fr_FR = {
  "welcome": "Bienvenue!",
  "validEmail": "Veuillez saisir un e-mail valide",
  "lengthError": "Assurez-vous que {} est compris entre {} et {} caractères",
  "formatError": "Il doit contenir uniquement A-Za-z0-9",
  "error": "Une erreur s'est produite. Veuillez réessayer !",
  "confirmPassError": "Password doesn't match!",
  "success": "{} Succesfully!",
  "helpPage": {
    "title1": "Choisir les ingrédients",
    "title2": "Suivez votre allergie",
    "title3": "Prendre contact",
    "subTitle1": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "subTitle2": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "subTitle3": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "continueBtn": "Continuer",
    "skipBtn": "Ignorer"
  },
  "loginPage": {
    "title": "Connexion",
    "username": "Nom d'utilisateur",
    "password": "Mot de passe",
    "signinBtn": "Connexion",
    "forgot": "Mot de passe oublié ?",
    "loginWith": "ou connectez-vous avec",
    "dontaccount": "Vous n'avez pas de compte? ",
    "signupBtn": "S'inscrire",
    "wrongUsername": "Mauvais nom d'utilisateur!",
    "wrongpass": "Mot de passe erroné!"
  },
  "signupPage": {
    "title": "S'inscrire",
    "email": "E-mail",
    "username": "Nom d'utilisateur",
    "password": "Mot de passe",
    "RPassword": "Répéter le mot de passe",
    "signinBtn": "Connexion",
    "signupWith": "ou inscrivez-vous avec e-mail",
    "alreadyAccount": "Vous avez déjà un compte ? ",
    "signupBtn": "S'inscrire",
    "weakPass": "The password provided is too weak!",
    "existEmail": "The account already exists for that email"
  },
  "menu": {
    "homepage": "Page d'accueil",
    "profile": "Profil",
    "EpiPen": "Rechercher Epi Pen",
    "game": "Jeu"
  },
  "profilePage": {
    "title": "Profil",
    "personal": "Données personnelles",
    "allergy": "Informations sur les allergies",
    "setting": "Paramètres",
    "logout": "Déconnexion"
  },
  "personalPage": {
    "title": "Personal Data",
    "title1": "Save Changes",
    "firsname": "Votre prénom",
    "lastname": "Votre nom de famille",
    "phoneNumber": "Numéro de téléphone",
    "ePhoneNumber": "Numéro de téléphone d'urgence",
    "addNumber": "Ajouter un autre numéro",
    "contactName": "Nom du contact",
    "gender": "Sexe",
    "birth": "Date de naissance",
    "age": "Âge",
    "address": "adresse",
    "updateBtn": "Mettre à jour"
  },
  "uploadPhotoPage": {
    "title": "Photo de profil",
    "source": "Sélectionner une photo dans votre bibliothèque",
    "or": "ou",
    "takePhoto": "Prendre une photo",
    "success": "Uploaded Successfully!"
  },
  "informationPage": {
    "title": "Login Informations",
    "type": "Type d'allergie",
    "peanut": "cacahuète",
    "soy": "soja",
    "nuts": "Noix",
    "legumes": "légumineuses",
    "fruit": "Fruits",
    "fish": "Poisson",
    "wheat": "Blé",
    "milk": "Lait",
    "eggs": "Oeufs",
    "sesame": "Sésame",
    "height": "Hauteur",
    "weight": "Poids",
    "epiPen": "Avez-vous un Epi Pen?",
    "addAllergy": "Add Allergy Type"
  },
  "settingPage": {
    "title": "Paramètres",
    "loginInfo": "Informations de connexion",
    "language": "Langue",
    "notification": "Notification",
    "location": "Emplacement",
    "help": "aider"
  },
  "loginInfoPage": {
    "title": "Login Information",
    "username": "Nom d'utilisateur",
    "email": "E-mail",
    "password": "Mot de passe",
    "rpassword": "Répéter le mot de passe",
    "changePass": "Modifier le mot de passe",
    "incorrectEmail": "Please enter correct email!",
    "currentPass": "Current Paasword"
  },
  "languagePage": {
    "title": "Langue",
    "english": "Anglais",
    "hebrew": "Hébreu",
    "french": "Français",
    "german": "Allemand",
    "chinese": "Chinois",
    "japanese": "Japonais",
    "norway": "Norvègien",
    "italy": "Italien",
    "selectedLang": "Langue sélectionnée",
    "selectLang": "Sélectionner la langue"
  },
  "locationPage": {
    "title": "Localisation",
    "allowLocation": "Autoriser l'accès à la localisation",
    "myLocation": "Votre localisation"
  },
  "notificationPage": {
    "title": "Notification",
    "allowNotification": "Notification push"
  },
  "contactsPage": {
    "title": "Liste de contacts",
    "maxerror": "Vous ne pouvez pas ajouter de numéro de contact supérieur à {}",
    "nonumber": "Aucun numéro de téléphone disponible"
  }
};
static const Map<String,dynamic> he_IL = {
  "welcome": "ברוך הבא!",
  "validEmail": "בחר מרכיבים",
  "lengthError": "",
  "formatError": "",
  "error": "",
  "confirmPassError": "إضغط هنا!",
  "success": "{} إضغط هنا!",
  "helpPage": {
    "title1": "בחר מרכיבים",
    "title2": "עקוב אחר האלרגיה שלך",
    "title3": "היה בקשר",
    "subTitle1": "בחר מרכיביםבחר מרכיביםבחר מרכיביםבחר מרכיבים",
    "subTitle2": "בחר מרכיביםבחר מרכיביםבחר מרכיביםבחר מרכיבים",
    "subTitle3": "בחר מרכיביםבחר מרכיביםבחר מרכיביםבחר מרכיבים",
    "continueBtn": "המשך",
    "skipBtn": "דלג"
  },
  "loginPage": {
    "title": "התחברות",
    "username": "שם משתמש",
    "password": "סיסמה",
    "signinBtn": "התחבר",
    "forgot": "שכחת את הסיסמא?",
    "loginWith": "או התחבר עם",
    "dontaccount": "אין לך חשבון? הירשם",
    "signupBtn": "הירשם",
    "wrongUsername": "שם המשתמש שגוי!",
    "wrongpass": "הסיסמה שגויה!"
  },
  "signupPage": {
    "title": "הירשם",
    "email": "אימייל",
    "username": "שם משתמש",
    "password": "סיסמה",
    "RPassword": "חזור על הסיסמה",
    "signinBtn": "הירשם",
    "signupWith": "או להירשם באמצעות דואר אלקטרוני",
    "alreadyAccount": "כבר יש לך חשבון? התחברות",
    "signupBtn": "הירשם",
    "weakPass": "הסיסמה שסופקה חלשה מדי!",
    "existEmail": "החשבון כבר קיים עבור האימייל הזה!"
  },
  "menu": {
    "homepage": "בית",
    "profile": "פּרוֹפִיל",
    "EpiPen": "אפיפן",
    "game": "מִשְׂחָק"
  },
  "profilePage": {
    "title": "פּרוֹפִיל",
    "personal": "מידע אישי",
    "allergy": "מידע על האלרגיה",
    "setting": "הגדרות",
    "logout": "להתנתק"
  },
  "personalPage": {
    "title": "מידע אישי",
    "firsname": "שם פרטי",
    "lastname": "שם משפחה",
    "phoneNumber": "מספר טלפון",
    "ePhoneNumber": "מספר טלפון לשעת חירום",
    "addNumber": "הוסף מספר נוסף",
    "contactName": "איש קשר  לשעת חירום",
    "gender": "מִין",
    "birth": "תאריך לידה",
    "age": "גיל",
    "address": "כתובת",
    "updateBtn": "עדכון"
  },
  "uploadPhotoPage": {
    "title": "תמונת פרופיל",
    "source": "בחר תמונה מהספרייה שלך",
    "or": "אוֹ",
    "takePhoto": "לצלם",
    "success": "הועלה בהצלחה!"
  },
  "informationPage": {
    "title": "מידע על אלרגיה",
    "type": "סוג אלרגיה",
    "peanut": "סויה",
    "soy": "אגוזי",
    "nuts": "בוטנים",
    "legumes": "פירות",
    "fruit": "קטניות",
    "fish": "דגים",
    "wheat": "חיטה",
    "milk": "חלב",
    "eggs": "ביצים",
    "sesame": "שׂוּמשׂוּם",
    "height": "גובה",
    "weight": "מִשׁקָל",
    "epiPen": "יש לך אפיפן?",
    "addAllergy": "הוסף סוג אלרגיה"
  },
  "settingPage": {
    "title": "הגדרות",
    "loginInfo": "פרטי התחברות",
    "language": "שפה",
    "notification": "הוֹדָעָה",
    "location": "מקום",
    "help": "עֶזרָה"
  },
  "loginInfoPage": {
    "title": "פרטי התחברות",
    "username": "שם משתמש",
    "email": "אימייל",
    "password": "סיסמה",
    "rpassword": "חזור על הסיסמה",
    "changePass": "שנה סיסמא",
    "incorrectEmail": "נא להזין מייל נכון!",
    "currentPass": "סיסמה נוכחית"
  },
  "languagePage": {
    "title": "שפה",
    "english": "אנגלית",
    "hebrew": "עִברִית",
    "french": "צָרְפָתִית",
    "german": "גֶרמָנִיָת",
    "chinese": "סינית",
    "japanese": "יפנית",
    "norway": "נורווגית",
    "italy": "איטלקית",
    "selectedLang": "שפה נבחרת",
    "selectLang": "בחר שפה"
  },
  "locationPage": {
    "title": "מיקום",
    "allowLocation": "אפשר גישה למיקום",
    "myLocation": "המיקום שלך"
  },
  "notificationPage": {
    "title": "הוֹדָעָה",
    "allowNotification": "הודעת דחיפה"
  },
  "contactsPage": {
    "title": "רשימת אנשי קשר",
    "maxerror": "אינך יכול להוסיף מספר איש קשר יותר מ-{}",
    "nonumber": "אין מספר טלפון זמין"
  }
};
static const Map<String,dynamic> it_IT = {
  "welcome": "Benvenuto!",
  "validEmail": "Inserisci una email valida",
  "lengthError": "Assicurati che {} tra {} e {} caratteri",
  "formatError": "Deve contenere solo A-Za-z0-9",
  "error": "Si è verificato un errore. Riprova!",
  "confirmPassError": "La password non corrisponde!",
  "success": "{} Con successo!",
  "helpPage": {
    "title1": "Scegli gli ingredienti",
    "title2": "Monitora la tua allergia",
    "title3": "Restiamo in contatto",
    "subTitle1": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "subTitle2": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "subTitle3": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "continueBtn": "Continua",
    "skipBtn": "Salta"
  },
  "loginPage": {
    "title": "Accedi",
    "username": "Username",
    "password": "Password",
    "signinBtn": "Registrati",
    "forgot": "Password dimenticata?",
    "loginWith": "o accedi con",
    "dontaccount": "Non hai un account? ",
    "signupBtn": "Iscriviti",
    "wrongUsername": "Username sbagliato!",
    "wrongpass": "Password errata!"
  },
  "signupPage": {
    "title": "Iscriviti",
    "email": "E-mail",
    "username": "Username",
    "password": "Password",
    "RPassword": "Ripeti Password",
    "signinBtn": "Registrati",
    "signupWith": "o registrati con l'e-mail",
    "alreadyAccount": "Hai gia un account? ",
    "signupBtn": "Iscriviti",
    "weakPass": "La password fornita è troppo debole!",
    "existEmail": "L'account esiste già per quell'e-mail"
  },
  "menu": {
    "homepage": "Pagina iniziale",
    "profile": "Profilo",
    "EpiPen": "Trovare Epi Pen",
    "game": "Gioco"
  },
  "profilePage": {
    "title": "Profilo",
    "personal": "Dati personali",
    "allergy": "Indicazione sugli allergeni",
    "setting": "Impostazioni",
    "logout": "Esci"
  },
  "personalPage": {
    "title": "Dati personali",
    "firsname": "Nome",
    "lastname": "Cognome",
    "phoneNumber": "Numero di telefono",
    "ePhoneNumber": "Numero di telefono d'emergenza",
    "addNumber": "Aggiungi un altro numero",
    "contactName": "Numero contatto d'emergenza",
    "gender": "Genere",
    "birth": "Data di nascita",
    "age": "Età",
    "address": "Indirizzo",
    "updateBtn": "Aggiorna"
  },
  "uploadPhotoPage": {
    "title": "Profile Photo",
    "source": "Select photo from your library",
    "or": "or",
    "takePhoto": "Take Photo",
    "success": "Uploaded Successfully!"
  },
  "informationPage": {
    "title": "Indicazione sugli allergeni",
    "type": "Tipo di allergia",
    "peanut": "Arachidi",
    "soy": "Soia",
    "nuts": "Noccioline",
    "legumes": "Legumi",
    "fruit": "Frutta",
    "fish": "Pesce",
    "wheat": "Grano",
    "milk": "Latte",
    "eggs": "Uova",
    "sesame": "Sesamo",
    "height": "Altezza",
    "weight": "Peso",
    "epiPen": "Possiedi una EpiPen?",
    "addAllergy": "Aggiungi tipo di allergia"
  },
  "settingPage": {
    "title": "Impostazioni",
    "loginInfo": "Informazioni di accesso",
    "language": "Lingua",
    "notification": "Notifica",
    "location": "Posizione",
    "help": "Aiuto"
  },
  "loginInfoPage": {
    "title": "Informazioni di accesso",
    "username": "Username",
    "email": "E-mail",
    "password": "Password",
    "rpassword": "Ripeti password",
    "changePass": "Cambia password",
    "incorrectEmail": "Si prega di inserire l'e-mail corretta!",
    "currentPass": "password attuale"
  },
  "languagePage": {
    "title": "Lingua ",
    "english": "Inglese",
    "hebrew": "Ebraico",
    "french": "Francese",
    "german": "Tedesco",
    "chinese": "Cinese",
    "Japanese": "Giapponese",
    "Norway": "Norvegia",
    "Italy": "Italia",
    "selectedLang": "Lingua selezionata",
    "selectLang": "Seleziona la lingua"
  },
  "locationPage": {
    "title": "Posizione",
    "allowLocation": "Permetti accesso alla posizione",
    "myLocation": "La tua posizione"
  },
  "notificationPage": {
    "title": "Notifica",
    "allowNotification": "Notifica push"
  },
  "contactsPage": {
    "title": "Lista dei contatti",
    "maxerror": "Non puoi aggiungere un numero di contatto superiore a {}",
    "nonumber": "Nessun numero di telefono disponibile"
  }
};
static const Map<String,dynamic> ja_JP = {
  "welcome": "ようこそ！",
  "validEmail": "正しいメールアドレスを入力してください",
  "lengthError": "{}文字と{}文字の間に{}があることを確認してください",
  "formatError": "A-Za-z0-9のみが含まれている必要があります",
  "error": "エラーが発生しました。 再試行してください！",
  "confirmPassError": "パスワードが一致しません！",
  "success": "{}成功しました！",
  "helpPage": {
    "title1": "材料を選んでください",
    "title2": "アレルギーを記録する",
    "title3": "連絡する",
    "subTitle1": "連絡する連絡する連絡する連絡する連絡する連絡する連絡する連絡する連絡する連絡する連絡する",
    "subTitle2": "連絡する連絡する連絡する連絡する連絡する連絡する連絡する連絡する連絡する連絡する連絡する",
    "subTitle3": "連絡する連絡する連絡する連絡する連絡する連絡する連絡する連絡する連絡する連絡する連絡する",
    "continueBtn": "続ける",
    "skipBtn": "スキップする"
  },
  "loginPage": {
    "title": "ログイン",
    "username": "ユーザーネーム",
    "password": "パスワード",
    "signinBtn": "サインイン",
    "forgot": "パスワードをお忘れですか？",
    "loginWith": "又は〜でログインする",
    "dontaccount": "アカウントをお持ちではありませんか？ ",
    "signupBtn": "サインアップ",
    "wrongUsername": "間違ったユーザー名！",
    "wrongpass": "間違ったパスワード！"
  },
  "signupPage": {
    "title": "サインアップ",
    "email": "メールアドレス",
    "username": "ユーザーネーム",
    "password": "パスワード",
    "RPassword": "パスワードを再度入力",
    "signinBtn": "サインイン",
    "signupWith": "又はメールアドレスで登録する",
    "alreadyAccount": "既にアカウントをお持ちですか? ",
    "signupBtn": "サインアップ",
    "weakPass": "提供されたパスワードが弱すぎます！",
    "existEmail": "そのメールのアカウントはすでに存在します"
  },
  "menu": {
    "homepage": "ホームページ",
    "profile": "プロフィール",
    "EpiPen": "探す Epi Pen",
    "game": "ゲーム"
  },
  "profilePage": {
    "title": "プロフィール",
    "personal": "個人情報",
    "allergy": "アレルギーに関する情報",
    "setting": "設定",
    "logout": "ログアウト"
  },
  "personalPage": {
    "title": "個人情報",
    "firsname": "名前",
    "lastname": "苗字",
    "phoneNumber": "電話番号",
    "ePhoneNumber": "緊急連絡先電話番号",
    "addNumber": "電話番号を追加する",
    "contactName": "緊急連絡先",
    "gender": "性別*",
    "birth": "生年月日",
    "age": "年齢",
    "address": "住所",
    "updateBtn": "アップデート"
  },
  "uploadPhotoPage": {
    "title": "プロフィール写真",
    "source": "ライブラリから写真を選択します",
    "or": "また",
    "takePhoto": "写真を撮る",
    "success": "正常にアップロードされました！"
  },
  "informationPage": {
    "title": "アレルギーに関する情報",
    "type": "アレルギータイプ",
    "peanut": "ピーナッツ",
    "soy": "大豆",
    "nuts": "ナッツ",
    "legumes": "マメ科植物",
    "fruit": "フルーツ",
    "fish": "魚",
    "wheat": "小麦",
    "milk": "ミルク",
    "eggs": "卵",
    "sesame": "ごま",
    "height": "身長",
    "weight": "体重",
    "epiPen": "あなたはエピペンをお持ちですか？",
    "addAllergy": "アレルギータイプを追加します"
  },
  "settingPage": {
    "title": "設定",
    "loginInfo": "ログイン情報",
    "language": "言語",
    "notification": "通知",
    "location": "位置情報",
    "help": "ヘルプ"
  },
  "loginInfoPage": {
    "title": "ログイン情報",
    "username": "ユーザーネーム",
    "email": "メールアドレス",
    "password": "パスワード",
    "rpassword": "パスワードを繰り返す",
    "changePass": "パスワードを変更する",
    "incorrectEmail": "正しいメールアドレスを入力してください！",
    "currentPass": "現在のパスワード"
  },
  "languagePage": {
    "title": "言語 ",
    "english": "英語",
    "hebrew": "ヘブライ語",
    "french": "フランス語",
    "german": "ドイツ語",
    "chinese": "中国語",
    "Japanese": "日本語",
    "Norway": "ノルウェー語",
    "Italy": "イタリア語",
    "selectedLang": "選択した言語",
    "selectLang": "言語を選択する"
  },
  "locationPage": {
    "title": "位置情報",
    "allowLocation": "位置情報を許可する",
    "myLocation": "あなたの位置情報"
  },
  "notificationPage": {
    "title": "通知",
    "allowNotification": "プッシュ通知"
  },
  "contactsPage": {
    "title": "連絡先リスト",
    "maxerror": "{}を超える連絡先番号を追加することはできません",
    "nonumber": "利用可能な電話番号がありません"
  }
};
static const Map<String,dynamic> no_NO = {
  "welcome": "Velkommen!",
  "validEmail": "Vennligst skriv inn en gyldig e-postadresse",
  "lengthError": "Sørg for at {} mellom {} og {} tegn",
  "formatError": "Den må bare inneholde A-Za-z0-9",
  "error": "Det oppstod en feil. Vennligst prøv på nytt!",
  "confirmPassError": "Passord stemmer ikke!",
  "success": "{} Vellykket!",
  "helpPage": {
    "title1": "Velg ingredienser",
    "title2": "Spor allergien din",
    "title3": "Ta kontakt",
    "subTitle1": "Ta kontaktTa kontaktTa kontaktTa kontaktTa kontaktTa kontaktTa kontaktTa kontaktTa kontakt",
    "subTitle2": "Ta kontaktTa kontaktTa kontaktTa kontaktTa kontaktTa kontaktTa kontaktTa kontaktTa kontakt",
    "subTitle3": "Ta kontaktTa kontaktTa kontaktTa kontaktTa kontaktTa kontaktTa kontaktTa kontaktTa kontakt",
    "continueBtn": "Fortsette",
    "skipBtn": "Hopp over"
  },
  "loginPage": {
    "title": "Logg Inn",
    "username": "Brukernavn",
    "password": "Passord",
    "signinBtn": "Logg inn",
    "forgot": "Glemt passord?",
    "loginWith": "eller logg inn med",
    "dontaccount": "Har du ikke en konto?  ",
    "signupBtn": "Melde deg på",
    "wrongUsername": "Feil brukernavn!",
    "wrongpass": "Feil passord!"
  },
  "signupPage": {
    "title": "Melde deg på",
    "email": "E-post",
    "username": "Brukernavn",
    "password": "Passord",
    "RPassword": "Gjenta passord",
    "signinBtn": "Logg Inn",
    "signupWith": "eller meld deg på med e-post",
    "alreadyAccount": "Har du allerede en konto?  ",
    "signupBtn": "Melde deg på",
    "weakPass": "Passordet som er oppgitt er for svakt!",
    "existEmail": "Kontoen eksisterer allerede for den e-posten"
  },
  "menu": {
    "homepage": "Hjemmeside",
    "profile": "Profil",
    "EpiPen": "Finne Epi Pen",
    "game": "Spill"
  },
  "profilePage": {
    "title": "Profil",
    "personal": "Personlig informasjon",
    "allergy": "Allergiinformasjon",
    "setting": "Innstillinger",
    "logout": "Logg ut"
  },
  "personalPage": {
    "title": "Personlig informasjon",
    "firsname": "Fornavn",
    "lastname": "Etternavn",
    "phoneNumber": "Telefonnummer",
    "ePhoneNumber": "Nødtelefonnummer",
    "addNumber": "Legg til et annet nummer",
    "contactName": "Nødkontaktnummer",
    "gender": "Kjønn*",
    "birth": "Fødselsdato",
    "age": "Alder",
    "address": "Adresse",
    "updateBtn": "Oppdater"
  },
  "uploadPhotoPage": {
    "title": "Profilbilde",
    "source": "Velg bilde fra biblioteket ditt",
    "or": "eller",
    "takePhoto": "Ta bilde",
    "success": "Opplastet vellykket!"
  },
  "informationPage": {
    "title": "Allergiinformasjon",
    "type": "Allergitype",
    "peanut": "Peanøtt",
    "soy": "soya",
    "nuts": "nøtter",
    "legumes": "Belgfrukter",
    "fruit": "Frukt",
    "fish": "Fisk",
    "wheat": "Hvete",
    "milk": "melk",
    "eggs": "egg",
    "sesame": "Sesam",
    "height": "Høyde",
    "weight": "Vekt",
    "epiPen": "Har du en Epi Pen?",
    "addAllergy": "Legg til allergitype"
  },
  "settingPage": {
    "title": "Innstillinger",
    "loginInfo": "login informasjon",
    "language": "Språk",
    "notification": "Melding",
    "location": "plassering",
    "help": "Hjelp"
  },
  "loginInfoPage": {
    "title": "login informasjon",
    "username": "Brukernavn",
    "email": "E-post",
    "password": "Passord",
    "rpassword": "Gjenta passord",
    "changePass": "Bytt passord",
    "incorrectEmail": "Vennligst skriv inn riktig e-post!",
    "currentPass": "Nåværende passord"
  },
  "languagePage": {
    "title": "Språk ",
    "english": "Engelsk",
    "hebrew": "Hebraisk",
    "french": "fransk",
    "german": "tysk",
    "chinese": "kinesisk",
    "Japanese": "japansk",
    "Norway": "Norge",
    "Italy": "Italia",
    "selectedLang": "Valgt språk",
    "selectLang": "Velg språk"
  },
  "locationPage": {
    "title": "plassering",
    "allowLocation": "Tillat tilgang til plassering",
    "myLocation": "Posisjonen din"
  },
  "notificationPage": {
    "title": "Melding",
    "allowNotification": "Push-varsling"
  },
  "contactsPage": {
    "title": "Kontaktliste",
    "maxerror": "Du kan ikke legge til kontaktnummer mer enn {}",
    "nonumber": "Ingen tilgjengelig telefonnummer"
  }
};
static const Map<String,dynamic> zh_CN = {
  "welcome": "欢迎您!",
  "validEmail": "請輸入有效電子郵件",
  "lengthError": "確保 {} 在 {} 和 {} 字符之間",
  "formatError": "它必須只包含 A-Za-z0-9",
  "error": "發生了一些錯誤. 請重試！",
  "confirmPassError": "密碼不匹配！",
  "success": "{} 成功地！",
  "helpPage": {
    "title1": "选择要素",
    "title2": "追踪你的过敏反应",
    "title3": "取得联系",
    "subTitle1": "取得联系取得联系取得联系取得联系取得联系取得联系取得联系",
    "subTitle2": "取得联系取得联系取得联系取得联系取得联系取得联系取得联系",
    "subTitle3": "取得联系取得联系取得联系取得联系取得联系取得联系取得联系",
    "continueBtn": "继续",
    "skipBtn": "跳过"
  },
  "loginPage": {
    "title": "登录",
    "username": "用户名",
    "password": "密码",
    "signinBtn": "注册",
    "forgot": "忘记密码？",
    "loginWith": "用…登录",
    "dontaccount": "没有账户？ ",
    "signupBtn": "注册",
    "wrongUsername": "錯誤的用戶名！",
    "wrongpass": "密碼錯誤！"
  },
  "signupPage": {
    "title": "注册",
    "email": "E-mail",
    "username": "用户名",
    "password": "密码",
    "RPassword": "重复密码",
    "signinBtn": "注册",
    "signupWith": "用邮箱注册",
    "alreadyAccount": "已有账号？ ",
    "signupBtn": "注册",
    "weakPass": "提供的密碼太弱了！",
    "existEmail": "該電子郵件的帳戶已存在"
  },
  "menu": {
    "homepage": "主頁",
    "profile": "輪廓",
    "EpiPen": "尋找 Epi Pen",
    "game": "遊戲"
  },
  "profilePage": {
    "title": "概述",
    "personal": "个人信息",
    "allergy": "过敏信息",
    "setting": "设置",
    "logout": "注销"
  },
  "personalPage": {
    "title": "个人信息",
    "firsname": "名",
    "lastname": "姓",
    "phoneNumber": "电话号码",
    "ePhoneNumber": "紧急电话号码",
    "addNumber": "紧急联系号码",
    "contactName": "紧急联系号码",
    "gender": "性别",
    "birth": "生日",
    "age": "年龄",
    "address": "地址",
    "updateBtn": "更新"
  },
  "uploadPhotoPage": {
    "title": "頭像照片",
    "source": "從您的照片庫中選擇照片",
    "or": "或者",
    "takePhoto": "拍照",
    "success": "上傳成功！"
  },
  "informationPage": {
    "title": "过敏信息",
    "type": "过敏种类",
    "peanut": "花生",
    "soy": "大豆",
    "nuts": "坚果",
    "legumes": "蔬菜",
    "fruit": "水果",
    "fish": "鱼类",
    "wheat": "小麦",
    "milk": "牛奶",
    "eggs": "鸡蛋",
    "sesame": "芝麻",
    "height": "身高",
    "weight": "体重",
    "epiPen": "你有一支肾上腺素注射器吗?",
    "addAllergy": "添加過敏類型"
  },
  "settingPage": {
    "title": "设置",
    "loginInfo": "注册信息",
    "language": "注册信息",
    "notification": "通知",
    "location": "地點",
    "help": "帮助"
  },
  "loginInfoPage": {
    "title": "注册信息",
    "username": "用户名",
    "email": "邮箱",
    "password": "密码",
    "rpassword": "重复密码",
    "changePass": "更换密码",
    "incorrectEmail": "請輸入正確的郵箱！",
    "currentPass": "當前密碼"
  },
  "languagePage": {
    "title": "语言 ",
    "english": "英语",
    "hebrew": "希伯来语",
    "french": "法语",
    "german": "德语",
    "chinese": "中文",
    "Japanese": "日语",
    "Norway": "挪威",
    "Italy": "意大利",
    "selectedLang": "選擇的語言",
    "selectLang": "選擇語言"
  },
  "locationPage": {
    "title": "地址",
    "allowLocation": "允许访问地址",
    "myLocation": "您的地址"
  },
  "notificationPage": {
    "title": "通知",
    "allowNotification": "推送通知"
  },
  "contactsPage": {
    "title": "聯繫人列表",
    "maxerror": "您添加的聯繫人號碼不能超過 {}",
    "nonumber": "沒有可用的電話號碼"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"de_DE": de_DE, "en_US": en_US, "fr_FR": fr_FR, "he_IL": he_IL, "it_IT": it_IT, "ja_JP": ja_JP, "no_NO": no_NO, "zh_CN": zh_CN};
}
