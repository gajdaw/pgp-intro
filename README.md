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

## 3. Manage keys

### 3.1. List keys

    gpg --list-keys
    gpg --list-secret-keys

### 3.2. Generate keys

    gpg --gen-key

### 3.3. Delete key

    gpg --delete-secret-keys EMAIL_ADDRESS
    gpg --delete-keys EMAIL_ADDRESS

### 3.4. Export keys

#### 3.4.1. Export public key

    gpg --export

    gpg --export --armor EMAIL_ADDRESS
    gpg --export --armor EMAIL_ADDRESS > public_key.asc
    gpg --export --armor --output public_key.asc EMAIL_ADDRESS

#### 3.4.2. Export private key

    gpg --export-secret-key

    gpg --export-secret-key --armor EMAIL_ADDRESS
    gpg --export-secret-key --armor EMAIL_ADDRESS > private_key.asc
    gpg --export-secret-key --armor --output private_key.asc EMAIL_ADDRESS

### 3.5. Import private/public key

    gpg --import key.asc

### 3.6. Trust the key

    gpg --edit-key EMAIL_ADDRESS
    gpg> trust
    # select option 5

## 4. Encryption / Decryption

### 4.1. Encrypt file

    gpg --encrypt --recipient EMAIL_ADDRESS --output dest_filename src_filename

### 4.2. Decrypt file

    gpg --decrypt --output dest_filename src_filename

## 5. Bash commands

### 5.1. Encrypt dir

    # encrypt dir DIRNAME
    tar cf DIRNAME.tar DIRNAME
    gpg --encrypt --recipient EMAIL_ADDRESS --output DIRNAME.tar.gpg DIRNAME.tar

### 5.2. Decrypt dir

    # decrypt dir DIRNAME
    gpg --decrypt --output DIRNAME.tar DIRNAME.tar.gpg
    tar xf DIRNAME.tar
