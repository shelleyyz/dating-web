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
let current_messages = [];

const showMessages = function(results){
  results.messages.filter((record, index)=> {
      // console.log("new")
      if (!current_messages[index]) {return true};
          // console.log(record.data.id);
          // console.log(current_messages[index].data.id)
    return record.data.id !== current_messages[index].data.id

  }).map((record)=> {
      $(".messages").append(`<p>${record.sender_first_name + ":" + record.data.content}<p>`)
  })

    current_messages = results.messages
}

const api_call = function(){
  return $.getJSON(`http://localhost:3000/api/mailboxes/${current}`,{
    format: 'json'
  }).done(showMessages)
}

let current = null;
const setInt = function(){
  setInterval(function() { api_call()},2000)
}

$(".convo-list a").on('click', (e) => {
  e.preventDefault();
  current = e.target.id;
  clearInterval(setInt)
  $(".messages").empty();
  api_call().done(()=> setInt())
})


})
