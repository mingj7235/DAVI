var headers = [$("#best"), $("#free"), $("#cheat")];
var posts = [$("#best_posts"), $("#free_posts"), $("#cheat_posts")];

var temp_header;

$(headers).each(function(index,item){
	
	item.click(function(){
		
		headers[0].attr("class","");
		
		if(temp_header != undefined){
			$(temp_header).attr("class","");
		}
		
		temp_header = item;
		
		item.attr("class","major");
		
		$(posts).each(function(idx,obj){
			obj.css("display","none");
		});
		
		posts[index].show();
	});
});

var iconBox = $(".icon-box");
var iconBox_a = iconBox.children("a");
var iconBox_img = iconBox_a.children("img");

if(window.outerWidth < 1450){
	iconBox_img.width('50px');
	iconBox_img.height('50px');
	iconBox_a.css('font-size','1rem');
}

