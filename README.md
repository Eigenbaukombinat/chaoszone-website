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


## todo

- eigene cursor und menü hover
  - inspiration: https://eloyb.design/
- ascii art: https://designs.events.ccc.de/Hackover_2017/Hackover_2017-Visual.png
- play section
  - game of live
  - raindrop: https://experiments.p5aholic.me/day/005/
  - pong: https://designs.events.ccc.de/GPN8/GPN8-Visual.png
  - poly play: https://www.gugeli.de/2025/08/12/poly-play-der-einzige-arcade-automat-der-ddr-und-wie-man-ihn-heute-emuliert/
- matrix link im footer zu eigener unterseite mit beschreibung