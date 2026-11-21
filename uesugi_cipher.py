#Uesugi_Cipher_encryption(上杉暗号化コード)
uesugi_cipher = [["い","ろ","は","に","ほ","へ","と"],
                      ["ち","り","ぬ","る","を","わ","か"],
                      ["よ","た","れ","そ","つ","ね","な"],
                      ["ら","む","う","ゐ","の","お","く"],
                      ["や","ま","け","ふ","こ","え","て"],
                      ["あ","さ","き","ゆ","め","み","し"],
                      ["ゑ","ひ","も","せ","す","ん","NULL"]]
def encryption(message):
    s = message
    for gyou,row in enumerate(uesugi_cipher):
        for retu,txt in enumerate(row):
            if(txt == s):
                return gyou,retu

print(f"メッセージを入力:",end=" ")
message = input()
for i in range(len(message)):
    gyou,retu = encryption(message[i])
    print(f"{gyou+1}{retu+1}",end="")
print("")

