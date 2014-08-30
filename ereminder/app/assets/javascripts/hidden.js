$("table").click(function(){
  console.log(this);
  if($('.jpbody').is(':hidden')){
    $('.jpbody').show();
  }else{
    $('.jpbody').hide();
  }
  
});

