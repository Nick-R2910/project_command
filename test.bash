#!/bin/bash
# SPDX-FileCopyrightText: 2026 Ryota Furutani
# SPDX-License-Identifier: BSD-3-Clause

ng(){
    echo ${1}行目のテスト失敗
    res=1
}
res=0
a=みらいろぼてぃくすがっか
[ "$a" = みらいろぼてぃくすがっか ] || ng "$LINENO"              
[ "${res}" = 0 ] && echo OK
exit $res