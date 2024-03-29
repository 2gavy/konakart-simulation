<%--
//
// (c) 2012 DS Data Systems UK Ltd, All rights reserved.
//
// DS Data Systems and KonaKart and their respective logos, are 
// trademarks of DS Data Systems UK Ltd. All rights reserved.
//
// The information in this document is free software; you can redistribute 
// it and/or modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
// 
// This software is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
//
--%>
<%@include file="Taglibs.jsp" %>

<% com.konakart.al.KKAppEng kkEng = (com.konakart.al.KKAppEng) session.getAttribute("konakartKey");  %>

 				<h1 id="page-title"><kk:msg  key="header.logout.page"/></h1>			
	    		<div class="content-area rounded-corners">
		    		<div id="checkout-finished">
			    		<form action="CheckoutFinishedSubmit.action" id="form1" method="post">
			    			<input type="hidden" value="<%=kkEng.getXsrfToken()%>" name="xsrf_token"/>
							<div class="form-section">
								<div class="notification-header">
									<kk:msg  key="logout.body.message"/>
									<%if (kkEng.getLoginType() != null && kkEng.getLoginType().equalsIgnoreCase(com.konakart.al.CustomerMgr.FACEBOOK)) {%> 
										<kk:msg  key="logout.body.message.fb"/>
									<%}%>
									<%if (kkEng.getLoginType() != null && kkEng.getLoginType().equalsIgnoreCase(com.konakart.al.CustomerMgr.PAYPAL)) {%> 
										<kk:msg  key="logout.body.message.pp"/>
									<%}%>
									<%if (kkEng.getLoginType() != null && kkEng.getLoginType().equalsIgnoreCase(com.konakart.al.CustomerMgr.GOOGLESIGNIN)) {%> 
										<kk:msg  key="logout.body.message.gp"/>
									<%}%>
								</div>
							</div>
							<div class="form-buttons-wide">
								<a href="Welcome.action" id="continue-button" class="button small-rounded-corners"><span><kk:msg  key="common.continue"/></span></a>
							</div>
						</form>
			    	</div>
	    		</div>
				<script>
					sessionStorage.clear();
				</script>