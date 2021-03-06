(function($) {
    $.fn.jquizzy = function() {
        $(".search-box").hide();
        $('.search-btn').click(function(){
            $.ajax ({
                url:'./quizAction',
                type:'POST',
                data:{'title':"data"},
                dataType:'json',
                success: function(data){
                	$(".question").text(data.quiz.contens);
                    $(".demo").fadeOut(500);
                    
                    $(".search-box").fadeIn(500);
                    $(data.doctorInfo).each(function (i, value) {                     
                                     
                  });
                }
            });
       });

        $(".control-btn").click(function(id){
            $.MsgBox.Confirm("温馨提示","您确认要预约挂号吗?");
        });
        
        $("#diseaseInput").keyup(function(){
    		var diseaseDes =$("#diseaseInput").attr("value");//获得text的值
    		$("#quizlist").empty();
    		$.ajax({ 
    		    type:'POST',        //请求的方式GET/POST 
    		    url:"./quizAction",    //请求的服务器地址 
    		    cache:false,        //是否缓存 
    		    data:{'descrip':diseaseDes},//传递给服务器的数据,是JSON键值对格式 
    		    dataType:'json',    //返回的数据类型 
    		    success:function(data){//请求成功时执行的操作 
    		    	
    		    	$(data.quizlist).each(function (i, value) {     		    		
    		    		$("#quizlist").append("<br>" + value.contens + "</br  >");     		    	
    		    	}); 

    		    } 
    		});
    	});

        
   
    
    //show all the departments
//    $("#allDepartments").onchange(function(){
//    	var checkvalue = $("#allDepartments").val();
//    	$.ajax({
//    		type: 'POST',
//    		url: "./displayDepartAction",
//    		data: {},
//    		dataType : 'json',
//    		success:function(data){
//    		//显示数据
//    			
//    			$(data.departmentList).each(function(i,value){
//    				$("#allDepartments").append("<option value='"+value.departmentId+"'>"+value.departmentName+"</option>");
//    				
//    			});
//    		}
//    	});
//    	
//    });
    
   
    }; 
    
    $.MsgBox = {
        Alert: function (title, msg) {
            GenerateHtml("alert", title, msg);
            btnOk();  //alert只是弹出消息，因此没必要用到回调函数callback
            btnNo();
        },
        Confirm: function (title, msg, callback) {
            GenerateHtml("confirm", title, msg);
            btnOk(callback);
            btnNo();
        }
    }
    //生成Html
    var GenerateHtml = function (type, title, msg) {
        var _html = "";
        _html += '<div id="mb_box"></div><div id="mb_con"><span id="mb_tit">' + title + '</span>';
        _html += '<a id="mb_ico">x</a><div id="mb_msg">' + msg + '</div><div id="mb_btnbox">';
        if (type == "alert") {
            _html += '<input id="mb_btn_ok" type="button" value="确定" />';
        }
        if (type == "confirm") {
            _html += '<input id="mb_btn_ok" type="button" value="确定" />';
            _html += '<input id="mb_btn_no" type="button" value="取消" />';
        }
        _html += '</div></div>';
        //必须先将_html添加到body，再设置Css样式
        $("body").append(_html); GenerateCss();
    }
    //生成Css
    var GenerateCss = function () {
        $("#mb_box").css({ width: '100%', height: '100%', zIndex: '99999', position: 'fixed',
            filter: 'Alpha(opacity=60)', backgroundColor: 'black', top: '0', left: '0', opacity: '0.6'
        });
        $("#mb_con").css({ zIndex: '999999', width: '400px', position: 'fixed',
            backgroundColor: 'White', borderRadius: '15px'
        });
        $("#mb_tit").css({ display: 'block', fontSize: '14px', color: '#444', padding: '10px 15px',
            backgroundColor: '#DDD', borderRadius: '15px 15px 0 0',
            borderBottom: '3px solid #009BFE', fontWeight: 'bold'
        });
        $("#mb_msg").css({ padding: '20px', lineHeight: '20px',
            borderBottom: '1px dashed #DDD', fontSize: '13px'
        });
        $("#mb_ico").css({ display: 'block', position: 'absolute', right: '10px', top: '9px',
            border: '1px solid Gray', width: '18px', height: '18px', textAlign: 'center',
            lineHeight: '16px', cursor: 'pointer', borderRadius: '12px', fontFamily: '微软雅黑'
        });
        $("#mb_btnbox").css({ margin: '15px 0 10px 0', textAlign: 'center' });
        $("#mb_btn_ok,#mb_btn_no").css({ width: '85px', height: '30px', color: 'white', border: 'none' });
        $("#mb_btn_ok").css({ backgroundColor: '#168bbb' });
        $("#mb_btn_no").css({ backgroundColor: 'gray', marginLeft: '20px' });
        //右上角关闭按钮hover样式
        $("#mb_ico").hover(function () {
            $(this).css({ backgroundColor: 'Red', color: 'White' });
        }, function () {
            $(this).css({ backgroundColor: '#DDD', color: 'black' });
        });
        var _widht = document.documentElement.clientWidth;  //屏幕宽
        var _height = document.documentElement.clientHeight; //屏幕高
        var boxWidth = $("#mb_con").width();
        var boxHeight = $("#mb_con").height();
        //让提示框居中
        $("#mb_con").css({ top: (_height - boxHeight) / 2 + "px", left: (_widht - boxWidth) / 2 + "px" });
    };
    //确定按钮事件
    var btnOk = function (callback) {
        $("#mb_btn_ok").click(function () {
            $("#mb_box,#mb_con").remove();
            window.location = "./reservationTime.jsp";
            if (typeof (callback) == 'function') {
            	
            	callback();
            }
        });
    };
    //取消按钮事件
    var btnNo = function () {
        $("#mb_btn_no,#mb_ico").click(function () {
            $("#mb_box,#mb_con").remove();
        });
    };
})(jQuery);