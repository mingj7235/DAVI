/*
 * 서머노트 로딩과 기본 설정
 * 
 * ※톰켓 server.xml에   파일 절대경로  맵핑설정 
 * 예)<Host>
 * 		<Context docBase="이미지가 저장될 시스템 경로" path="/summernoteImg" reloadable="false" />
 *   </Host>
 */

	

function summernoteStart() {
	$('#summernote').summernote({		  
		  //height: 400,                 // 에디터 높이				  
		  minHeight: 400,             // 최소 높이
		  //maxHeight: 500,             // 최대 높이				  
		  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		  lang: "ko-KR",					// 한글 설정
		  //disableResize: true,            // Does not work
		  //disableResizeEditor: true,      // Does not work either
		  //resize: false ,                  // Does not work either
		  placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정				  
		  toolbar: [
			    //[groupName, [list of button]],
			    ['fontname', ['fontname']],
			    ['fontsize', ['fontsize']],
			    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
			    ['color', ['forecolor','color']],
			    ['table', ['table']],
			    ['para', ['ul', 'ol', 'paragraph']],
			    ['height', ['height']],
			    ['insert',['picture','link','video']]
			    //['view', ['fullscreen', 'help']]
			  ],
			  //fontNamesIgnoreCheck : [ '맑은고딕' ],
			fontNames: ['Sans-Serif', 'Noto Sans KR', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New' ,'맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
			fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50'],
			callbacks: {
				onImageUpload: function(files, editor, welEditable) {						
		            for (var i = files.length - 1; i >= 0; i--) {		            	
		            	setTimeout(sendFile, 100, files[i], this);
		            	//sendFile(files[i], this);
		            }
				}
			}        
	 });
	$('.note-statusbar').hide()
}

function summernoteView() {
	$('#summernote').summernote({		
		  //height: '100%',                 // 에디터 높이	  
		  minHeight: 300,             // 최소 높이
		  //maxHeight: 500,             // 최대 높이
		  //disableResizeEditor: true,      // Does not work either
		  lang: "ko-KR",					// 한글 설정		  				  
		  toolbar: [ ]       
	 });	
	$('.note-statusbar').hide()
}

function sendFile(file, el) {
	var form_data = new FormData();
	form_data.append('file', file);	
	$.ajax({
		data : form_data,		
		type : "POST",
		url : path + '/board/summernoteFile.bo',
		cache : false,
		contentType : false,
		enctype : 'multipart/form-data',
		processData : false,
		success : function(img) {			
			$(el).summernote('insertImage', img);
		}
	});
}