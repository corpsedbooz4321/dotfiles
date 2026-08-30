# Create directory and cd into it
mkcd() {
  mkdir -p "$1" && cd "$1"
}

# Extract any archive
extract() {
  case $1 in
    *.tar.gz) tar xzf $1 ;;
    *.zip) unzip $1 ;;
    *.tar.bz2) tar xjf $1 ;;
    *) echo "Unsupported format" ;;
  esac
}
