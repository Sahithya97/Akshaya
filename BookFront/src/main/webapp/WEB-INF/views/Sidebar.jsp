<div class="col-lg-3">

	<h1 class="my-4"></h1>
	<h1 class="my-4"></h1>
	<div class="list-group">

		<c:forEach items="${categories}" var="category">
			<a href="${contextRoot}/show/category/${category.id}/albums"
				class="list-group-item" style="background-color: #292828;">${category.name}
			</a>
		</c:forEach>

	</div>

</div>