SOFT-DELIMITERS = "<,>" ;
DELIMITERS = "<.>"ri "<:>"ri "<!>"ri "<?>"ri ;

LIST BOS = (>>>) (<s>) (sent) ; 
LIST EOS = (<<<) (</s>) (sent) ; 

####

# Plural with 'í', singular with 'á' 
LIST BodyParts = "høvuð" "eyga" "hal"; 
LIST Kinship = "abbi"; 
LIST CloseKinship = "pápi" "systir" "broðir";

