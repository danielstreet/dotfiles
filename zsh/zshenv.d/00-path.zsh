# Reset OSX $PATH with system-wide defaults.
if [[ "$OSTYPE" == darwin* ]]; then
  export PATH=""
  eval `/usr/libexec/path_helper -s`
fi

# Add ~/bin to executables path.
export PATH="$HOME/bin:$PATH"
