#Uesugi_Cipher_Decoder(上杉暗号解読コード)
uesugi_cipher = [["い","ろ","は","に","ほ","へ","と"],
                 ["ち","り","ぬ","る","を","わ","か"],
                 ["よ","た","れ","そ","つ","ね","な"],
                 ["ら","む","う","ゐ","の","お","く"],
                 ["や","ま","け","ふ","こ","え","て"],
                 ["あ","さ","き","ゆ","め","み","し"],
                 ["ゑ","ひ","も","せ","す","ん","NULL"]]
print(f"数字を入力:",end=" ")
message = input()
times = len(message)
for i in range(times):
    if(i%2 == 0):
        print(f"{uesugi_cipher[int(message[i])-1][int(message[i+1])-1]}",end="")
print("")