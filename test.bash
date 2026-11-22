#!/bin/bash
# SPDX-FileCopyrightText: 2026 Ryota Furutani
# SPDX-License-Identifier: BSD-3-Clause

ng(){
    echo ${1}行目のテスト失敗
    res=1
}
res=0
### NORMAL INPUT ###
out=$(echo みらいろぼてぃくすがっか | ./encrypt)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = 66411112a657c2477581c127 ] || ng "$LINENO"

### STRANGE INPUT ###
out=$(echo 未来ロボティクス学科 | ./encrypt)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./encrypt)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo mirairobothikusugakka | ./encrypt)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo ミライロボティクスガッカ | ./encrypt)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res