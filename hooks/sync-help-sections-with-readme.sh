#!/bin/bash
# set -o errexit -o nounset -o pipefail

README_FILENAME="README.md"

for SCRIPT_NAME in $(ls scripts/); do
    SCRIPT_FILENAME="scripts/${SCRIPT_NAME}"
    DESC_FROM_SCRIPT="$(cat ${SCRIPT_FILENAME} | grep 'function desc' | cut -f 2 -d '"')"
    SCRIPT_COUNT=$(grep -c "\*\*${SCRIPT_NAME}:\*\*" < ${README_FILENAME} || true)
    if [ ${SCRIPT_COUNT} -ne 1 ]; then
        echo
        echo "${SCRIPT_NAME}: Wrong number of occurrences in Readme file: occurrences: ${SCRIPT_COUNT}"
        echo "Skipping ${SCRIPT_NAME}"
        continue
    fi
    SCRIPT_NAME_IN_README_LINE_NO=$(grep -n "\*\*${SCRIPT_NAME}:\*\*" < ${README_FILENAME} | cut -f 1 -d ':')
    LINE_FROM_README="$(cat ${README_FILENAME} | head -n ${SCRIPT_NAME_IN_README_LINE_NO} | tail -n 1)"
    DESC_FROM_README="$(echo ${LINE_FROM_README} | sed -e 's/.*:\*\*\ //g')"
    if [ "${DESC_FROM_SCRIPT}" != "${DESC_FROM_README}" ]; then
        echo
        echo "${SCRIPT_NAME}: Do not match"
        echo "Script: ${DESC_FROM_SCRIPT}"
        echo "Readme: ${DESC_FROM_README}"
    fi
done
