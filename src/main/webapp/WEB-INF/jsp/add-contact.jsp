<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp" %>

<div class="content">

<form:form id="addForm" commandName="addressBookContact" cssClass="form-horizontal registrationForm">

	<c:if test="${param.success eq true}">
		<div class="alert alert-success">Kontakt został dodany!</div>
	</c:if>

	<div class="form-group">
		<label for="firstName" class="col-sm-2 control-label">Imię:</label>
		<div class="col-sm-10">
			<form:input path="firstName" cssClass="form-control" />
			<form:errors path="firstName" />
		</div>
	</div>
	<div class="form-group">
		<label for="lastName" class="col-sm-2 control-label">Nazwisko:</label>
		<div class="col-sm-10">
			<form:input path="lastName" cssClass="form-control" />
			<form:errors path="lastName" />
		</div>
	</div>
	
	<div class="form-group">
		<label for="phoneNumber" class="col-sm-2 control-label">Numer telefonu:</label>
		<div class="col-sm-10">
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon1">+48</span>
				<form:input path="phoneNumber" cssClass="form-control" />
				
			</div>
			<form:errors path="phoneNumber" />
		</div>
	</div>
	<div class="form-group">
		<label for="postCode" class="col-sm-2 control-label">Kod pocztowy:</label>
		<div class="col-sm-10">
			<form:input path="postCode" cssClass="form-control" />
			<form:errors path="postCode" />
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-2">
			<input type="submit" value="Zapisz" class="btn btn-lg btn-primary" />
		</div>
	</div>
</form:form>
</div>


<script type="text/javascript">

jQuery(function($){
	   $("#postCode").mask("99-999",{placeholder:"_"});
	   $("#phoneNumber").mask("9999999999",{placeholder:" "});
	});

</script>

