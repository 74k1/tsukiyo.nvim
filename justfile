default:
  just clean
  just build

# Remove existing Lua files and build artifacts
clean:
  rm -rf lua/

# Build the theme
build:
  nix run .#generator
