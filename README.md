# Chaos-based-image-encryption
Using chaos function to encrypt image (1.0 version)
final version is https://github.com/yune-lilias/Image-encrypt-decrypt
(much more faster than this one)

init_imgpre: change image to string
init_sha: use sha256 to get hash code of input string (image)
verify_sha256: use System.Security.Cryptography.SHA256Managed to verify the sha256 result from function above
init_chaos: use sha256 result to initial the chaos map (logistic map)

Still developing more functions
