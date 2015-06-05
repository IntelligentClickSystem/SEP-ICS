(function($) {
    $.fn.jquizzy = function(settings) {
        var defaults = {
            questions: null,
            startImg: 'images/start.gif',
            endText: '已结束!',
            shortURL: null,
            sendResultsURL: null,
            resultComments: {
                perfect: '你是爱因斯坦么?',
                excellent: '非常优秀!',
                good: '很好，发挥不错!',
                average: '一般般了。',
                bad: '太可怜了！',
                poor: '好可怕啊！',
                worst: '悲痛欲绝！'
            }
        };
        var config = $.extend(defaults, settings);
        if (config.questions === null) {
            $(this).html('<div class="intro-container slide-container"><h2 class="qTitle">Failed to parse questions.</h2></div>');
            return;
        }
        var superContainer = $(this),
        answers = [],
        introFob = '    <div class="intro-container slide-container"><a class="nav-start" href="#">请认真完成测试题。准备好了吗？<br/><br/><span><img src="'+config.startImg+'"></span></a></div>  ',

        contentFob = '',
        questionsIteratorIndex;
        superContainer.addClass('main-quiz-holder');
        for (questionsIteratorIndex = 0; questionsIteratorIndex < config.questions.length; questionsIteratorIndex++) {
            contentFob += '<div class="slide-container"><div class="question">' + config.questions[questionsIteratorIndex].question + '</div><ul class="answers">';
            
            contentFob += '</ul><div class="nav-container">';
     
            contentFob += '<div class="prev"><a class="nav-previous" href="#">否</a></div>';    
       
            contentFob += '<div class="next"><a class="nav-next" href="#">是</a></div>';
          
            contentFob += '</div></div>';
            answers.push(config.questions[questionsIteratorIndex].correctAnswer);
        }
        superContainer.html(introFob + contentFob);
        superContainer.find('.slide-container').hide().first().fadeIn(500);
        superContainer.find('.nav-start').click(function() {
            $(this).parents('.slide-container').fadeOut(500,
            function() {
                $(this).next().fadeIn(500);
            });
            return false;
        });

        $(".expert-box").hide();
        superContainer.find('.next').click(function(){
            $.ajax ({
                url:'./quizAction',
                type:'POST',
                data:{'title':"data"},
                dataType:'json',
                success: function(data){
                	$(".question").text(data.quiz.contens);
                    $(".demo").fadeOut(500);
                    
                    $(".expert-box").fadeIn(500);
                    $(data.doctorInfo).each(function (i, value) {                     
                    	content = '<li class="g-clear  bx-clone">';
                    	content += '<a class="img" href="./images/grid1.png" target="_blank" onmousedown="return _smartlog(this,&#39;DOC&#39;)"><img src="./images/grid1.png" onerror="this.src=&#39;"></a>';
                    	content += '<dl><dt><a href="doctorInfo.jsp?id='+value.id;
                    	content += '" target="_blank" onmousedown="return _smartlog(this,&#39;DOC&#39;)">'+value.name+'</a>&nbsp;';
                    	content += '<span class="level">' + value.level + '</span></dt>';
                    	content += '<dd class="orange">'+value.type+'</dd></dl><div class="clear"></div>';
					    content += '<div class="bottom"><i class="top"></i><i class="left flag"></i>'+value.introduction;
					    content += '<i class="right flag"></i></div></li>';
                    	$(".expert-box .content ul").append(content);                                 
                  });
                }
            });
       });
    };
    
    $.fn.doSomething = function(){
    	
    };
})(jQuery);