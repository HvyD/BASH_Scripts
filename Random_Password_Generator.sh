#! bin/bash
# Simple Password Generator that uses openssl

echo "This is a Password Generator"
echo "Please enter the length of password: "
read PASS_LEN

for psswd in $(seq 1);
do
  #base64 used instead of hex for more security
  openssl rand -base64 48 | cut -c1-$PASS_LEN
done
