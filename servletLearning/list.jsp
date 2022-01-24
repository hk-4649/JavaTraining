<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="todo.ModelList"%>
<%@ page import="todo.TodoObject"%>
<html>
<head>
<title>Todoリスト</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css"">
</head>
<body>
	<div class="container">
		<h3>Todoリスト</h3>
		<table class="table table-striped table-bordered table-sm">
			<tr>
				<th class="text-center" style="width: 80%">Todo名称</th>
				<th class="text-center" style="width: 20%">削除</th>
			</tr>
			<%
			ModelList model = new ModelList();
			List<TodoObject> list = model.getDbData();
			for (TodoObject obj : list) {
			%>
			<tr>
				<td class="align-middle"><%=obj.getName()%></td>
				<td>
					<form class="center-block" action="/delete" method="post"
						style="margin-bottom: 0px; display: flex; justify-content: center; align-items: center;">
						<input type="hidden" name="id" value="<%=obj.getId()%>" /> <input
							class="btn btn-secondary td_vertical_align_middle" type="submit"
							value="削除" />
					</form>
				</td>
			</tr>
			<%
			}
			%>
		</table>
		<div class="text-right">
			<a class="btn btn-primary" href="add.jsp" role="button" style="width: 120px">新規登録</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
		integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
		integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
		crossorigin="anonymous"></script>
</body>
</html>