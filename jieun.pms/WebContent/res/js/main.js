$(function () {
	//슬라이드 부분
	$('.slideshow').each(function(){
		var $master = $(this),
			$slideGroup = $master.find('.slideshow-slides'),
			$slides = $slideGroup.find('.slide'),
			$slideNav = $master.find('.slideshow-nav'),
			$slideIndicator = $master.find('.slideshow-indicator');
		
		var slideCount = $slides.length,
			currentIndex = 0,
			indicatorHTML = '',
			duration = 300,
			intervalTime = 3000,
			easing = 'easeOutSine',
			timer;
			
		//indicator 태그 만들어서 삽입 (for문으로 해도 됨)
		$slides.each(function(i){
			$(this).css( { left: 100*i + '%' } );	//absolute로 묶인 이미지를 옆으로 열어주는 효과
			indicatorHTML = indicatorHTML + '<a href="#">' + (i+1) + '</a>';
		});
		$slideIndicator.html(indicatorHTML);
		
		//슬라이드 표시하는 함수
		function slideDisplay(index){
			//계속 반복하고 싶을때
			if(index >= slideCount){
				index = index % slideCount;
			}else if(index < 0){
				index = index + slideCount;
			}
			//반복 끝
			$slideGroup.animate({left: -100*index+"%"}, duration, easing);
			currentIndex = index;
			updateNav();
		}
		
		function updateNav(){
			/* 반복하지 않을때 추가
			var $navPrev = $slideNav.find('.prev'),
				$navNext = $slideNav.find('.next');
			
			if( currentIndex == 0 ){
				//뒤로가기가 없어져야 한다
				$navPrev.addClass('disabled');
			}else{
				//뒤로가기가 보여져야 한다
				$navPrev.removeClass('disabled');
			}
			
			if( currentIndex == slideCount-1 ){
				//앞으로가기가 없어져야 한다
				$navNext.addClass('disabled');
			}else{
				//앞으로가기가 보여져야 한다
				$navNext.removeClass('disabled');
			}
			*/
			
			//indicator(흑백 조정)
			//전부 흰색으로 만들고난 다음 현재것만 검은색으로
			$slideIndicator.find('a').removeClass('current').eq(currentIndex).addClass('current');
		}
		
		function startTimer(){
			timer = setInterval(function(){
				var nextIndex = (currentIndex+1) % slideCount;
				slideDisplay(nextIndex);
			}, intervalTime);
		}
		function stopTimer(){
			clearInterval(timer);
		}
		
		//네비게이터 클릭 이벤트 등록
		$slideNav.on('click', 'a', function(e){
			e.preventDefault();				//a태그에 href가 #이외일때는 해당라인이 없으면 href가 나오게된다
			if($(this).hasClass('prev')){	//이전버튼을 눌렀을때
				slideDisplay(currentIndex-1);
			}else{							//다음버튼을 눌렀을때
				slideDisplay(currentIndex+1);
			}
		});
		
		//인디케이터 이벤트 등록
		$slideIndicator.on('click', 'a', function(e){
			e.preventDefault();
			if( !( $(this).hasClass('current') ) ){	//현재 디스플레이된 이미지와 관련된 인디케이터가 아닐경우
				slideDisplay($(this).index());
			}
		});
		
		//마우스 호버, 아웃 이벤트 등록
		$master.on({
			mouseenter : stopTimer,
			mouseleave : startTimer
		})
		
		slideDisplay(currentIndex);
		startTimer();
		
	});
	//슬라이드 부분 끝
});
