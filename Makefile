.PHONY: build clean rebuild

# Remove existing Lua files and build artifacts
clean:
	rm -rf lua/

# Build the theme
build:
	nix run .#generator

# Clean and rebuild
rebuild: clean build
	@echo "Theme rebuilt successfully!"

.DEFAULT_GOAL := rebuild