$(function() {
	$.ajax({
		url: 'XML/book.xml',
		type: 'GET',
		dataType: 'xml',
		success: xmlParser
	});
	
	function xmlParser (xml) {

		$(xml).find('book').each(function () {
			$(".main").append('<ul class="title">' + 
				$(this).find("title").text() + '<li class="describe">' + 
				$(this).find("describe").text() + '</li><li class="author">' + 
				$(this).find("author").find('fio').text() + '</li><li class="selldate">Published ' + 
				$(this).find("selldate").text() + '</li></ul>');
		});
	};

});