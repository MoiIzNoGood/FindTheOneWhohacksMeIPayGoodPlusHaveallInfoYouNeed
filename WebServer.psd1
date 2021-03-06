# Localized	09/15/2018 11:29 AM (GMT)	303:6.40.10614 	WebServer.psd1
# Localized	11/10/2008 10:09 AM (GMT)	303:4.80.0411 	WebServer_Model.psd1
# Localized	11/04/2008 10:15 AM (GMT)	303:4.80.0411 	WebServer_Model.psd1
# https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/Developing_WebExtensions_for_Firefox_for_Android#Set_up_your_computer_and_Android_emulator_or_device
# Only add new (name,value) pairs to the end of this table
# Do not remove, insert or re-arrange entries
#

ConvertFrom-StringData @'
       
###PSLOC start localizing
    #
	# Execute/Script and Write for handler
	#
ExecuteWritePermissionsCheck_Title=Bevilja en hanterare kör/skript- eller skrivbehörighet, men inte båda delarna
ExecuteWritePermissionsCheck_Problem=Attributet accessPolicy i hanteraravsnittet under sökvägen {0} är inställt på att tillåta både kör/skript- och skrivbehörighet.
ExecuteWritePermissionsCheck_Impact=Om både kör/skript- och skrivbehörighet tillåts, kan en hanterare köra skadlig kod på målservern.
ExecuteWritePermissionsCheck_Resolution=Avgör om hanteraren kräver både kör/skript- och skrivbehörighet och dra sedan in den behörighet som inte är nödvändig.
ExecuteWritePermissionsCheck_Compliant=Enligt IIS Best Practices Analyzer-genomsökningen uppfylls rekommendationerna.
	
	#
	# Expired Certificates
	#
ExpiredCertificatesCheck_Title=Kontrollera att certifikaten är aktuella
ExpiredCertificatesCheck_Problem=SSL-bindningen {0}:{1}: har ett certifikat som upphört att gälla eller kommer att upphöra att gälla inom 30 dagar. Certifikatet har stämpeln {2} och finns i arkivet {3}.
ExpiredCertificatesCheck_Impact=Ett certifikat som gått ut blir ogiltigt och kan förhindra användare från att komma åt webbplatsen.
ExpiredCertificatesCheck_Resolution=Förnya certifikatet eller välj ett nytt certifikat för webbplatsen.
ExpiredCertificatesCheck_Compliant=Enligt IIS Best Practices Analyzer-genomsökningen uppfylls rekommendationerna.
	
	#
	# notListedIsapisAllowed should not be true
	#
NotListedISAPIsAllowedCheck_Title=Konfigurationsattributet notListedIsapisAllowed ska vara falskt
NotListedISAPIsAllowedCheck_Problem=Konfigurationsattributet notListedIsapisAllowed i avsnittet system.webServer/security/isapiCgiRestriction har värdet sant.
NotListedISAPIsAllowedCheck_Impact=Tillåter att ISAPI-tillägg som inte finns i listan, inklusive eventuellt skadliga tillägg, körs.
NotListedISAPIsAllowedCheck_Resolution=Anger värdet för notListedIsapisAllowed som falskt och lägger till varje ISAPI-tillägg i listan med tillåtna tillägg.
NotListedISAPIsAllowedCheck_Compliant=Enligt IIS Best Practices Analyzer-genomsökningen uppfylls rekommendationerna.
	
	#
	# notListedCgisAllowed should not be true
	#
NotListedCGIsAllowedCheck_Title=Konfigurationsattributet notListedCgisAllowed ska vara falskt
NotListedCGIsAllowedCheck_Problem=Konfigurationsattributet notListedCgisAllowed i avsnittet system.webServer/security/isapiCgiRestriction har värdet sant.
NotListedCGIsAllowedCheck_Impact=Tillåter att CGI-tillägg som inte finns i listan, inklusive eventuellt skadliga tillägg, körs.
NotListedCGIsAllowedCheck_Resolution=Anger värdet för notListedCgisAllowed som falskt och lägger till varje CGI-tillägg i listan med tillåtna tillägg.
NotListedCGIsAllowedCheck_Compliant=Enligt IIS Best Practices Analyzer-genomsökningen uppfylls rekommendationerna.
	
	#
	# Application Pool should not be priviliged
	#
AppPoolIdentityCheck_Title=Programpooler ska anges till att köras som programpoolsidentiteter
AppPoolIdentityCheck_Problem=Programpoolen {0} är inställd på att köras som administratör, som lokalt system eller som Agera som del av operativsystemet .
AppPoolIdentityCheck_Impact=Den här programpoolen kan köra privilegierad kod, inklusive eventuellt skadlig kod som kan ha en negativ inverkan på servern.
AppPoolIdentityCheck_Resolution=Ange att programpoolen ska köras med programpoolsidentiteten.
AppPoolIdentityCheck_Compliant=Enligt IIS Best Practices Analyzer-genomsökningen uppfylls rekommendationerna.

	#
	# Custom errors should be set to LocalOnly or Custom
	#
CustomErrorsCheck_Title=Dölj anpassade felmeddelanden så att de inte visas på fjärrdatorer
CustomErrorsCheck_Problem=Attributet errorMode i avsnittet {0} [sökväg:{1}] är angett som Detaljerat.
CustomErrorsCheck_Impact=Användare som ansluter till webbplatsen eller programmet kan få se viss privilegierad information som finns i de detaljerade felsidor som skickas till fjärrdatorn.
CustomErrorsCheck_Resolution=Ange errorMode för anpassade felmeddelanden som DetailedLocalOnly eller Custom.
CustomErrorsCheck_Compliant=Enligt IIS Best Practices Analyzer-genomsökningen uppfylls rekommendationerna.
	
	#
	# Basic Authentication should not be used without SSL
	#
BasicAuthSSLCheck_Title=Använd SSL när du använder Basic-autentisering
BasicAuthSSLCheck_Problem=Basic-autentisering är aktiverat för {0} men saknar en obligatorisk SSL-bindning.
BasicAuthSSLCheck_Impact=Om Basic-autentisering används utan SSL kommer autentiseringsuppgifterna att skickas i klartext och kan därför fångas upp av skadlig kod.
BasicAuthSSLCheck_Resolution=Använd Basic-autentisering med en SSL-bindning och kontrollera att webbplatsen eller programmet ställts in till så att SSL krävs. Du kan också använda en annan autentiseringsmetod.
BasicAuthSSLCheck_Compliant=Enligt IIS Best Practices Analyzer-genomsökningen uppfylls rekommendationerna.

###PSLOC
'@
