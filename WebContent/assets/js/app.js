
//改变背景

  $(function() {
		if("" != $("#jobNumBgImg").val()){
		 $("body").css({
	         "background": "url('assets/img/"+$("#jobNumBgImg").val()+"')repeat"
	     });
		}
	  
      $("#button-bg").click(function() {
    	  $.ajax({url:"/chinaTelecom/jobNumber/addBgImg.do?bgImg=bg5.jpg"});
          $("body").css({
              "background": "url('assets/img/bg5.jpg')repeat center center fixed"
          });
      });
      $("#button-bg2").click(function() {
    	  $.ajax({url:"/chinaTelecom/jobNumber/addBgImg.do?bgImg=bg2.jpg"});
          $("body").css({
              "background": "url('assets/img/bg2.jpg')no-repeat center center fixed"
          });
      });


      $("#button-bg3").click(function() {
    	  $.ajax({url:"/chinaTelecom/jobNumber/addBgImg.do?bgImg=bg.jpg"});
          $("body").css({
              "background": "url('assets/img/bg.jpg')no-repeat center center fixed"
          });


      });

      $("#button-bg5").click(function() {
    	  $.ajax({url:"/chinaTelecom/jobNumber/addBgImg.do?bgImg=giftly.png"});
          $("body").css({
              "background": "url('assets/img/giftly.png')repeat"
          });

      });

      $("#button-bg6").click(function() {
    	  $.ajax({url:"/chinaTelecom/jobNumber/addBgImg.do?bgImg=smallml.png"});
          $("body").css({
        	  "background": "url('assets/img/smallml.png')repeat"
          });

      });

      $("#button-bg7").click(function() {
    	  $.ajax({url:"/chinaTelecom/jobNumber/addBgImg.do?bgImg=bg3.png"});
          $("body").css({
              "background": "url('assets/img/bg3.png')repeat"
          });

      });
      $("#button-bg8").click(function() {
    	  $.ajax({url:"/chinaTelecom/jobNumber/addBgImg.do?bgImg=bg8.jpg"});
          $("body").css({
              "background": "url('assets/img/bg8.jpg')no-repeat center center fixed"
          });
      });
      $("#button-bg9").click(function() {
    	  $.ajax({url:"/chinaTelecom/jobNumber/addBgImg.do?bgImg=bg9.jpg"});
          $("body").css({
              "background": "url('assets/img/bg9.jpg')no-repeat center center fixed"
          });
      });

      $("#button-bg10").click(function() {
    	  $.ajax({url:"/chinaTelecom/jobNumber/addBgImg.do?bgImg=bg10.jpg"});
          $("body").css({
              "background": "url('assets/img/bg10.jpg')no-repeat center center fixed"
          });
      });
      $("#button-bg11").click(function() {
    	  $.ajax({url:"/chinaTelecom/jobNumber/addBgImg.do?bgImg=bg11.jpg"});
          $("body").css({
              "background": "url('assets/img/bg11.jpg')no-repeat center center fixed"
          });
      });
      $("#button-bg12").click(function() {
    	  $.ajax({url:"/chinaTelecom/jobNumber/addBgImg.do?bgImg=bg12.jpg"});
          $("body").css({
              "background": "url('assets/img/bg12.jpg')no-repeat center center fixed"
          });
      });

      $("#button-bg13").click(function() {
    	  $.ajax({url:"/chinaTelecom/jobNumber/addBgImg.do?bgImg=bg13.jpg"});
          $("body").css({
              "background": "url('assets/img/bg13.jpg')repeat"
          });

      });
      /**
       * Background Changer end
       */
  });

//TOGGLE CLOSE
    $('.nav-toggle').click(function() {
        //get collapse content selector
        var collapse_content_selector = $(this).attr('href');

        //make the collapse content to be shown or hide
        var toggle_switch = $(this);
        $(collapse_content_selector).slideToggle(function() {
            if ($(this).css('display') == 'block') {
                //change the button label to be 'Show'
                toggle_switch.html('<span class="entypo-minus-squared"></span>');
            } else {
                //change the button label to be 'Hide'
                toggle_switch.html('<span class="entypo-plus-squared"></span>');
            }
        });
    });


    $('.nav-toggle-alt').click(function() {
        //get collapse content selector
        var collapse_content_selector = $(this).attr('href');

        //make the collapse content to be shown or hide
        var toggle_switch = $(this);
        $(collapse_content_selector).slideToggle(function() {
            if ($(this).css('display') == 'block') {
                //change the button label to be 'Show'
                toggle_switch.html('<span class="entypo-up-open"></span>');
            } else {
                //change the button label to be 'Hide'
                toggle_switch.html('<span class="entypo-down-open"></span>');
            }
        });
        return false;
    });
    //CLOSE ELEMENT
    $(".gone").click(function() {
        var collapse_content_close = $(this).attr('href');
        $(collapse_content_close).hide();



    });

//tooltip
    $('.tooltitle').tooltip();
 