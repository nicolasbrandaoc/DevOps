





{ while IFS=';' read u1 p1 u2 p2 fake
    do 
        imapsync --host1 mail.servidordeemail.1.br --user1 "$u1" --password1 "$p1" \
                 --host2 mail.servidordeemail.2.br --user2 "$u2" --password2 "$p2" --addheader "$@" 
    done 
} < migr.txt




google:

imapsync --host1 mail.servidordeemail.1.br --user1 ⁠email.com.br --password1 'passowrd' --host2 imap.gmail.com --user2 emailgoogle.com.br --addheader --password2 'xxxx xxxx xxxx xxxx' --timeout 120




