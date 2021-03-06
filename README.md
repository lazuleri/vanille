<html>
<p align="middle">
  <img src="/docs/assets/img/wordmark.png" width="50%" alt="logo">
  <br>
  <br>
  <i>anybody can cook gifs
  -rémy ratatouille</i>
</p>
 <br>
<div align="middle" width="100%" heigth="100%">
  <img src="/examples/maryo.gif"  height="140px" alt="メアリと魔女の花">
  <img src="/examples/violetteo.gif"  height="140px" alt="incredibles 2">
  <img src="/examples/coraline.gif"  height="140px" alt="coraline">
</div>
 </html>
 
 


## faq
>whats this?

this is a rather simple batch/powershell hybrid cui that lets you make gifs in high quality pretty quickly and easily 

>what is it based on?

+ *ffmpeg/probe* for the video heavylifting as well as the gif generation  
+ *gifsicle* for the gif edition as well as the optimisation  
+ *gifski* optionally to make higher quality gifs compared to the standard ffmpeg method  
+ *youtube-dl* optionally to make a gif from an url directly  

>what are the features?

+ simple usage (i hope)
+ multiple profiles suited for various platforms (discord, twitter, emojis) as well as the ability to make a custom one or write [your own profile](https://github.com/lazuleri/vanille/blob/master/_vanille/profiles.bat)  
+ support for gifski which produces better gifs than the ffmpeg method (afaik vanille is the only use of it in a windows cui but i might be wrong)  
+ *chocolat* an addon to vanille that can run standalone\* to edit existing gifs and do stuff like cropping resizing optimising exploding frames etc  
+ support for youtube-dl to make gifs from urls directly without the need to have a video locally (it will still download it temporarily but vanille is not meant to be a video downloader so please dont use it as one)  

>is there caveats?

+ the automatic optimisation is a bit broken on vanille right now (it is fine on chocolat due to being written slightly differently)
+ it cannot make gifs that have a framerate higher than 50fps due to the limitation of gif itself if the source is 50+fps the framerate will be capped to 50  
+ the generated files can be quite large especially depending on how big the gif is  
also note that you may need some headroom for certain "encoding" methods due to the need of having temporary raw png frames which can quickly add up (500+ mib for a 2s video clip @ 1920x804)  
+ due to the way the program is structured it wont be able to support drag and drop from drives (letters) different from the drive vanille is on 
+ due to the high level of optimisation of the gifs it is beyond my knowledge how to do to reverse them sorry about that (it is more complex than just playing it backwards due to transparency)
+ \*might cause issues due to it being designed as part of the vanille flow but it should be fine i hope

>i found a bug or have a suggestion what to do?

just @ me on twitter **[@lazuleri](https://twitter.com/lazuleri)**  

>why batch? why not a proper language?

multiple reasons, mostly because i dont know how to code at all lol, but batch is very straighforward even for someone like me with very little experience  
i think working with limited stuff is more fun because it keeps u more focused on doing whats necessary instead of focusing on less important stuff  
another reason is because its very portable and lets you tinker with it pretty quickly, i commented the code as much as i could but some stuff probably will be quite obscure i think sorry about that

>why do u write like ur 13? that so obnoxious please stop

its just how i type normally and its mostly cus im just so used to typing that way than any other way makes me as fast as a snail so sorry about that orz  
~~who said im not 13~~

# installation 

## easy way (all in one archive)
  
### [⬇︎ download](https://github.com/lazuleri/vanille/releases/latest)

this release comes bundled with ffmpeg, ffprobe, gifsicle and gifski directly so it works as a standalone tool  
note that you should still download the source code as well and update the batch files
simply put it where you want and run **vanille.bat** like a normal program
the folder structure is important so please leave it as is

__note__  
i am not aware if it will prioritise the bundled version or the one you have installed on your system 

## less easy way (run the batch files directly)
### dependencies
vanille requires the following dependencies and will not fonction at all if they are not met

+ **ffmpeg**
+ **ffprobe\***
+ gifsicle (technically optional)
+ gifski (optional)
\**ffprobe is bundled with ffmpeg*

windows builds for ffmpeg can be found at [zeranoe.com](https://ffmpeg.zeranoe.com/builds/)  
windows builds for gifsicle can be found at [eternallybored.com](https://eternallybored.org/misc/gifsicle/)

### setup
the setup is rather simple  you just need to keep the files provided on this repo together according to this chart
```
folder
|--vanille.bat
|_vanille
--|--save.bat
--|--open.bat
--|--profiles.txt
--|--table.txt
```
if ffmpeg and gifsicle are not added to your PATH you will have to include them in the same folder as well

# thanks
**krz [@krz0001](https://twitter.com/krz0001)**   
for helping out with the github setup (im noob orz) and the website  

**ade [@0x0ade](https://twitter.com/0x0ade)**   
for giving me ideas and helping me out regarding windows stuff and code stuff  

**ru [@coralaix](https://twitter.com/coralaix)**   
for being my bff  

**colorband [@realcolorband](https://twitter.com/realcolorband)**   
for design help  

**cats [@ithinkimcats](https://twitter.com/ithinkimcats)**  
for giving feedback and actually using the tool  

**narry [@smellyfeetuhave](https://twitter.com/smellyfeetuhave)**  
for help with debug and requesting good features

# credits
### logo and "branding"
**me [@lazuleri](https://twitter.com/lazuleri)**

### website
**krz [@krz0001](https://twitter.com/krz0001)**  
for the code and suggestions

**me [@lazuleri](https://twitter.com/lazuleri)**  
for the design and layout

### gifs
all rights go to owners this is just to display what you can do with the tool  



 movie | studio | release date  
 :--- |:--- |:---  
 Mary and the Witch's Flower | STUDIO PONOC CO.,LTD | 2017  
 Incredibles 2 | Pixar Animation Studios | 2018  
 Coraline | Laika | 2009  
 >from left to right

