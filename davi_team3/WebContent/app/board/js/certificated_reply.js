/**
 * 
 */

function getReplyList (certificatedNum) {
	
	$.ajax ({
		url : contextPath + "/board/certificatedBoardReplyList.bo?certificatedNum="+certificatedNum,
		//data: {'certificatedNum': certificatedNum},
		type: "get",
		dataType :"json",
		success : showReplyList
	});
	
}

function showReplyList (lists) {
	let text = "";
	$.each(lists, function (index, list){
			text += '<div id = "replyContents_${certificatedList[i].getCertificatedNum()}" style="display : flex; justify-content: flex-start; height: 30px; padding: 5px;">' +
			'<div style="width: 20%;">' + list.memberId +'</div>'+
			'<div style="width: 70%;">' + list.certificatedReplyContent + '</div>' +
			'<div id="iconminus" style="width: 10%; text-align: right; margin: 0 5px; cursor: pointer;">' + 
			'<i id="" class="far fa-minus-square icon_color" onclick=""></i>' +
			'</div><div id="iconminusmore" style="width: 10%; text-align: right; margin: 0 5px; display: none; cursor: pointer;">' +
			'<input id=""type="button" value="삭제" style="box-shadow: none; padding : 0 5px;;color: rgba(0, 59, 251, 0.3) !important;"></div></div>';
	});
	
	document.getElementById("replyAjaxDiv").innerHTML=text;
	
	
	
}

/*function writeReply () {
	
	$.ajax ({
		url : ,
		data: ,
		type: "post",
		success : getReplyList()
		
	});
	
}*/

