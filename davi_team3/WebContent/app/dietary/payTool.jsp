<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="name" value="${param.name}"></c:set>
<c:set var="phone" value="${param.phone}"></c:set>
<c:set var="email" value="${param.email}"></c:set>
<c:set var="zipcode" value="${param.zipcode}"></c:set>
<c:set var="adress" value="${param.adress}"></c:set>
<c:set var="adressDetails" value="${param.adressDetails}"></c:set>
<c:set var="id" value="${session_id}"></c:set>

<c:set var="product" value="${param.product}"></c:set>
<c:set var="price" value="${param.price}"></c:set>
</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
	var contextPath ="${pageContext.request.contextPath}";
	
	var id = "${id}";
	var name ="${name}";
	var phone ="${phone}";
	var email ="${email}";
	var zipcode ="${zipcode}";
	var adress ="${adress}";
	var adressDetails ="${adressDetails}";
	var realAdd = adress+adressDetails;
		
	var product = "${product}";
	var StringPrice = "${price}";
	var price = parseInt(StringPrice);

	IMP.init('imp68449525');
	IMP.request_pay({
	    pg : 'inicis', // version 1.1.0부터 지원.
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '주문명:' + product,
	    amount : /* price */100,
	    buyer_email : email,
	    buyer_name : /* '구매자이름' */ name,
	    buyer_tel : phone,
	    buyer_addr : realAdd,
	    buyer_postcode : zipcode
	   /*  m_redirect_url : 모바일 있을때 돌아갈 곳  */
	}, function(rsp) {
	    if ( rsp.success ) {
	        var msg = '결제가 완료되었습니다.';
	   		alert(msg);
	        location.href=contextPath+"/member/memberPay.me?id="+id+"&name="+name+"&phone="+phone+"&email="+email+"&zipcode="+zipcode+"&adress="+adress+"&adressDetails="+adressDetails+"&product="+product+"&price="+price;
	    } else {
	        var msg = '결제에 실패하였습니다.';
	   		alert(msg);
	        location.href=contextPath + "/app/dietary/payment.jsp";
	    }
	});
</script>
</html>