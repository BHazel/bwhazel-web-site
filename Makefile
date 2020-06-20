
SITE_SRC_DIR=src
SITE_DEST_DIR=dist

start: start-site

build: build-site

build-site:
	jekyll build -s $(SITE_SRC_DIR) -d $(SITE_DEST_DIR)

start-site:
	jekyll serve -s $(SITE_SRC_DIR) -d $(SITE_DEST_DIR) -H 0.0.0.0

clean: clean-site

clean-site:
	rm -rf $(SITE_DEST_DIR)
	rm -rf $(SITE_SRC_DIR)/.jekyll-cache