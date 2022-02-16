$(function(){
    		
    		$('.terms > div > a:eq(1)').click(function(){
				
    			let checked1 = $('input[name=chk1]').is(":checked");
    			let checked2 = $('input[name=chk2]').is(":checked");
    			
    			
    			if(!checked1 || !checked2){
    				alert('동의를 해야합니다.');
    				return false;
    			}else{
    				return true;
    			}
    		});
    		
    	});