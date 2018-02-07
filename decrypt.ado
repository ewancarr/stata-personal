cap program drop decrypt 
program define decrypt 
    di in r "Enter password for decryption:" _request(password)
    shell echo "$password" | encfs -S ~/Documents/Secure\ data ~/.secure
    macro drop password
end

