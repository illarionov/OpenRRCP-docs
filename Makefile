all: build

.PHONY: all build clean serve validate

build:
	bundle exec jekyll build

clean:
	rm -rf site

serve:
	bundle exec jekyll serve --livereload

validate:
	bundle exec htmlproofer ./_site/ --only-4xx --allow_hash_href --url-ignore '/favicon.ico'
