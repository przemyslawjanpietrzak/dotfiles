function weather -d "Fetch weather"
    set location (string join + -- $argv)
    curl "wttr.in/$location?u"
end
