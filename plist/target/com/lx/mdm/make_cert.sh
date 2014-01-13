echo "step 1"
openssl genrsa -des3 -out customerPrivateKey.pem 2048

echo "step 2"
openssl req -new -key customerPrivateKey.pem -out customer.csr

echo "step 3"
echo "upload the encode_list "
openssl req -inform pem -outform der -in customer.csr -out customer.der


echo "step 4"
echo "execute PlistUtils,形成"


echo "four step"
echo "将apns-mdm.pem与customerPrivateKey.pem合并为apns-mdm.p12"
echo "https://identity.apple.com/pushcert"
echo "openssl pkcs12 -export -inkey customerPrivateKey.pem -in mdm_push.pem -out mdm_push.p12"

