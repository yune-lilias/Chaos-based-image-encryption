filename =  'pyramidsg.png';;
strcmp = init_imgpre(filename);
sha256hasher = System.Security.Cryptography.SHA256Managed;           % Create hash object (?) - this part was copied from the forum post mentioned above, so no idea what it actually does


%imageHash_uint8 = uint8(sha256hasher.ComputeHash(uint8(strcmp))) % Find uint8 of hash, outputs as a 1x32 uint8 array
imageHash_uint8 = uint8(sha256hasher.ComputeHash(uint8(strcmp)));
imageHash_hex = dec2hex(imageHash_uint8) 