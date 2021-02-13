#! /bin/bash

#This Script is for Encryptions and Decryption Using GPG

echo "This is a File Encryptor and Decryptor"
echo "Please choose what you want to do: "

choice="Encrypt Decrypt"

select option in $choice; do
  if [ $REPLY = 1 ];
then
  echo "You want to Encrypt"
  echo "Please enter the file name"
  read file;
  gpg -c $file
  echo "The file has been Encrypted"

else
  echo "You want to Decrypt"
  echo "Please enter the file name"
  read file2;
  gpg -d $file2
  echo "The has been Decrypted"
fi
done
