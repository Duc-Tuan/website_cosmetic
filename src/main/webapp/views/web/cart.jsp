<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.mb-20 {
	margin: 20px auto;
}

.container>h1 {
	padding: 20px 0;
}

.cart {
	padding-top: 10px;
	display: flex;
}

.products {
	flex: 0.75;
}

.product {
	display: flex;
	width: 100%;
	height: 114px;
	overflow: hidden;
	border: 1px solid silver;
	margin-bottom: 20px;
}

.product:hover {
	border: none;
	box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
	transform: scale(1.01);
}

.product>img {
	object-fit: cover;
}

.product>img:hover {
	transform: scale(1.04);
}

.product-info {
	padding: 10px;
	width: 100%;
	position: relative;
}

.product-offer {
	margin: 0;
}

.product-remove {
	position: absolute;
	bottom: 20px;
	right: 20px;
	padding: 4px 10px;
	background-color: green;
	color: white;
	cursor: pointer;
	border-radius: 5px;
}

.product-remove:hover {
	background-color: white;
	color: green;
	font-weight: 600;
	border: 1px solid green;
}

.product-quantity>input {
	width: 40px;
	text-align: center;
	border: 1px solid;
}

.fa {
	margin-right: 5px;
}

.cart-total {
	flex: 0.25;
	margin-left: 20px;
	padding: 20px;
	height: 80vh;
	border: 1px solid silver;
	border-radius: 5px;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}

.cart-total p {
	display: flex;
	justify-content: space-between;
	margin-bottom: 30px;
	font-size: 16px;
}

.cart-total a {
	display: block;
	text-align: center;
	height: 40px;
	line-height: 40px;
	background-color: tomato;
	color: white;
	text-decoration: none;
}

.cart-total a:hover {
	background-color: red;
}

@media screen and (max-width: 700px) {
	.remove {
		display: none;
	}
	.product {
		height: 150px;
	}
	.product>img {
		height: 150px;
		width: 200px;
	}
	.product-name, .product-price, .product-offer {
		margin-bottom: 10px;
	}
}

@media screen and (max-width: 900px) {
	.cart {
		flex-direction: column;
	}
	.cart-total {
		margin-left: 0;
		margin-bottom: 20px;
	}
}

@media screen and (max-width: 1220px) {
	.container {
		max-width: 95%;
	}
}

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
	margin:0 30px;
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



<div class="container mb-20">
	<h5>Shopping Cart</h5>

	<div class="cart">
		<div class="products">
			<div class="card-content" style="display: none;">
				<div class="product">
					<img src="images/arrival-1.jpg">
					<div class="product-info">
						<h5 class="product-name">New Shoes 1</h5>
						<h5 class="product-price">100.000 vnđ</h5>
						<h6 class="product-offer">10%</h6>
						<p class="product-quantity">
							Qnt: <input value="1" name="">
						<p class="product-remove">
							<i class="fa fa-trash" aria-hidden="true"></i> <span
								class="remove">Remove</span>
						</p>
					</div>
				</div>

				<div class="product">
					<img src="images/arrival-1.jpg">
					<div class="product-info">
						<h5 class="product-name">New Shoes 2</h5>
						<h5 class="product-price">100.000 vnđ</h5>
						<h6 class="product-offer">10%</h6>
						<p class="product-quantity">
							Qnt: <input value="1" name="">
						<p class="product-remove">
							<i class="fa fa-trash" aria-hidden="true"></i> <span
								class="remove">Remove</span>
						</p>
					</div>
				</div>

				<div class="product">
					<img src="images/arrival-1.jpg">
					<div class="product-info">
						<h5 class="product-name">New Shoes 3</h5>
						<h5 class="product-price">100.000 vnđ</h5>
						<h6 class="product-offer">10%</h6>
						<p class="product-quantity">
							Qnt: <input value="1" name="">
						<p class="product-remove">
							<i class="fa fa-trash" aria-hidden="true"></i> <span
								class="remove">Remove</span>
						</p>
					</div>
				</div>
				
				<div class="product">
					<img src="images/arrival-1.jpg">
					<div class="product-info">
						<h5 class="product-name">New Shoes 4</h5>
						<h5 class="product-price">100.000 vnđ</h5>
						<h6 class="product-offer">10%</h6>
						<p class="product-quantity">
							Qnt: <input value="1" name="">
						<p class="product-remove">
							<i class="fa fa-trash" aria-hidden="true"></i> <span
								class="remove">Remove</span>
						</p>
					</div>
				</div>
				
				<div class="product">
					<img src="images/arrival-1.jpg">
					<div class="product-info">
						<h5 class="product-name">New Shoes 5</h5>
						<h5 class="product-price">100.000 vnđ</h5>
						<h6 class="product-offer">10%</h6>
						<p class="product-quantity">
							Qnt: <input value="1" name="">
						<p class="product-remove">
							<i class="fa fa-trash" aria-hidden="true"></i> <span
								class="remove">Remove</span>
						</p>
					</div>
				</div>
				
				<div class="product">
					<img src="images/arrival-1.jpg">
					<div class="product-info">
						<h5 class="product-name">New Shoes 6</h5>
						<h5 class="product-price">100.000 vnđ</h5>
						<h6 class="product-offer">10%</h6>
						<p class="product-quantity">
							Qnt: <input value="1" name="">
						<p class="product-remove">
							<i class="fa fa-trash" aria-hidden="true"></i> <span
								class="remove">Remove</span>
						</p>
					</div>
				</div>
			</div>

			<div class="pagination"></div>
		</div>
		<div class="cart-total">
			<div>
				<p>
					<span>Total Price</span> <span>300.000 vnđ</span>
				</p>
				<p>
					<span>Number of Items</span> <span>2</span>
				</p>
				<p>
					<span>You Save</span> <span>200.000 vnđ</span>
				</p>
			</div>

			<a href="#">Proceed to Checkout</a>
		</div>
	</div>
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
            var numberOffItem = $(".card-content .product").length;
            var limitPage = 4;
            var totalPages = Math.ceil(numberOffItem / limitPage);
            var paginationSize = 5;
            var currentpage;

            function showpage(whichpage) {
                if(whichpage < 1 || whichpage > totalPages) return false;

                currentpage = whichpage;

                $(".card-content .product").hide().slice((currentpage - 1) * limitPage, currentpage * limitPage ).show();
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