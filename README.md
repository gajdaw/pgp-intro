# gpg intro

## 1. Links

* https://formulae.brew.sh/formula/gnupg
* https://www.gnupg.org/gph/en/manual.html
* https://www.gnupg.org/gph/en/manual/x110.html
* https://www.gnupg.org/gph/en/manual/x56.html
* https://blog.ghostinthemachines.com/2015/03/01/how-to-use-gpg-command-line/
* https://statistics.berkeley.edu/computing/encrypt
* https://unix.stackexchange.com/questions/481939/how-to-export-a-gpg-private-key-and-public-key-to-a-file
* https://stackoverflow.com/questions/13116457/how-to-make-auto-trust-gpg-public-key

## 2. Installation

    brew install gnupg

Common options:

    --armor    - ASCII format
    --output   - output filename

## 3. Generate keys

    gpg --gen-key

## 4. List keys

    gpg --list-keys
    gpg --list-secret-keys

## 5. Export public key

    gpg --export

    gpg --export --armor EMAIL_ADDRESS
    gpg --export --armor EMAIL_ADDRESS > public_key.asc
    gpg --export --armor --output public_key.asc EMAIL_ADDRESS

## 6. Export private key

    gpg --export-secret-key

    gpg --export-secret-key --armor EMAIL_ADDRESS
    gpg --export-secret-key --armor EMAIL_ADDRESS > private_key.asc
    gpg --export-secret-key --armor --output private_key.asc EMAIL_ADDRESS

## 7. Import private/public key

    gpg --import key.asc

## 8. Delete key

    gpg --delete-secret-keys EMAIL_ADDRESS
    gpg --delete-keys EMAIL_ADDRESS

## 9. Encrypt file

    gpg --encrypt --recipient EMAIL_ADDRESS --output dest_filename src_filename

## 10. Decrypt file

    gpg --decrypt --output dest_filename src_filename

## 11. Trust the key

    gpg --edit-key EMAIL_ADDRESS
    gpg> trust
    # select option 5
