var certificatedNum = 2;

function getList(){
			$.ajax({
				url : contextPath + "/board/ceritificatedBoardAjax.bo?certificatedNum=" + certificatedNum,
				//data: {'certificatedNum': certificatedNum},
				type : "get",
				dataType : "json",
				success : showList
			});
		}
		
		//replys = [{key:value,key:value }, {key:value,key:value}]
 		function showList(pages){			
			var text = "헤더";
			if(pages != null && pages.length != 0){
				$.each(pages, function(index, page){	
					//JSON.parse(page)
					text += "<p>" + page.memberId + "</p>";				
					text += "<p>" + page.certificatedNum + "</p>";				
					text += "<p>" + page.certificatedTitle + "</p>";				
					text += "<p>" + page.certificatedContent + "</p>";				
					text += "<p>" + page.certificatedDate + "</p>";				
					text += "<p>" + page.certificatedFilePath + "</p>";				
					
				});
			}else{
				text += "푸터";
			}
			
			//새로운 요소 만들어서 값넣고 끝에 추가하기
			var newDIV = document.createElement("div");
			newDIV.innerHTML = text;
			document.getElementById("listAJAX").appendChild(newDIV); 
			certificatedNum = certificatedNum +2;			
		} 