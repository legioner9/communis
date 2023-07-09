'use strict';
console.log('/.js/rb_script2.js is working');

const rightBanners = document.getElementsByClassName('BlinkingBanner');

const NUMBER_OF_ADS = Object.keys(rightBanners).length;

const LIM = NUMBER_OF_ADS + 1;


let rightBannerElement = document.getElementById('rightBanner');

window.addEventListener('scroll', () => {
    const scrolled = window.scrollY;
    if (scrolled >= 100) {
    rightBannerElement.style.position = 'fixed';
    rightBannerElement.style.top = '0';
    }
    else if 
    (scrolled < 100) {
    rightBannerElement.style.position = 'absolute';
    rightBannerElement.style.top = '75px';
    }
});

let remove_adv_button      = document.getElementById('remove_adv_button');
let show_adv_button = document.getElementById('show_adv_button');
let r_content_articles = document.getElementById('rb-content-articles');
let r_related_articles = document.getElementById('rb-related-articles');
let r_first_adv        = document.getElementById('rb-first-adv');
let r_second_adv      = document.getElementById('rb-second-adv');

remove_adv_button.addEventListener('click', () => {
    console.log("remove adv button clicked");
    r_content_articles.style.gridRowStart = "1";
    r_content_articles.style.gridRowEnd = "2";
    r_related_articles.style.gridRowStart = "3";
    r_related_articles.style.gridRowEnd = "4";
    r_first_adv.style.gridRowStart = "5";
    r_first_adv.style.gridRowEnd = "6";
    r_second_adv.style.gridRowStart = "7";
    r_second_adv.style.gridRowEnd = "8";
    show_adv_button.style.display = "block";
    remove_adv_button.style.display = "none";
});

show_adv_button.addEventListener('click', () => {
    console.log("show adv button clicked");
    r_content_articles.style.gridRowStart = "3";
    r_content_articles.style.gridRowEnd = "4";
    r_related_articles.style.gridRowStart = "7";
    r_related_articles.style.gridRowEnd = "8";
    r_first_adv.style.gridRowStart = "1";
    r_first_adv.style.gridRowEnd = "2";
    r_second_adv.style.gridRowStart = "5";
    r_second_adv.style.gridRowEnd = "6";
    show_adv_button.style.display = "none";
    remove_adv_button.style.display = "block";
});

let modulesA = new Array([]);

for (let i = 0; i < LIM; i++) {
    let divId = 'right_slider_' + String(i);
    try {
        modulesA[i] = document.getElementById(divId);
    }
    catch(err) {
        console.log("%s not found", divId);
    }
}

const generateRandomInt = (min, max) => {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min; //The maximum is exclusive and the minimum is inclusive
};

const hideAllModules = () => {
    //console.log('hideAllModules is called');
    let j;

    for (j = 0; j < LIM; j++) {
        try {
            modulesA[j].style.display='none';
            // modulesA[j].style.opacity = 0;
        }
        catch(err) {
            console.log("%s not found", modulesA[j]);
        }
    }

    let i = generateRandomInt(1, NUMBER_OF_ADS);
    console.log(i);
    try {
        modulesA[i].style.display='inline';
        // modulesA[i].style.opacity = 1.0;
        console.log("show module %s", modulesA[i]);
    }
    catch(err) {
        console.log("%s not found", modulesA[i]);
    }
    // remove next line if you use setInverval;
    let timerId = setTimeout(hideAllModules, 18000);
    
    
};

const goog = document.getElementById('right_slider_0');
goog.style.display='inline';
// goog.style.opacity = 1.0;

setTimeout(hideAllModules, 18000);
