<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<style>
.contai {
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

.card-content {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-wrap: wrap;
	margin: 30px;
}

.card {
	background-color: #fce9f2;
	width: 325px;
	height: 440px;
	margin: 25px;
	box-shadow: 0 5px 25px rgb(1 1 1/ 20%);
	border-radius: 10px;
	overflow: hidden;
}

.card-img {
	display: flex;
	height: 340px;
}

.card-img img {
	max-width: 100%;
	height: auto;
}

.price {
	height: 53px;
    overflow: hidden;
}

.price h4 {
	display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;
    line-height: 1.2;
}

.card-info {
	position: relative;
	color: #222;
	padding: 10px 20px;
}

.card-info h3 {
	font-size: 1.8em;
	font-weight: 800;
	margin-bottom: 5px;
}

.card-info p {
	font-size: 1em;
	margin-bottom: 5px;
}

.pagination {
	text-align: center;
	margin: 30px 30px 60px;
	user-select: none;
}

.pagination li {
	display: inline-block;
	margin: 5px;
	box-shadow: 0 5px 25px rgb(1 1 1/ 10%);
}

.pagination li a {
	color: #fff;
	text-decoration: none;
	font-size: 1.2em;
	line-height: 45px;
	background: transparent;
	border: none;
}

.previous-page:hover {
	transform: translateX(-5px);
}

.next-page:hover {
	transform: translateX(5px);
}

.previous-page, .next-page {
	background-color: #e84393;
	width: 80px;
	border-radius: 45px;
	cursor: pointer;
	transition: 0.3s ease;
}

.current-page, .dots {
	background-color: #ccc;
	width: 45px;
	border-radius: 50%;
	cursor: pointer;
}

.disabled {
	background-color: #ccc;
}

.page-link {
	background-color: transparent !important;
	float: unset !important;
}

.actived {
	background-color: #e84393;
}
</style>

<div class="contai">
	<div class="heading">
		<h1>featured products</h1>
		<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quasi
			consequuntur officia beatae distinctio minus optio?</p>
	</div>
	<div class="card-content" style="display: none;">
		<c:forEach var="item" items="${news}">
			<a href="#">
				<div class="card">
					<div class="card-img">
						<img src="${item.thumbnail}" alt="">
					</div>
					<div class="card-info">
						<div class="price">
							<h4>${item.title}</h6>
						</div>
						<h5>Giá: ${item.shortDescription}vnđ</h5>
					</div>
				</div>
			</a>
		</c:forEach>
	</div>

	<!-- shop section ends -->


	<div class="pagination"></div>
</div>

<script type="text/javascript">
        function getPageList(totalPages, page, maxLength) {
            function range(start, end) {
                return Array.from(Array(end - start + 1), (_, i) => i + start);
            }

            var siderWidth = maxLength < 9 ? 1 : 2;
            var leftWidth = (maxLength - siderWidth * 2 - 3) >> 1;
            var rightWidth = (maxLength - siderWidth * 2 - 3) >> 1;
        
            if(totalPages <= maxLength) {
                return range(1, totalPages);
            };

            if(page <= maxLength - siderWidth - 1 - rightWidth) {
                return range(1, maxLength - siderWidth -1).concat(0, range(totalPages - siderWidth + 1, totalPages));
            };

            if (page >= totalPages - siderWidth - 1- rightWidth) {
                return range(1, siderWidth).concat(0, range(totalPages - siderWidth - 1 - rightWidth - leftWidth, totalPages));
            };

            return range(1, siderWidth).concat(0, range(page - leftWidth, page + rightWidth), 0, range(totalPages - siderWidth + 1, totalPages));
        };


        $(function () {
            var numberOffItem = $(".card-content .card").length;
            var limitPage = 6;
            var totalPages = Math.ceil(numberOffItem / limitPage);
            var paginationSize = 5;
            var currentpage;

            function showpage(whichpage) {
                if(whichpage < 1 || whichpage > totalPages) return false;

                currentpage = whichpage;

                $(".card-content .card").hide().slice((currentpage - 1) * limitPage, currentpage * limitPage ).show();
                $(".pagination li").slice(1, -1).remove();
                
                getPageList(totalPages, currentpage, paginationSize).forEach(item => {
                    $('<li>').addClass("page-item").addClass(item ? "current-page" : "dots")
                        .toggleClass("actived", item === currentpage).append($("<a>").addClass("page-link")
                        .attr({href: "javascript:void(0)"}).text(item || "...")).insertBefore(".next-page");
                });

                $(".previous-page").toggleClass("disabled", currentpage === 1);
                $(".next-page").toggleClass("disabled", currentpage === totalPages );

                return true;
            }

            $('.pagination').append(
                $("<li>").addClass("page-item").addClass("previous-page").append($("<a>").addClass("page-link").attr({href: "javascript:void(0)"}).text("Prev")),
                $("<li>").addClass("page-item").addClass("next-page").append($("<a>").addClass("page-link").attr({href: "javascript:void(0)"}).text("Next"))
            );

            $(".card-content").show();
            showpage(1);

            $(document).on("click", ".pagination li.current-page:not(.actived)", function() {
                return showpage(+$(this).text());
            })

            $(".next-page").on("click", function() {
                return showpage(currentpage + 1)
            })

            $('.previous-page').on("click", function() {
                return showpage(currentpage - 1);
            });
        });
</script>