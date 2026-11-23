#!/bin/bash
# SPDX-FileCopyrightText: 2026 Ryota Furutani
# SPDX-License-Identifier: BSD-3-Clause

ng(){
    echo ${1}行目のテスト失敗
    res=1
}
res=0
### NORMAL INPUT(encrypt) ###
out=$(echo ろぼっと | ./encrypt)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = 12a6c117 ] || ng "$LINENO"

out=$(echo | ./encrypt)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"
### NORMAL INPUT(decode) ###
out=$(echo 12a6c117 | ./decode)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = ろぼっと ] || ng "$LINENO"

out=$(echo | ./decode)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"
### STRANGE INPUT(encrypt) ###
out=$(echo ロボット | ./encrypt)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo robot | ./encrypt)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"
### STRANGE INPUT(decode) ###
out=$(echo ろぼっと | ./decode)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo robot | ./decode)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res