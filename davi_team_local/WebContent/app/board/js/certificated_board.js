var certificatedNum = 3;

var check = true;

	function getList(){
				$.ajax({
					url : contextPath + "/board/ceritificatedBoardAjax.bo?certificatedNum=" + certificatedNum,
					//data: {'certificatedNum': certificatedNum},
					type : "get",
					dataType : "json",
					success : showList
				});
			}
		var num = 1;
 		function showList(pages){			
 			var text = "";
 			if(pages != null && pages.length != 0){
 				$.each(pages, function(index, page){	
 					//JSON.parse(page)
 				   text += '<div class="certificated_box" style="height: auto; margin-top: 20px; padding-bottom:30px; border-bottom: none;">';      
 	               text += '<div style="display : flex; justify-content: center; height: 30px;"> <div style="width:10%;">' +
 	                     '<img id="" name="" class="profile" src="' + contextPath + '/images/개인식단.png"' +
 	                     'alt="" style="margin:5px; width: 35px; height: 35px; cursor: pointer;" onclick="#"/> </div>' +
 	                     '<div id="" style="width:10%; padding-top: 10px; margin-left: 5px;">' + page.memberId +'</div>' +
 	                     '<div class="icon_color" style="display: flex; justify-content: flex-end; width:80%; padding-top: 10px; padding-right: 10px;">' +
 	                     '<div id="menuHover"><i class="fas fa-ellipsis-h" onclick="#" style="cursor: pointer;"></i>';
 	               
 	               text += '<ul id="sub-menu" style="display: flex;flex-direction: column;"><li><a href="" type="button">수정</a></li>' +
						  '<li><a href="' + contextPath + '/board/certificateDeleteOk.bo?certificatedNum=' +
						  page.certificatedNum + '" type="button">삭제</a></li></ul></div></div></div>';
 	            	   
 	               text += '<div style="height: 30px; padding-top: 5px; margin:5px;"><h4>' + page.certificatedTitle +'</h4></div>';
 	               
 	               text += '<div style="width: 70%; margin: 3% auto;"><div style="position:relative; width:100%; height: 0; padding-bottom:100%; ">' +
 	                     '<img src="'+ page.certificatedFilePath +'" style="display:inline-block; width:100%; height:100%; position:absolute; top:0; left:0; z-index:-1">' +
 	                     '<img id="likeMark" src="' + contextPath + '/images/logo_blue_board.png" style="display:none; width:100%; margin-top:10%"></div></div>';
 	               
 	               text += '<div class="icon_color" style="display : flex; justify-content: flex-start; height: 35px; padding: 5px;">' +
 	               		 ' <c:choose><c:when test="' + page.certificatedlikeCheck + ' == \'true\'}"><div id="checkedDiamond_' + page.certificatedNum + '}"' +
						 'style="font-size: 1.2rem; padding-top: 2px; color:#0038fb;" onclick="unchangeDiamond(' + page.certificatedNum + ')">' +
						 '<i class="fas fa-gem fa-lg" style="cursor: pointer; " ></i></div>' +
						 '<div id="diamond_' + page.certificatedNum + '" style="font-size: 1.2rem; padding-top: 2px; display : none;" onclick="changeDiamond(' + page.certificatedNum + ')">' +
						 '<i  class="far fa-gem fa-lg" style="cursor: pointer;" ></i></div></c:when><c:otherwise>' +
						 '<div id="checkedDiamond_' + page.certificatedNum + '" style="font-size: 1.2rem; padding-top: 2px; color:#0038fb;' +
						 ' display : none;" onclick="unchangeDiamond(' + page.certificatedNum + ')"><i class="fas fa-gem fa-lg" style="cursor: pointer; " ></i>' +
						 '</div><div id="diamond_' + page.certificatedNum + '" style="font-size: 1.2rem; padding-top: 2px;" onclick="changeDiamond(' + page.certificatedNum + ')">' +
						 '<i  class="far fa-gem fa-lg" style="cursor: pointer;" ></i></div></c:otherwise></c:choose>';
 	               
 	               text += '<div style="font-size: 1.3rem;" onclick ="focusComment()">' +
					     '<i class="far fa-comment fa-lg" style="cursor: pointer; margin-left: 9px;" onclick="#"></i></div></div>'; 
 	               
 	               text += '<div style="display : flex; justify-content: flex-start; height: 30px; padding: 5px;"><div>좋아요&nbsp;</div>' +
 	                     '<div class ="icon_color" id="diamond_num_' + page.certificatedNum + '" style="color:#0038fb;">' +
 	                    page.certificatedlikeCnt + '</div><div>개</div></div>';
 	               
 	               text += '<div style="display : flex; justify-content: flex-start; height: 30px; padding: 5px;">' +
 	                     '<div id="" style="width: 20%;">'+page.memberId+'</div>' +
 	                     '<div id="mainPreview" style="width: 70%;">'+page.certificatedContentMini +'</div>' +
 	                     '<textarea class="certificated_textarea" id="mainDetail" style="display: none; height: 50px; resize: none;" readonly="readonly">'+page.certificatedContent+'</textarea>' +
 	                     '<div id="iconplus" style="width: 10%; text-align: right; margin: 0 5px; cursor: pointer;">' +
 	                     '<i id="" class="far fa-plus-square icon_color"></i></div>' +
 	                     '<div id="iconmore" style="width: 10%; text-align: right; margin: 0 5px; display: none; cursor: pointer;">' +
 	                     '<input id=""type="button" value="더보기" style="box-shadow: none; padding : 0 5px;;color: rgba(0, 59, 251, 0.3) !important;" onclick="mainDetail()">' +
 	                     '</div></div>';
 	                     
 	               text += '<div id="ajaxFunction"><div id = "replyAjaxDiv_' + page.certificatedNum + '"></div></div>'
 	               
 	               text += '<div style="display : flex; justify-content: flex-start; height: 30px; padding: 5px;">' +
							'<div style="width: 20%; padding-top: 5px;">' + page.replyWriterId + '</div>' +
							'<input id="replyContents_' + page.certificatedNum + '"type="text" placeholder="댓글을 작성해주세요" ' +
							' style="width:70%; border:0; border-bottom: 1px solid rgba(0, 59, 251, 0.3);"/>' +
							'<input type="button" value="등록" style="width:10%; margin: 0 5px; box-shadow: none; color: rgba(0, 59, 251, 0.3)!important"' + 
							'onclick="javascript:writeReply(' + page.certificatedNum +  ',\'' + page.replyWriterId + '\')">';
 	                     
 	               text +=  '</div></div><div style="height: 20px; border-top : 1px solid rgba(164, 167, 170, 0.3);)"></div>';
 	                     	console.log("보드넘버 : " + page.certificatedNum);
 	                     	getReplyList(page.certificatedNum);
 				});
 			}
 			//새로운 요소 만들어서 값넣고 끝에 추가하기
 			var newDIV = document.createElement("div");
 			newDIV.innerHTML = text;
 			document.getElementById("listAJAX").appendChild(newDIV); 
 			check = true;
 			certificatedNum = certificatedNum +2;			
 		} 
 		
 		$(window).scroll(function(){
 			var div = document.getElementById('scrollDiv');
 			var winH = window.innerHeight;
 			var postFromBottom = div.getBoundingClientRect().bottom;
 			if(winH > postFromBottom){
 				if(check){
 					check = false;
 					setTimeout(function(){
 						getList();
 					},500);
 				}
 			}
 		});
 		
 		
		var diamondCheck = false; 
 		
 		function changeDiamond(num) {
 			var diamond = $("#diamond_" + num);
 			var checkedDiamond = $("#checkedDiamond_" + num);
 			var likeMarkDiamond = $("img#likeMark");
 			
			diamond.css('display', 'none');
			checkedDiamond.css('display','');
			diamondCheck = true;
			likeMarkDiamond.fadeIn(500);
			likeMarkDiamond.fadeOut(500);
			/*var id = sessionStorage.getItem("session_id");*/
			var id = sessionId;			
			$.ajax({
				url: contextPath + "/board/ceritificatedBoardLikeOk.bo?memberId="+ id +"&certificatedNum=" + num + "&likeCheck=1" ,
				type : "get",
				dataType : "text",
				success : function(result){
					$("#diamond_num_" + num ).text(result.trim());
				}	
			});
		}
		
		function unchangeDiamond(num){
			var diamond = $("#diamond_" + num);
 			var checkedDiamond = $("#checkedDiamond_" + num);
			var likeMarkDiamond = $("img#likeMark");
			
			diamond.css('display','');
			checkedDiamond.css('display', 'none');
			diamondCheck = false;
			var id = sessionId;
			$.ajax({
				url: contextPath + "/board/ceritificatedBoardLikeOk.bo?memberId="+ id +"&certificatedNum=" + num + "&likeCheck=0",
				type : "get",
				dataType : "text",
				success : function(result){
					$("#diamond_num_" + num).text(result.trim());
				}		
			});
			
		}
 		
 		