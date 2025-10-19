# chaoszone.cz

The source files for the <https://chaoszone.cz> website.

# hugo

- hugo is a static site generator
- to start the development server 
  - with docker: ```docker run --rm -p 1313:1313 -v ./:/src hugomods/hugo:exts-non-root server -D``` 
  - local: ```hugo server```
- to build the website 
  - with docker: ```docker run --rm -v ./:/src hugomods/hugo:exts-non-root build``` 
  - local: ```hugo```


