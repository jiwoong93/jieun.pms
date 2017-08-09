$(function () {
	//헤더부분 스크롤 작업
	// 작업 대상을 선택(헤더를 선택하고 선택된 객체를 순회[each()])
	$( '.page-header' ).each( function() {
		// 윈도우객체를 변수에 저장(창을 jQuery 오브젝트 화)
		var $window = $(window);
		
		// 헤드 객체를 변수에 저장(헤더를 jQuery 객체 화)
		var $header = $(this);
		
		// 헤더의 기본 위치(top)를 검색(offset().top)하여 변수에 저장
		var offTop = $header.offset().top;
		
		// 윈도우의 스크롤 이벤트를 모니터링(스크롤 이벤트가 발생하면 기능을 수행)
        $window.on('scroll', function(){
			// 이 때 스크롤 량을 확인하고 헤더의 기본 위치를 지나게되면 고정된 헤더가 되도록 지정
			// 그렇지 않을 경우 기본 헤더가 적용될 수 있도록 함 
			if ( $window.scrollTop() > offTop ) {
				$header.addClass( 'fixed' );
			}
			else {
				$header.removeClass( 'fixed' );
			}
        });
		
		//헤더의 초기 위치를 조정하기 위하여 강제적으로 트리거를 통한 스크롤 이벤트 발생
		$window.trigger('scroll');
    });
	
	$( '.page-category' ).each( function() {
		// 윈도우객체를 변수에 저장(창을 jQuery 오브젝트 화)
		var $window = $(window);
		
		// 헤드 객체를 변수에 저장(헤더를 jQuery 객체 화)
		var $header = $(this);
		
		// 헤더의 기본 위치(top)를 검색(offset().top)하여 변수에 저장
		var offTop = $header.offset().top; //216       168.4
		
		// 윈도우의 스크롤 이벤트를 모니터링(스크롤 이벤트가 발생하면 기능을 수행)
        $window.on('scroll', function(){
			// 이 때 스크롤 량을 확인하고 헤더의 기본 위치를 지나게되면 고정된 헤더가 되도록 지정
			// 그렇지 않을 경우 기본 헤더가 적용될 수 있도록 함 
			if ( $window.scrollTop()+46 > offTop ) {
				$header.addClass( 'fixed' );
			}
			else {
				$header.removeClass( 'fixed' );
			}
        });
		
		//헤더의 초기 위치를 조정하기 위하여 강제적으로 트리거를 통한 스크롤 이벤트 발생
		$window.trigger('scroll');
    });
	//헤더부분 스크롤 작업 끝
});