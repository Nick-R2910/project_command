#!/bin/bash
# SPDX-FileCopyrightText: 2026 Ryota Furutani
# SPDX-License-Identifier: BSD-3-Clause

ng(){
    echo ${1}行目のテスト失敗
    res=1
}
res=0
### NORMAL INPUT ###
out=$(echo ろぼっと | ./encrypt)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = 12a6c117 ] || ng "$LINENO"

### STRANGE INPUT ###
out=$(echo ロボット | ./encrypt)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./encrypt)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo robot | ./encrypt)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res