$(document).ready(function () {
  let score = 0;
$("div.0 input").on('click', function(event){
  if(event.target.value === $('div.0 input')[4].value){
    score++

  }})

$("div.1 input").on('click', function(event){
  if(event.target.value === $('div.1 input')[4].value){
    score++

  }})
$("div.2 input").on('click', function(event){
  if(event.target.value === $('div.2 input')[4].value){
    score++

  }})
$("div.3 input").on('click', function(event){
   if(event.target.value === $('div.3 input')[4].value){
     score++

   }
})
$("div.4 input").on('click', function(event){
  if(event.target.value === $('div.4 input')[4].value){
    score++

  }})
$("div.5 input").on('click', function(event){
  if(event.target.value === $('div.5 input')[4].value){
    score++

  }})
$("div.6 input").on('click', function(event){
  if(event.target.value === $('div.6 input')[4].value){
    score++

  }})
$("div.7 input").on('click', function(event){
  if(event.target.value === $('div.7 input')[4].value){
    score++

  }})

$("div.8 input").on('click', function(event){
  if(event.target.value === $('div.8 input')[4].value){
    score++

  }})
$("div.9 input").on('click', function(event){
  if(event.target.value === $('div.9 input')[4].value){
    score++
  }})

  $(".questions button").on('click', function(){
    console.log(score)
    $.post(window.location.href, {
      score: score,
      _method: 'put'
    })
  })
})
