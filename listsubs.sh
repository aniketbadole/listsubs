#!/bin/bash

# Prompt the user for the target domain
echo "Enter the target domain:"
read domain

# Install subfinder if it is not already installed
if ! [ -x "$(command -v subfinder)" ]; then
  echo "Installing subfinder..."
  go get github.com/projectdiscovery/subfinder/cmd/subfinder
fi

# Enumerate subdomains using subfinder
subdomains=$(subfinder -d $domain)

# Print the enumerated subdomains in two columns
echo "Subdomain          IP"
echo "----------          --"
for subdomain in $subdomains
do
  # Look up the IP address of the subdomain
  ip=$(dig $subdomain +short)
  printf "%-20s %s\n" $subdomain $ip
done

# Save the results to a file on the desktop
echo "Subdomain          IP" > /home/kali/Desktop/subdomains.txt
echo "----------          --" >> /home/kali/Desktop/subdomains.txt
for subdomain in $subdomains
do
  # Look up the IP address of the subdomain
  ip=$(dig $subdomain +short)
  printf "%-20s %s\n" $subdomain $ip >> /home/kali/Desktop/subdomains.txt
done
