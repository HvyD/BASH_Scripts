#! bin/bash
# Simple Password Generator

echo "This is a Password Generator"
echo "Please enter the length of password: "
read PASS_LEN

for psswd in $(seq 1);
do
  openssl rand -base64 48 | cut -c1-$PASS_LEN
done
