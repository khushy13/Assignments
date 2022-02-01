$(document).ready(function() {
    $('#next').hide();
});

$('#btn1').click(function() {
    $(this).hide();
    $('#title').hide();
    $('#subtitle').hide();
    $('#1').addClass('active');
    $('#next').show();
});

$('#next').click(function() {
    var $current = $('.question.active');
    $('.question').removeClass('active');
    $current.next('div').addClass('active'); 
});

var answers = {radio1: 'East', radio2: "Cow", radio3: "Tiger", radio4: "Hockey", radio5: "Lotus"};

$('#result').click(function() {
    var score = 0;
    $('#result').hide();
    $('#next').hide();
    $.each(answers, function(question, answer) {
        if($('input:radio[name="' + question + '"]:checked').val() == answer) 
            score += 1;
    });
    $('#questions').append("<h2> Your Score is: " +score +"/5 </h2>");
});
