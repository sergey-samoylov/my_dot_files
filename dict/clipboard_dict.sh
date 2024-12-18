#!/usr/bin/env bash

function main() {
    # Main interface:
    get_word

    case "$choice" in
        -a ) audio_dict;;
        -h ) help_dict;;
        -v ) voa_dict;;
        * ) default_dict;;
    esac
}

function get_word() {
    word=$(wl-paste -p)
    word=$(echo "$word"| tr 'A-Z' 'a-z')
}

function notify_word() {
    notify-send --app-name="Dictionary" -t 60000 "$word -" "$definitions"
}

function wrong_input() {
    notify-send --app-name="Dictionary" -t 3000 "Wrong input" && exit 0
}

function audio_dict() {
    definitions=$(trans :ru -brief -p $word)
    notify_word
}

function voa_dict() {
    dict=$HOME/Documents/Dictionaries/voadict.txt
    definitions=$(grep -i "^$word" $dict)
    [[ -z $definitions ]] && wrong_input
    notify_word
}

function default_dict() {
    query=$(curl -s "https://api.dictionaryapi.dev/api/v2/entries/en_US/$word")

    [[ -z $query ]] && wrong_input

    # Show only first definitions:
    definitions=$(echo "$query" |
        jq -r '.[0].meanings[] | "\(.partOfSpeech): \(.definitions[0].definition)\n"')

    notify_word
}

function help_dict() {
    echo -e " ${0##*/} -h - print this help message\n"
    echo -e " ${0##*/} -a - audio translate any word from primary clipboard\n"
    echo -e " ${0##*/} -v - look up selected word in the local VOA dictionary\n"
    echo -e " ${0##*/} <no keys> - use default dictionary API\n"
}

choice=$1
clear
main
