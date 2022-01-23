if ! pgrep -x "spotifyd" > /dev/null
then
    spotifyd --no-daemon -u USERNAME -p PASSWORD >> log.tmp &
fi
st -e spt
rm -f log.tmp
