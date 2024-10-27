.PHONY: build clean rebuild

# Remove existing Lua files and build artifacts
clean:
	rm -rf lua/
	rm result

# Build the theme
build:
	nix build .#generator
	./result/bin/generate-lua
	unlink result

# Clean and rebuild
rebuild: clean build
	@echo "Theme rebuilt successfully!"

.DEFAULT_GOAL := rebuild
