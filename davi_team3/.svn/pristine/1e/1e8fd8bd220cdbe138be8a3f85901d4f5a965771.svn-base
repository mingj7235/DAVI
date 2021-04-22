/**
 * 
 */

function getReplyList (certificatedNum) {
	console.log(certificatedNum);
	$.ajax ({
		url : contextPath + "/board/certificatedBoardReplyList.bo?certificatedNum="+certificatedNum,
		//data: {'certificatedNum': certificatedNum},
		type: "get",
		dataType :"json",
		//async : false,
		success : showReplyList
	});
	
}

function showReplyList (lists) {
	let text = "";
	let textMini = "";
	let number;
	$.each(lists, function (index, list){
			if(lists.length > 3) {
				if(index < 3) {
					textMini +='<div style="display : flex; justify-content: flex-start; height: 30px; padding: 5px;">' +
					'<div style="width: 20%;">' + list.memberId +'</div>'+
					'<div style="width: 70%;">' + list.certificatedReplyContent + '</div>' ;
					if(sessionId == list.memberId){
						textMini += '<div id="iconminus" style="width: 10%; text-align: right; margin: 0 5px; cursor: pointer;">' +
						'<a href="javascript:deleteReply('+ list.certificatedNum+',' + list.certificatedReplyNum + ')"> '+
						'<i id="" class="far fa-minus-square icon_color" onclick=""></i></a></div>';
					}
					textMini += '</div>';
				}
			text += '<div style="display : flex; justify-content: flex-start; height: 30px; padding: 5px;">' +
			'<div style="width: 20%;">' + list.memberId +'</div>'+
			'<div style="width: 70%;">' + list.certificatedReplyContent + '</div>' ;
			
			if(sessionId == list.memberId){
				text += '<div id="iconminus" style="width: 10%; text-align: right; margin: 0 5px; cursor: pointer;">' +
				'<a href="javascript:deleteReply('+ list.certificatedNum+',' + list.certificatedReplyNum + ')"> '+
				'<i id="" class="far fa-minus-square icon_color" onclick=""></i></a></div>';
			}
			text += '</div>';			
			} else {
				textMini +='<div style="display : flex; justify-content: flex-start; height: 30px; padding: 5px;">' +
				'<div style="width: 20%;">' + list.memberId +'</div>'+
				'<div style="width: 70%;">' + list.certificatedReplyContent + '</div>' ;
				if(sessionId == list.memberId){
					textMini += '<div id="iconminus" style="width: 10%; text-align: right; margin: 0 5px; cursor: pointer;">' +
					'<a href="javascript:deleteReply('+ list.certificatedNum+',' + list.certificatedReplyNum + ')"> '+
					'<i id="" class="far fa-minus-square icon_color" onclick=""></i></a></div>';
				}
				textMini += '</div>';
				
				text += '<div style="display : flex; justify-content: flex-start; height: 30px; padding: 5px;">' +
				'<div style="width: 20%;">' + list.memberId +'</div>'+
				'<div style="width: 70%;">' + list.certificatedReplyContent + '</div>' ;
				
				if(sessionId == list.memberId){
					text += '<div id="iconminus" style="width: 10%; text-align: right; margin: 0 5px; cursor: pointer;">' +
					'<a href="javascript:deleteReply('+ list.certificatedNum+',' + list.certificatedReplyNum + ')"> '+
					'<i id="" class="far fa-minus-square icon_color" onclick=""></i></a></div>';
				}
				text += '</div>';	
			}
			number = list.certificatedNum;
			console.log(lists.length);
	});
	
	document.getElementById("replyAjaxDiv_" + number +"_mini").innerHTML=textMini;	
	
	document.getElementById("replyAjaxDiv_" + number).innerHTML=text;	
	
}

function writeReply (num, id) {

	
	var content = document.getElementById("replyContents_" + num).value;
	console.log(document.getElementById("replyContents_" + num));
	
	$.ajax ({
		url : contextPath + "/board/certificatedBoardReplyWriteOk.bo",
		data: {'certificatedNum' : num, 'memberId' : id, 'certificatedReplyContent' : content},
		type: "post",
		//async : false,
		success : function(num) {
			document.getElementById("replyContents_" + num).value = "";
			getReplyList(num);			
		}
		
	});
	
	console.log(content);
	
}

function deleteReply (certificatedNum, certificatedReplyNum) {
	console.log(certificatedReplyNum);
	console.log('구분점');
	console.log(certificatedNum);
	$.ajax({
		url : contextPath + "/board/certificatedBoardReplyDeleteOk.bo",
		type : "post",
		data : {"certificatedReplyNum" : certificatedReplyNum}, 
		dataType : "text",
		async : false,		
		success : function(result){
			getReplyList(certificatedNum);
		}
	});
}

