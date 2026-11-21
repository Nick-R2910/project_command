#Uesugi_Cipher_encryption(上杉暗号化コード)
uesugi_cipher = [["い","ろ","は","に","ほ","へ","と"],
                 ["ち","り","ぬ","る","を","わ","か"],
                 ["よ","た","れ","そ","つ","ね","な"],
                 ["ら","む","う","ゐ","の","お","く"],
                 ["や","ま","け","ふ","こ","え","て"],
                 ["あ","さ","き","ゆ","め","み","し"],
                 ["ゑ","ひ","も","せ","す","ん","ー"],
                 ["が","ぎ","ぐ","げ","ご","ざ","じ"],
                 ["ず","ぜ","ぞ","だ","ぢ","づ","で"],
                 ["ど","ば","び","ぶ","べ","ぼ","ぱ"],
                 ["ぴ","ぷ","ぺ","ぽ","ゃ","ゅ","ょ"],
                 ["っ","NULL","NULL","NULL","NULL","NULL","NULL"]]

# unexpect = [["が","ぎ","ぐ","げ","ご"],
#             ["ざ","じ","ず","ぜ","ぞ"],
#             ["だ","ぢ","づ","で","ど"],
#             ["ば","び","ぶ","べ","ぼ"],
#             ["ぱ","ぴ","ぷ","ぺ","ぽ"],
#             ["ゃ","ゅ","ょ","っ","NULL"]]
# fix = [["か","き","く","け","こ"],
#        ["さ","し","す","せ","そ"],
#        ["た","ち","つ","て","と"],
#        ["は","ひ","ふ","へ","ほ"],
#        ["は","ひ","ふ","へ","ほ"],
#        ["や","ゆ","よ","つ","NULL"]]
def encryption(message):
    s = message
    # for i in range(6):
    #     for j in range(5):
    #         if(s == unexpect[i][j]):
    #             s = fix[i][j]
    #             break
    for gyou,row in enumerate(uesugi_cipher):
        for retu,txt in enumerate(row):
            if(txt == s):
                return gyou,retu

print(f"メッセージを入力:",end=" ")
message = input()
for i in range(len(message)):
    gyou,retu = encryption(message[i])
    gyou = format(gyou+1,'x')
    retu = format(retu+1,'x')
    print(f"{gyou}{retu}",end="")
print("")

