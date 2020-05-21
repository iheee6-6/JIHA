<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<script>
		function removeCart() {
			$("#divProcessCheckout").hide();
			$("body").removeClass("has_cart");
			bodyUnScrollLock();
			$("#divDimmed").hide();
		}
	</script>

	<!-- 메뉴 선택 시 -->
	<div class="ly_product_select" id="detailPop" style="display: none;">
		<div class="ly_product_details">

			<div class="item_thumb">
				<img src="https://cdn.orderpick.kr/img/menu/BL000026/511306.jpg">
			</div>
			<p class="item_name">자몽망고꿀빙</p>

			<div class="product_price">
				<span class="price_container"> <span class="price"><span
						class="price_amount" id="priceSum"> 12,000</span>원</span>
				</span>
			</div>
			<div class="product_options">
				<div class="fieldset">
					<div class="field qty">
						<label class="label"><span>수량</span> <span id="max"
							class="max"></span></label>
						<div class="control_qty">
							<button class="btn_qty minus" id="d_minus">
								<span class="blind">삭제</span>
							</button>
							<span class="qty_display" id="qtySum">1</span>
							<button class="btn_qty plus" id="d_plus">
								<span class="blind">추가</span>
							</button>
						</div>
					</div>

				</div>
			</div>
		</div>

		<div class="actions">
			<button type="button" class="btn btn_tab btn_red" id="addBasket">장바구니
				담기</button>
		</div>
		<button type="button" class="btn_close _closeDetail">
			<span class="blind">닫기</span>
		</button>

		<div class="dimmed2 dimmed_ly" id="optionMask" style="display: none;"></div>
		<div class="ly_option_select" id="optionPop" style="display: none">
		</div>
		<div class="ly_option_select base" id="optionPopEssential"
			style="display: none"></div>
		<div class="loadingWrap" id="option-loading" style="display: none;">
			<div class="loading">
				<p>
					데이터 <span>처리 중입니다.</span>
				</p>
				<p>잠시만 기다려주세요.</p>
			</div>
		</div>


		<!-- 아래 버튼 및 누르면 나오기 -->
		<div class="process_checkout collapse_tab" id="divProcessCheckout">

			<div class="checkout_header">
				<p class="total_items">
					총 <strong><label id="totalQty">1</label></strong>개
				</p>
				<p class="total_amount">
					<span> <span class="price_amount" id="totalAmt">6,700</span>원
					</span>
				</p>
				<button class="btn_order" type="button">주문하기</button>
				<button type="button" class="btn_wrap_checkout">
					<span class="blind">장바구니 보기</span>
				</button>
			</div>
			<div class="checkout_content">

				<div class="checkout_step items_area" id="divBasket"></div>
				<div class="checkout_step order">
					<div class="fieldset">

						<div class="pickup_area">
							<div class="field">
								<strong class="label">픽업 매장 정보</strong>
								<p class="noti">카페베네(산본역점)</p>

							</div>

							<div class="field" style="display: none;"
								id="includeDrinksInCart">
								<strong class="label">컵 선택</strong>
								<div class="btn_payment payment_on" name="cup" id="mug">
									<button type="button" class="method">
										<span class="tick"></span>다회용 (매장용)
									</button>
								</div>
								<div class="btn_payment" name="cup" id="toGo">
									<button type="button" class="method">
										<span class="tick"></span>일회용 (외부용)
									</button>
								</div>
								<p class="txt_bottom" id="mugInfo" style="display: none;">
									<span>매장 내</span>에서만 <span>사용 가능</span>합니다.
								</p>
								<p class="txt_bottom" id="toGoInfo" style="display: none;">
									매장 내에서 <span>사용 불가</span>합니다.
								</p>
							</div>
							<div class="field" id="includePackingInCart"
								style="display: none">
								<strong class="label">포장여부</strong>
								<div class="btn_payment payment_on" name="shopMeal"
									id="packingNo">
									<button type="button" class="method">
										<span class="tick"></span>포장안함
									</button>
								</div>
								<div class="btn_payment" name="shopMeal" id="packingYes">
									<button type="button" class="method">
										<span class="tick"></span>포장(캐리어)
									</button>
								</div>
								<div class="btn_payment" name="shopMeal" id="packingBoxYes"
									style="display: none">
									<button type="button" class="method">
										<span class="tick"></span>포장(박스)
									</button>
								</div>
							</div>
							<div class="field" id="pickupOrderType" style="display: none">
								<strong class="label">주문방법</strong>
								<div class="btn_payment payment_on" name="pickupOrderTypeSet"
									id="pickupOrderPickup">
									<button type="button" name="package3" id="package3"
										class="method">
										<span class="tick"></span>픽업
									</button>
								</div>
								<div class="btn_payment" name="pickupOrderTypeSet"
									id="pickupOrderShuttle">
									<button type="button" name="package4" id="package4"
										class="method">
										<span class="tick"></span>배달
									</button>
								</div>
								<p id="pickupOrderShuttleAmt" class="txt_bottom"
									style="display: none" value="0">
									최소 주문 금액 <span>0원</span>
								</p>
							</div>
							<input type="text" id="pickupTime" value="" title=""
								placeholder="" class="input_txt" style="display: none;">

							<div class="field" id="pickupArea" style="display: none">
								<strong class="label">픽업 시간 설정</strong>
								<div class="btn_payment payment_on" name="pickupTimeSet"
									id="pickupNow">
									<button type="button" class="method">
										<span class="tick"></span>바로픽업
									</button>
								</div>
								<div class="btn_payment" name="pickupTimeSet" id="pickupDay">
									<button type="button" class="method">
										<span class="tick"></span>당일예약
									</button>
								</div>
								<div class="today_reserve" id="select_pickup_time"
									style="display: none;">
									<span class="date" id="pickupMonthDayLabel"></span>
									<button type="button" class="btn_time_select trigger"
										id="pickupTimeLabel"></button>
								</div>
								<div class="btn_payment" style="display: none">
									<button type="button" id="pickupDayLabel"
										class="method btn_time_select trigger2"></button>
								</div>
								<p id="pickupTimeNow" class="txt_bottom">
									'바로픽업'으로 주문 시, <span>10분 이내 픽업</span> 해주세요.
								</p>
							</div>
							<div class="field" id="seatLocation" style="display: none">
								<strong class="label">좌석위치</strong>
								<div class="btn_payent fit" id="locationZone">
									<button type="button" name="restime1" id="locationZoneBtn"
										class="method btn_time_select trigger3"
										style="cursor: pointer;">존선택</button>
								</div>
								<input type="text" class="input_txt baseball" placeholder="열 입력"
									id="locationRow" maxlength="10"> <input type="text"
									class="input_txt baseball" placeholder="번 입력" id="locationNo"
									maxlength="10">
							</div>
						</div>

						<div class="field" id="pidkcupDeliveryArea" style="display: none">
							<label class="label" for="f3"><span>배달주소</span></label> <input
								type="text" name="f3" id="pidkcupDeliveryAddress" value=""
								title="" class="input_txt" placeholder="사무실 호수 또는 사무실명 입력"
								maxlength="40" autocomplete="off">
						</div>

						<div class="field" id="phoneNumberForm" style="display: none">
							<label class="label" for="phone"><span>휴대폰 번호</span></label> <input
								type="text" name="phone" id="phone" value="010" title=""
								class="input_txt" inputmode="numeric"
								placeholder="휴대폰 번호를 입력해주세요" autocomplete="off">
							<p class="noti">
								주문하신 메뉴가 준비되면, <strong>카카오톡 알림</strong>으로 안내해 드립니다.
							</p>
						</div>

						<div class="field" id="orderMemo">
							<label class="label" for="f3"><span>주문 시 요청사항 (선택)</span></label>
							<input type="text" name="f3" id="f3" value="" title=""
								class="input_txt" placeholder="요청 사항을 입력해주세요" maxlength="40"
								autocomplete="off">
						</div>


						<div class="field button_3">
							<strong class="label">결제방법</strong>

							<div id="pay_1" name="divPay" class="btn_payment">
								<button type="button" class="method">PAYCO</button>
								<span class="ico_discout" style="display: none;">할인</span>
							</div>
							<div id="pay_4" name="divPay" class="btn_payment">
								<button type="button" class="method">신용/체크카드</button>
								<span class="ico_discout" style="display: none;">할인</span>
							</div>
							<div id="pay_5" name="divPay" class="btn_payment">
								<button type="button" class="method">휴대폰결제</button>
								<span class="ico_discout" style="display: none;">할인</span>
							</div>
							<div class="discount_box">
								<div id="payco_discount_box_0801"></div>
								<div id="credit_discount_box_0801"></div>
							</div>

						</div>
						<!-- 아래 버튼 및 누르면 나오기 -->
</body>
</html>