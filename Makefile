# Top-level Makefile

all:
	@echo Starting build process...
	for d in src/*; do \
		if [ -d "$$d" ]; then \
			make -C "$$d"; \
		fi; \
	done
	@echo Build process finished.

clean:
	@echo Starting clean process...
	for d in src/*; do \
		if [ -d "$$d" ]; then \
			$(MAKE) -C "$$d" clean; \
		fi; \
	done
	@echo Clean process finished.