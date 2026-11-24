# Project_Command
このリポジトリはロボットシステム学の課題を公開するためのリポジトリです。

# encryptコマンド
![test](https://github.com/Nick-R2910/project_command/actions/workflows/test.yml/badge.svg)

標準入力から読み込んだひらがなを上杉暗号表と独自のルールに則って暗号化する

# decodeコマンド
![test](https://github.com/Nick-R2910/project_command/actions/workflows/test.yml/badge.svg)

標準入力から読み込んだ上杉暗号表と独自のルールに則った暗号を解読する

## コマンドの説明
- 上記のコマンドは上杉暗号という暗号化方式を使って文章を暗号化するコマンドと、この方式によって暗号化された文章を解読するコマンドです。
- 上杉暗号とは戦国武将・上杉謙信の家臣とされる宇佐美定行が考案したと伝わる、いろは48文字を7×7の表に配置し、各文字を行番号・列番号の2桁の数字で表す座標式の換字暗号のことです。
## 必要なソフトウェア

- Python
 - テスト済みバージョン：3.10～3.14

## テスト環境

- Ubuntu 24.04 LTS

## 著作権とライセンス
- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
- このパッケージのtest.ymlは、下記のスライド（CC BY-SA 4.0 by Taro Suzuki）のものを、
  本人の許可を得て自身の著作としたものです。
    - https://github.com/tarolab-cit/lectures/tree/main/robosys2026
- © 2026 Ryota Furutani
