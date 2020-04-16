$(document).ready(function() {
	
	

	$('.reward-key, .programCancel').on('click', function() {
        var rewardKey = $('.showKey');
        var closeReward =  $('.closeIcon');
        if(rewardKey.css('display') == 'flex') {
            rewardKey.hide();
            $('.reward-key').css('width', '60px');
            $('.programContain').fadeIn();
            closeReward.fadeIn();
        } else {
            closeReward.hide();
            $('.programContain').fadeOut();
            $('.reward-key').css('width', '150px');
            setTimeout(function() {
                rewardKey.fadeIn();
            }, 200);
        }
    });
    


   
    
    
});