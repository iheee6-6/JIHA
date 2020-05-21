<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
  
<title>Insert title here</title>
<style>
    html {
      overflow: scroll;
      -webkit-overflow-scrolling: touch;
    }
  </style>

  <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-137965274-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }

        gtag('js', new Date());

        gtag('config', 'UA-137965274-1');
    </script>
  </head>

<body class="has_cart" style="overflow: unset; height: 100%;">
<input type="text" name="service_type" value="OT02" disabled="" style="display: none">

<div id="divDimmed" class="dimmed dimmed_ly" style="display: none;"></div>
<div id="divDimmed2" class="dimmed2 dimmed_ly" style="display:none"></div>
<div id="divDimmed3" class="dimmed2 dimmed_ly" style="display:none; z-index:3065;"></div>
<div id="divDimmed4" class="dimmed2 dimmed_ly" style="display:none; z-index:3080;"></div>
<div class="ly_product_select" id="detailPop" style="display: none;"><div class="ly_product_details">

  <div class="item_thumb">
    <img src="https://cdn.orderpick.kr/img/menu/BL000026/511306.jpg">
    </div>
  <p class="item_name">
    자몽망고꿀빙</p>

<div class="product_price">
    <span class="price_container">
    <span class="price"><span class="price_amount" id="priceSum">
      12,000</span>원</span>
    </span>
  </div>
  <div class="product_options">
    <div class="fieldset">
      <div class="field qty">
        <label class="label"><span>수량</span> <span id="max" class="max"></span></label>
        <div class="control_qty">
          <button class="btn_qty minus" id="d_minus"><span class="blind">삭제</span></button>
          <span class="qty_display" id="qtySum">1</span>
          <button class="btn_qty plus" id="d_plus"><span class="blind">추가</span></button>
        </div>
      </div>

    </div>
  </div>
  </div>

<div class="actions">
  <button type="button" class="btn btn_tab btn_red" id="addBasket">장바구니 담기</button>
</div>
<button type="button" class="btn_close _closeDetail"><span class="blind">닫기</span></button>

<div class="dimmed2 dimmed_ly" id="optionMask" style="display:none;"></div>
<div class="ly_option_select" id="optionPop" style="display:none">
</div>
<div class="ly_option_select base" id="optionPopEssential" style="display:none">
</div>
<div class="loadingWrap" id="option-loading" style="display:none;">
<div class="loading">
<p>데이터 <span>처리 중입니다.</span></p>
<p>잠시만 기다려주세요.</p>
</div>
</div>


<form id="frm" name="frm" action="/menu/detail" method="post"><input type="hidden" id="d_shopMenuNo" name="shopMenuNo" value="SQS2200428000001423863">
    <input type="hidden" id="d_shopId" name="shopId" value="S190002045">
    <input type="hidden" id="d_menuName" name="menuName" value="자몽망고꿀빙">
    <input type="hidden" id="d_menuAmt" name="menuAmt" value="12000">
    <input type="hidden" id="d_cnt" name="cnt" value="1">
    <input type="hidden" id="d_menuGroup" name="menuGroup" value="">
    <input type="hidden" id="d_posMenuCd" name="posMenuCd" value="511306">
    <input type="hidden" id="d_posClassCd" name="posClassCd" value="T900">
    <input type="hidden" id="posClassNm" name="posClassNm" value="신메뉴">
    <input type="hidden" id="d_imgPath" name="imgPath" value="/img/menu/BL000026/">
    <input type="hidden" id="d_imgName" name="imgName" value="511306.jpg">
    <input type="hidden" id="d_optionFlag" name="optionFlag" value="N">
    <input type="hidden" id="d_totalOption" name="totalOption">
    <input type="hidden" id="d_totalOptionAmt" name="totalOptionAmt" value="0">
    <input type="hidden" id="d_basketJson" name="basketJson">
    <input type="hidden" id="d_optionType" name="optionType" value="">
    <input type="hidden" id="d_discountNo" name="discountNo" value="">
    <input type="hidden" id="d_discountAmt" name="discountAmt" value="">
    <input type="hidden" id="d_discountReason" name="discountReason" value="">
    <input type="hidden" id="d_discountRate" name="discountRate" value="">
    <input type="hidden" id="d_discountType" name="discountType" value="">
    <input type="hidden" id="d_realMenuAmt" name="realMenuAmt" value="">
    <input type="hidden" id="d_packingFlag" name="packingFlag" value="Y">
    <input type="hidden" id="d_menuLimitCount" name="menuLimitCount" value="20">
    <input type="hidden" id="d_menuKindLimitCount" name="menuLimitCount" value="999">
    <input type="hidden" id="d_menuTotalCount" name="menuTotalCount" value="100">
    <input type="hidden" id="d_serviceType" name="serviceType" value="">
    <input type="hidden" id="d_shopMenuGroupNo" name="shopMenuGroupNo" value="SQS1200428000001423109">
    <input type="hidden" id="d_cornerCode" name="cornerCode" value="">
</form><script>
    
    var canAdd = true;
    // 매장운영가능여부
    var operationStatusYn = true;
var menuDetail = {
    menuKindLimitCount : $("#d_menuKindLimitCount").val(),
    menuLimitCount: $("#d_menuLimitCount").val(),
    menuTotalCount: $("#d_menuTotalCount").val(),
    discountNo: $("#d_discountNo").val(),
    menuAmt: $("#d_menuAmt").val(),
    realMenuAmt: $("#d_realMenuAmt").val(),
    optionQtyLimitCnt: 10,
    optionString: {
        selectOption: "",
        essentialOption: {},
        essentialSubOption: {},
        essentialSubOptionPop: "",
        allOption: ""
    },
    price: {
        // optionAmt : 0,
        menuPriceOrigin: 0,
        menuPrice: 0,
        selectOptionAmt: 0,
        essentialOptionAmt: 0,
        essentialSubOptionAmt: 0,
        essentialSubOptionPopAmt: 0,
        menuQty: 1,
        optionQty: 0
    },

    init: function () {
        if(menuDetail.discountNo === null || menuDetail.discountNo === "") {
            menuDetail.price.menuPriceOrigin = parseInt(menuDetail.menuAmt);
        } else {
            menuDetail.price.menuPriceOrigin = parseInt(menuDetail.realMenuAmt);
        }

        // 푸드코트의 코너가 주문 불가 상태 or 매장 운영상태가 운영불가 상태인 경우 장바구니 담기 비활성화
        if(!canAdd || !operationStatusYn || !localstorageShop.getEnableOrder()) {
            $("#addBasket").attr("disabled", true);
        }

        $("button[name='chk']").removeClass();
        $("button[name='chk']").each(function() {
                if ($(this).val().split("^")[10] == "Y") {
                    $(this).removeClass().addClass("swatch_option option1 selected");
                    // 필수 옵션 다중 선택시 여기서 for문 넣으면 됨
                    //menuDetail.optionString.essentialOption = $("#" + this.id).val() + "||";
                    var shopMenuOptNo = $("#" + this.id).val().split("^")[4];
                    menuDetail.optionString.essentialOption[shopMenuOptNo] = $("#" + this.id).val() + "||";
                    menuDetail.price.essentialOptionAmt = parseInt($("#" + this.id).val().split('^')[2]);

                    menuDetail.essentialOptionFunc.setOptionAmt();
                    menuDetail.setMenuPrice();
                }else {
                    $(this).removeClass().addClass('swatch_option option2');
                }
        });

        $("button[name='btnShopMenuOptDtailName']").removeClass();
        $("button[name='btnShopMenuOptDtailName']").each(function() {
            if ($(this).val().split("^")[10] == "Y") {
                $(this).removeClass().addClass("active");
                //menuDetail.optionString.essentialSubOption = $("#" + this.id).val() + "||";
                var shopMenuOptNo = $("#" + this.id).val().split("^")[4];
                menuDetail.optionString.essentialSubOption[shopMenuOptNo] = $("#" + this.id).val() + "||";
                menuDetail.price.essentialSubOptionAmt = parseInt($("#" + this.id).val().split('^')[2]);
                menuDetail.essentialSubOptionFunc.setOptionAmt();
                menuDetail.setMenuPrice();
            } else {
                $(this).removeClass();
            }
        });
    },

    isSelectEssentialOption: function () {
        if( $("#d_optionType").val().indexOf("OPT1") !== -1 && $(".swatch_option.option1.selected").val() == undefined ) {
            showPop(essentialOptionMsg);
            return false;
        }
        return true;
    },

    isSelectEssentialSubOption: function () {
        
        return true;
    },

    isSelectEssentialSubOptionPop: function () {
        
        return true;
    },

    setMenuPrice : function () {
        menuDetail.price.menuPrice =  menuDetail.price.menuPriceOrigin + menuDetail.price.essentialOptionAmt + menuDetail.price.essentialSubOptionAmt + menuDetail.price.essentialSubOptionPopAmt + menuDetail.price.selectOptionAmt;
        menuDetail.setFinalTotalAmount();
    },

    setFinalTotalAmount : function () {
        $("#priceSum").text(numberWithCommas(menuDetail.price.menuPrice * menuDetail.price.menuQty));
    },

    setOptionPrice: function () {
        var option = "";
        var amt = 0;

        
        // $("input[name=chkOpt]").each(function() {
        $("span.qty_display[name=select_option_qty]").each(function() {
            var qty = $(this).text();
            var id = $(this).attr("id");
            if(qty > 0) {
                var tmpId = "chk_" +id.split("_")[2];
                var val = $("#"+ tmpId ).val();

                var arr = val.split('^');
                
                var optionAmt = arr[2];
                var optQty = $("#" + id).text();

                amt += parseInt(optionAmt * optQty);

                
                arr[6] = optQty;
                $(this).val(arr.toString().replaceAll(",", "^"));

                option += $(this).val() + "||";
            }
        });

        menuDetail.price.selectOptionAmt = amt;
        menuDetail.optionString.selectOption = option;
    },

    showEssentialOptionView: function () {
        $("#optionPopEssential").html($("#option-loading").html());

        $("#optionPopEssential").load("option/essential", {
            'optionType':$("#d_optionType").val(),
            'optionFlag':$("#d_optionFlag").val(),
            // 'totalOption':$("#d_totalOption").val(),
            'shopMenuNo':$("#d_shopMenuNo").val(),
            'shopId':$("#d_shopId").val(),
            'totalOptionAmt': menuDetail.price.essentialOptionAmt + menuDetail.price.essentialSubOptionAmt + menuDetail.price.selectOptionAmt,
            'basketJson':$("#d_basketJson").val(),

            'menuName':$("#d_menuName").val(),
            'menuAmt':$("#d_menuAmt").val(),
            'cnt':$("#d_cnt").val(),
            'posMenuCd':$("#d_posMenuCd").val(),
            'imgPath':$("#d_imgPath").val(),
            'imgName':$("#d_imgName").val(),
        });
        $("#optionPopEssential, #optionMask").show();
    },

    showOptionView: function () {
        $("#optionPop").html($("#option-loading").html());

        $("#optionPop").load("option", {
            'optionType':$("#d_optionType").val(),
            'optionFlag':$("#d_optionFlag").val(),
            'shopMenuNo':$("#d_shopMenuNo").val(),
            'shopId':$("#d_shopId").val(),
            'totalOptionAmt': menuDetail.price.essentialOptionAmt + menuDetail.price.essentialSubOptionAmt + menuDetail.price.selectOptionAmt,
            'basketJson':$("#d_basketJson").val(),

            'menuName':$("#d_menuName").val(),
            'menuAmt':$("#d_menuAmt").val(),
            'cnt':$("#d_cnt").val(),
            'posMenuCd':$("#d_posMenuCd").val(),
            'imgPath':$("#d_imgPath").val(),
            'imgName':$("#d_imgName").val(),
        });
        $("#optionPop, #optionMask").show();
    },

    setDataTable: function () {
        var essentialOption = "";
        for (var essentialOptionKey in menuDetail.optionString.essentialOption) {
            essentialOption += menuDetail.optionString.essentialOption[essentialOptionKey];
        }

        var essentialSubOption = "";
        for (var essentialSubOptionKey in menuDetail.optionString.essentialSubOption) {
            essentialSubOption += menuDetail.optionString.essentialSubOption[essentialSubOptionKey];
        }

        $('#d_totalOption').val(essentialOption + essentialSubOption + menuDetail.optionString.essentialSubOptionPop + menuDetail.optionString.selectOption);
        $('#d_totalOptionAmt').val(menuDetail.price.essentialOptionAmt + menuDetail.price.essentialSubOptionAmt + menuDetail.price.essentialSubOptionPopAmt + menuDetail.price.selectOptionAmt);
        $("#d_cnt").val(menuDetail.price.menuQty);
        $("#d_serviceType").val(localstorageShop.getServiceType());
        if (getBasketToString() == 'null') {
            $("#d_basketJson").val(null);
        } else {
            $("#d_basketJson").val(getBasketToString());
        }
    },

    getMenuKind: function () {
        if (getBasket()) {
            return getBasket().products.length;
        }
    },

    addBasket: function () {
        
        if (!menuDetail.isSelectEssentialOption()) {
            return;
        }

        
        if (!menuDetail.isSelectEssentialSubOption()) {
            return;
        }

        
        if (!menuDetail.isSelectEssentialSubOptionPop()) {
            return;
        }

        if (localstorageShop.getServiceType() == "OT05") {
            if (menuDetail.getMenuKind() >= menuDetail.menuKindLimitCount) {
                showPop("최대 20가지 종류의 메뉴만 담을 수 있습니다.");
                return;
            }
        }
        menuDetail.setDataTable();

        call("basket/add", "json", $("#frm").serialize(), function(data){
            /*msg 가 오면 에러 메시지 보여주고 마무리*/
            if(data.msg != undefined && data.msg != null && data.msg != "") {
                showPop(data.msg);
                return;
            }
            else if(data.overMaxCount != null && data.overMaxCount != "") {
                showPop(data.overMaxCount);
                return;
            }
            setBasket(data.basket);
            $('#totalQty').text(data.totalQty);
            $('#totalAmt').text(data.totalAmt);
            deactiveCart(30);
            $("#detailPop, #divDimmed").hide();
        });
    },

    membershipInit: function () {
        
            menuDetail.addBasket();
        
    },

    /**
    * 빽다방의 경우 메뉴 최대 수량 표기를 하지 않는다.
    * 메뉴당 담을수 있는 최대 개수가 되면 최대 수량 표기를 해준다
    * */
    essentialOptionFunc: {
        qtyInc : function () {
            if(menuDetail.price.menuQty < menuDetail.menuLimitCount){
                menuDetail.price.menuQty++;
                $("#qtySum").text(numberWithCommas(menuDetail.price.menuQty));
                menuDetail.setMenuPrice();
            }

            if(menuDetail.price.menuQty >= menuDetail.menuLimitCount && menuDetail.menuLimitCount != menuDetail.menuTotalCount) {
                $("#max").text("(최대 : " + menuDetail.menuLimitCount + ")");
            }
        },

        qtyDec : function () {
            if(menuDetail.price.menuQty > 1){
                menuDetail.price.menuQty--;
                $("#qtySum").text(numberWithCommas(menuDetail.price.menuQty));
                menuDetail.setMenuPrice();
                $("#max").text("");
            }
        },

        setOptionAmt: function () {
            var list = $(".fieldset.essential_option .field  button.swatch_option.option1.selected");
            var v = 0;
            for (var i =0; i < list.length; i++) {
                v += parseInt($(list[i]).val().split('^')[2]);
            }
            menuDetail.price.essentialOptionAmt = v;
        },

        selectComplete: function () {
            var shopMenuOptNo = $(this).val().split('^')[4];
            $("button[name='chk']").each(function() {
                if (shopMenuOptNo == $(this).val().split('^')[4]) {
                    $(this).removeClass().addClass('swatch_option option2');
                }
            });
            $(this).removeClass().addClass("swatch_option option1 selected");

            menuDetail.optionString.essentialOption[shopMenuOptNo] = $("#" + this.id).val() + "||";
            menuDetail.price.essentialOptionAmt = parseInt($("#" + this.id).val().split('^')[2]);

            menuDetail.essentialOptionFunc.setOptionAmt();
            menuDetail.setMenuPrice();
        }
    },

    // 필수옵션(메인상단, 메인, 팝업) 중 메인에 관한 함수 정리
    essentialSubOptionFunc : {
        setOptionAmt: function () {
            var list = $("button[name='btnShopMenuOptDtailName'].active");
            var v = 0;
            for (var i =0; i < list.length; i++) {
                v += parseInt($(list[i]).val().split('^')[2]);
            }
            menuDetail.price.essentialSubOptionAmt = v;
        },
        selectComplete: function () {
            $(this).parent("li").siblings().children("button").removeClass("active");
            $(this).addClass("active");
            var shopMenuOptNo = $("#" + this.id).val().split("^")[4];
            menuDetail.optionString.essentialSubOption[shopMenuOptNo] = $("#" + this.id).val() + "||";
            menuDetail.price.essentialSubOptionAmt = parseInt($("#" + this.id).val().split('^')[2]);
            menuDetail.essentialSubOptionFunc.setOptionAmt();
            menuDetail.setMenuPrice();
        }
    },

    // 필수 옵션 중 선택 팝업에서 선택되는 정보에 관한 함수 정리
    essentialSubOptionPopFunc : {
        init: function () {
            if (menuDetail.optionString.essentialSubOptionPop !== "") {
                var arr = menuDetail.optionString.essentialSubOptionPop.split('||');
                for (var i = 0; i < arr.length - 1; i++) {
                    $("#" + arr[i].split("^")[1]).addClass("active");
                }
            } else {
                $("li[name='li_essential'] button").each(function() {
                    if ($(this).val().split("^")[10] == "Y") {
                        $(this).addClass("active");
                    }
                });
            }
        },

        setOptionAmt: function () {
            var list = $("li[name='li_essential'] .active");
            var v = 0;
            for (var i =0; i < list.length; i++) {
                v += parseInt($(list[i]).val().split('^')[2]);
            }
            menuDetail.price.essentialSubOptionPopAmt = v;
        },

        selectComplete: function () {
            var essentialOptionPop = "";
            $("li[name='li_essential'] .active").each(function() {
                essentialOptionPop += $(this).val() + "||";
            });

            menuDetail.optionString.essentialSubOptionPop = essentialOptionPop;
            menuDetail.essentialSubOptionPopFunc.setOptionAmt();
            menuDetail.setMenuPrice();

            if (menuDetail.optionString.essentialSubOptionPop == "") {
                $("#lblAddOption2").text("추가");
                $("#optionPopEssential, #optionMask").fadeOut();
                return;
            }

            var arr =  menuDetail.optionString.essentialSubOptionPop.split("||");
            var optionName = "";
            for (var i = 0; i < arr.length - 1; i++) {
                var arrOpt = arr[i].split('^');
                optionName += ", " + arrOpt[0];
            }
            $("#lblAddOption2").text((optionName.substr(2, optionName.length)));

            $("#optionPopEssential, #optionMask").fadeOut();
        },

        applyClass: function () {
            /*var btnName = $(this).val().split("^")[4];
            $("button[name='" + btnName + "'").removeClass();
            $(this).addClass("active");*/
            $(this).parent().siblings().children("button").removeClass("active");
            $(this).addClass("active");
        },

        
        valueInit: function () {
            $("li[name='li_essential'] button").each(function() {
                if($(this).val().split("^")[10] == "Y") {
                    $(this).addClass("active");
                } else {
                    $(this).removeClass("active");
                }
                //$(this).removeClass("active");
            });
        }
    },

    selectOptionFunc: {
        qtyInc: function (){
            var optionId = this.id.split("_")[2];
            var optionQtyEl = $("#opt_qty_" + optionId);
            var selectOptQty = Number(optionQtyEl.text());
            var optionAmt = $("#chk_" + optionId).val().split("^")[2];

            if(selectOptQty < menuDetail.optionQtyLimitCnt) {
                // 금액이 0원인 선택옵션은 1나 이상 추가할 수 없음
                if (Number(optionAmt) == 0 && selectOptQty == 1) {
                    return;
                }
                selectOptQty++;
                optionQtyEl.text(selectOptQty);
                // $(this).closest("tr").find("input[name='chkOpt']").prop("checked", true);
            }
        },

        qtyDec: function () {
            var optionId = this.id.split("_")[2];
            var optionQtyEl = $("#opt_qty_" + optionId);
            var selectOptQty = Number(optionQtyEl.text());

            if(selectOptQty > 0) {
              selectOptQty--;
              optionQtyEl.text(selectOptQty);
            }
        },

        selectComplete: function () {
            menuDetail.setOptionPrice();

            $('#d_totalOption').val(menuDetail.optionString.essentialOption + menuDetail.optionString.selectOption);

            menuDetail.setMenuPrice();

            if (menuDetail.optionString.selectOption == "") {
                  $("#lblAddOption").text("추가");
                  $("#optionPop, #optionMask").fadeOut();
                  return;
            }

            var arr =  menuDetail.optionString.selectOption.split("||");
            var optionName = "";

            for (var i=0; i<arr.length-1; i++) {
                var arrOpt = arr[i].split('^');
                optionName += ", " + arrOpt[0] + "(" + arrOpt[6] + ")";
            }

            $("#lblAddOption").text(optionName.substr(2, optionName.length));
            $("#optionPop, #optionMask").fadeOut();
        },

        init: function () {
            
            if (menuDetail.optionString.selectOption !== "") {
                var arr =  menuDetail.optionString.selectOption.split('||');
                for (var i=0; i<arr.length -1; i++) {
                    var arrOpt = arr[i].split('^');
                    var name = arrOpt[1];
                    var qty = arrOpt[6];
                    $("#chk_"+ name).prop("checked", true);
                    $("#opt_qty_" + name).text(qty);
                }
            }

            
            if( menuDetail.optionQtyLimitCnt <= parseInt($("input[name=chkOpt]:checkbox:checked").length) ) {
                $("input[name=chkOpt]:checkbox:not(:checked)").attr("disabled", "disabled");
            }
        },

        
        valueInit: function () {
            $("span.qty_display[name=select_option_qty]").each(function() {
                $(this).text("0");
            });
        }
    }
}

$(document).ready(function(){
    menuDetail.init();

    $("#d_plus").on("click", menuDetail.essentialOptionFunc.qtyInc);
    $("#d_minus").on("click", menuDetail.essentialOptionFunc.qtyDec);
    $("#lblAddOption").on("click", menuDetail.showOptionView);
    $("#lblAddOption2").on("click", menuDetail.showEssentialOptionView);
    $(".fieldset.essential_option .field ul li").children("button.swatch_option").on("click", menuDetail.essentialOptionFunc.selectComplete);
    $("#addBasket").on("click", menuDetail.membershipInit);
    $("button[name='btnShopMenuOptDtailName']").on("click", menuDetail.essentialSubOptionFunc.selectComplete);

    
    $("._closeDetail").click(function(){
        deactiveCart(30);
        $("#detailPop, #divDimmed").hide();
        bodyUnScrollLock();
    });
});
</script>
</div>

<div id="popCmm" class="ly_pop4" style="display:none;">
  <div class="ly_pop_cont"><p class="des" id="popCmmText"></p></div>
  <div class="actions">
    <button type="button" class="btn btn_pop btn_gray">확인</button>
  </div>
</div>

<div id="popDelMenu" class="ly_pop4" style="display:none;">
  <div class="ly_pop_cont"><p class="des"></p></div>
  <div class="actions is_multiple">
    <button type="button" class="btn btn_pop btn_gray closeLayer2">아니요</button>
    <button type="button" class="btn btn_pop btn_red pop_conf">네</button>
  </div>
</div>
<div><div class="loadingWrap" style="display:none;">
  <div class="loading">
    <p>데이터 <span>처리 중입니다.</span></p>
    <p>잠시만 기다려주세요.</p>
  </div>
</div></div>
<div id="popShopOperStatus" class="ly_pop4" style="display:none;">
  <div class="ly_pop_cont state">
  </div>
  <div class="actions">
    <button type="button" class="btn btn_pop btn_gray">확인</button>
  </div>
</div>
<form id="frmMain" name="frmMain" action="/menu/pickup?shopId=S190002045" method="post"><input type="hidden" name="shopMenuGroupNo" id="shopMenuGroupNo" value="SQS1200428000001423109">
        <input type="hidden" name="shopMenuNo" id="shopMenuNo" value="">
        <input type="hidden" name="shopId" id="shopId" value="S190002045">
        <input type="hidden" name="userId" id="userId" value="">  <input type="hidden" name="tableNo" id="tableNo" value="">  <input type="hidden" name="paycoAppToken" id="paycoAppToken" value="">  <input type="hidden" id="basketJson" name="basketJson">
        <input type="hidden" id="modType" name="modType">
        <input type="hidden" id="arrNo" name="arrNo" value="0">
        <input type="hidden" id="pay" name="pay">
        <input type="hidden" id="userName" name="userName">
        <input type="hidden" id="mp" name="mp" value="">
        <input type="hidden" id="menuGroupSeq" name="menuGroupSeq" value="">
        <input type="hidden" id="mainBackBtnShow" name="mainBackBtnShow" value="false">
        <input type="hidden" id="seat" name="seat" value="">
        <input type="hidden" id="checkin" name="checkin" value="">
        <input type="hidden" id="userNameStr" name="userNameStr" value="">
        <input type="hidden" id="orderNameStr" name="orderNameStr" value="">
    </form><!--업종분류-->
    <input type="hidden" id="corpIndType" name="corpIndType">

    <div id="wrap">

        <header id="header_service" class="header">
            <h1 class="brand_logo">
        <a href="#">
          <span class="logo_wrap">
            <img src="https://cdn.orderpick.kr/img/brand/20191118080614Cepm5A.png" alt="카페베네">
          </span>
        </a>
        </h1>
      <div class="store_top">
    <div class="name_wrap active">
      <div class="inner">
        <p class="name">카페베네(산본역점)</p>


  </div>
    </div>

    </div>
<script type="text/javascript">

    $(document).ready(function(){
    
    });

    </script>
<button type="button" class="btn_menusearch">
                    <img src="/resource/menu/img/ic_adrsearch.png " alt="메뉴검색">
                </button>
            <div class="nav_wrap">

                <button type="button" class="btn_nav_prev" id="menu_group_prev">이전 버튼</button>

                <nav class="tab_nav">
                    <ul style="width: 922px;">
                    <li class="active">
                            <a href="javascript:;" class="a_menu_group" data-menu-group-no="SQS1200428000001423109">
                                신메뉴</a>
                        </li>
                    <li>
                            <a href="javascript:;" class="a_menu_group" data-menu-group-no="SQS1191127000000611839">
                                프라페노</a>
                        </li>
                    <li>
                            <a href="javascript:;" class="a_menu_group" data-menu-group-no="SQS1191127000000611671">
                                커피</a>
                        </li>
                    <li>
                            <a href="javascript:;" class="a_menu_group" data-menu-group-no="SQS1191127000000611968">
                                라떼</a>
                        </li>
                    <li>
                            <a href="javascript:;" class="a_menu_group" data-menu-group-no="SQS1191127000000611803">
                                카페라떼</a>
                        </li>
                    <li>
                            <a href="javascript:;" class="a_menu_group" data-menu-group-no="SQS1191127000000611872">
                                차</a>
                        </li>
                    <li>
                            <a href="javascript:;" class="a_menu_group" data-menu-group-no="SQS1191127000000611920">
                                주스</a>
                        </li>
                    <li>
                            <a href="javascript:;" class="a_menu_group" data-menu-group-no="SQS1191127000000611956">
                                에이드</a>
                        </li>
                    <li>
                            <a href="javascript:;" class="a_menu_group" data-menu-group-no="SQS1191127000000611941">
                                스무디</a>
                        </li>
                    <li>
                            <a href="javascript:;" class="a_menu_group" data-menu-group-no="SQS1191127000000611773">
                                빙수</a>
                        </li>
                    <li>
                            <a href="javascript:;" class="a_menu_group" data-menu-group-no="SQS1191127000000611926">
                                베이커리</a>
                        </li>
                    </ul>
                </nav>

                <button type="button" class="btn_nav_next" id="menu_group_next">다음 버튼</button>

            </div>
            </header>

        <div id="wrap_menu" class="wrap_fullpop menusearch" style="display: none;">
    <!-- HEADER -->
    <header id="header" class="header">
      <h2>메뉴검색</h2>
      <button type="button" class="btn_close" id="menu_search_close_btn">닫기</button>
    </header>
    <!-- // HEADER -->
    <div id="content" class="content">
      <div class="search_box">
        <input type="text" placeholder="메뉴명을 입력하세요"><button type="button" class="btn_search" id="menuSearchBtn">검색</button>
      </div>
      <div class="search_list">

        <div class="no_history" style="display: none">
          <img src="/resource/menu/img/img_no_history.png" alt="검색결과 없음">
          <p>검색결과가 없습니다.</p>
        </div>

        <div id="menuSearchList" style="display: none">
          <p class="search_result">검색결과 0개</p>
          <section class="lst_items">
            <h2 class="blind">제품 목록</h2>
            <ul id="menu_list">
            </ul>
          </section>
        </div>
      </div>
    </div>
  </div>

  <script>
      $("#wrap_menu.menusearch button.btn_close").on("click", function () {
        $("#wrap_menu").hide();
      });
  </script><div id="content" class="content main">

            <div class="lst_items_wrap">
                <section class="lst_items">
                    <h2 class="blind">제품 목록</h2>
                    <ul>
                        <li class="item_wrap link_detail" data-shop-menu-no="SQS2200428000001423863" onclick="menuForm.showDetail(this)">
                                <a href="javascript:;">
                                    <div class="product_thumb">
                                        <img src="https://cdn.orderpick.kr/img/menu/BL000026/511306.jpg" style="height:100px;">
                                        </div>
                                    <div class="product_details">

                                        <p class="product_name">자몽망고꿀빙</p>

                                        <div class="product_price">
                                                <p class="regular_price">
                                                    <span class="price_amount">12,000</span>원
                                                </p>
                                            </div>
                                        </div>
                                </a>
                            </li>
                         <li class="item_wrap link_detail" data-shop-menu-no="SQS2200428000001425369" onclick="menuForm.showDetail(this)">
                                <a href="javascript:;">
                                    <div class="product_thumb">
                                        <img src="https://cdn.orderpick.kr/img/menu/BL000026/511307.jpg" style="height:100px;">
                                        </div>
                                    <div class="product_details">

                                        <p class="product_name">자몽망고눈꽃꿀빙</p>

                                        <div class="product_price">
                                                <p class="regular_price">
                                                    <span class="price_amount">12,800</span>원
                                                </p>
                                            </div>
                                        </div>
                                </a>
                            </li>
                         <li class="item_wrap link_detail" data-shop-menu-no="SQS2200428000001424616" onclick="menuForm.showDetail(this)">
                                <a href="javascript:;">
                                    <div class="product_thumb">
                                        <img src="https://cdn.orderpick.kr/img/menu/BL000026/511308.jpg" style="height:100px;">
                                        </div>
                                    <div class="product_details">

                                        <p class="product_name">자몽트로피컬프라페노R</p>

                                        <div class="product_price">
                                                <p class="regular_price">
                                                    <span class="price_amount">6,000</span>원
                                                </p>
                                            </div>
                                        </div>
                                </a>
                            </li>
                         <li class="item_wrap link_detail" data-shop-menu-no="SQS2200428000001423110" onclick="menuForm.showDetail(this)">
                                <a href="javascript:;">
                                    <div class="product_thumb">
                                        <img src="https://cdn.orderpick.kr/img/menu/BL000026/511309.jpg" style="height:100px;">
                                        </div>
                                    <div class="product_details">

                                        <p class="product_name">자몽트로피컬프라페노L</p>

                                        <div class="product_price">
                                                <p class="regular_price">
                                                    <span class="price_amount">6,700</span>원
                                                </p>
                                            </div>
                                        </div>
                                </a>
                            </li>
                         <li class="item_wrap link_detail" data-shop-menu-no="SQS2200428000001426875" onclick="menuForm.showDetail(this)">
                                <a href="javascript:;">
                                    <div class="product_thumb">
                                        <img src="https://cdn.orderpick.kr/img/menu/BL000026/511310.jpg" style="height:100px;">
                                        </div>
                                    <div class="product_details">

                                        <p class="product_name">패션망고티에이드L</p>

                                        <div class="product_price">
                                                <p class="regular_price">
                                                    <span class="price_amount">5,800</span>원
                                                </p>
                                            </div>
                                        </div>
                                </a>
                            </li>
                         <li class="item_wrap link_detail" data-shop-menu-no="SQS2200428000001426122" onclick="menuForm.showDetail(this)">
                                <a href="javascript:;">
                                    <div class="product_thumb">
                                        <img src="https://cdn.orderpick.kr/img/menu/BL000026/510764.jpg" style="height:100px;">
                                        </div>
                                    <div class="product_details">

                                        <p class="product_name">망고주스R</p>

                                        <div class="product_price">
                                                <p class="regular_price">
                                                    <span class="price_amount">5,800</span>원
                                                </p>
                                            </div>
                                        </div>
                                </a>
                            </li>
                         </ul>

                    </section>
                </div>

            <div class="process_checkout collapse_tab" id="divProcessCheckout">

  <div class="checkout_header">
    <p class="total_items">총 <strong><label id="totalQty">1</label></strong>개</p>
    <p class="total_amount">
      <span>
        <span class="price_amount" id="totalAmt">6,700</span>원
        </span>
    </p>
    <button class="btn_order" type="button">주문하기</button>
    <button type="button" class="btn_wrap_checkout"><span class="blind">장바구니 보기</span></button>
  </div>
  <div class="checkout_content">

    <div class="checkout_step items_area" id="divBasket">
    </div>
    <div class="checkout_step order">
      <div class="fieldset">

        <div class="pickup_area">
  <div class="field">
    <strong class="label">픽업 매장 정보</strong>
    <p class="noti">카페베네(산본역점)</p>

    </div>

  <div class="field" style="display:none;" id="includeDrinksInCart">
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
    <p class="txt_bottom" id="mugInfo" style="display:none;"><span>매장 내</span>에서만 <span>사용 가능</span>합니다.</p>
    <p class="txt_bottom" id="toGoInfo" style="display:none;">매장 내에서 <span>사용 불가</span>합니다.</p>
  </div>
  <div class="field" id="includePackingInCart" style="display: none">
    <strong class="label">포장여부</strong>
    <div class="btn_payment payment_on" name="shopMeal" id="packingNo">
      <button type="button" class="method">
        <span class="tick"></span>포장안함
      </button>
    </div>
    <div class="btn_payment" name="shopMeal" id="packingYes">
      <button type="button" class="method">
        <span class="tick"></span>포장(캐리어)
      </button>
    </div>
    <div class="btn_payment" name="shopMeal" id="packingBoxYes" style="display: none">
      <button type="button" class="method">
        <span class="tick"></span>포장(박스)
      </button>
    </div>
  </div>
  <div class="field" id="pickupOrderType" style="display: none">
    <strong class="label">주문방법</strong>
    <div class="btn_payment payment_on" name="pickupOrderTypeSet" id="pickupOrderPickup">
      <button type="button" name="package3" id="package3" class="method"><span class="tick"></span>픽업</button>
    </div>
    <div class="btn_payment" name="pickupOrderTypeSet" id="pickupOrderShuttle">
      <button type="button" name="package4" id="package4" class="method"><span class="tick"></span>배달</button>
    </div>
    <p id="pickupOrderShuttleAmt" class="txt_bottom" style="display: none" value="0">
      최소 주문 금액 <span>0원</span>
      </p>
  </div>
  <input type="text" id="pickupTime" value="" title="" placeholder="" class="input_txt" style="display:none;">

  <div class="field" id="pickupArea" style="display: none">
    <strong class="label">픽업 시간 설정</strong>
    <div class="btn_payment payment_on" name="pickupTimeSet" id="pickupNow">
      <button type="button" class="method">
        <span class="tick"></span>바로픽업
      </button>
    </div>
    <div class="btn_payment" name="pickupTimeSet" id="pickupDay">
      <button type="button" class="method">
        <span class="tick"></span>당일예약
      </button>
    </div>
    <div class="today_reserve" id="select_pickup_time" style="display:none;">
      <span class="date" id="pickupMonthDayLabel"></span>
      <button type="button" class="btn_time_select trigger" id="pickupTimeLabel"></button>
    </div>
    <div class="btn_payment" style="display: none">
      <button type="button" id="pickupDayLabel" class="method btn_time_select trigger2"></button>
    </div>
    <p id="pickupTimeNow" class="txt_bottom">
      '바로픽업'으로 주문 시, <span>10분 이내 픽업</span> 해주세요.
    </p>
  </div>
  <div class="field" id="seatLocation" style="display: none">
    <strong class="label">좌석위치</strong>
    <div class="btn_payent fit" id="locationZone">
      <button type="button" name="restime1" id="locationZoneBtn" class="method btn_time_select trigger3" style="cursor: pointer;">존선택
      </button>
    </div>
    <input type="text" class="input_txt baseball" placeholder="열 입력" id="locationRow" maxlength="10">
    <input type="text" class="input_txt baseball" placeholder="번 입력" id="locationNo" maxlength="10">
  </div>
  </div>

<div class="field" id="pidkcupDeliveryArea" style="display: none">
  <label class="label" for="f3"><span>배달주소</span></label>
  <input type="text" name="f3" id="pidkcupDeliveryAddress" value="" title="" class="input_txt" placeholder="사무실 호수 또는 사무실명 입력" maxlength="40" autocomplete="off">
</div>

<div class="field" id="phoneNumberForm" style="display: none">
  <label class="label" for="phone"><span>휴대폰 번호</span></label>
  <input type="text" name="phone" id="phone" value="010" title="" class="input_txt" inputmode="numeric" placeholder="휴대폰 번호를 입력해주세요" autocomplete="off">
  <p class="noti">주문하신 메뉴가 준비되면, <strong>카카오톡 알림</strong>으로 안내해 드립니다.</p>
  </div>

<div class="field" id="orderMemo">
  <label class="label" for="f3"><span>주문 시 요청사항 (선택)</span></label>
  <input type="text" name="f3" id="f3" value="" title="" class="input_txt" placeholder="요청 사항을 입력해주세요" maxlength="40" autocomplete="off">
  </div>


<div class="field button_3">
<strong class="label">결제방법</strong>

<div id="pay_1" name="divPay" class="btn_payment">
      <button type="button" class="method">PAYCO</button>
      <span class="ico_discout" style="display:none;">할인</span>
    </div>
  <div id="pay_4" name="divPay" class="btn_payment">
        <button type="button" class="method">신용/체크카드</button>
      <span class="ico_discout" style="display:none;">할인</span>
    </div>
  <div id="pay_5" name="divPay" class="btn_payment">
      <button type="button" class="method">휴대폰결제</button>
      <span class="ico_discout" style="display:none;">할인</span>
    </div>
  <div class="discount_box">
    <div id="payco_discount_box_0801">
    </div>
    <div id="credit_discount_box_0801">
    </div>
  </div>

</div>
<script>
</script>



















<div class="field">
            <div class="checkbox_row checkboxbtn">
              <input type="checkbox" id="termsAllChk" class="fcb_checkbox">
              <label class="label" for="termsAllChk"><span>전체 선택</span></label>
            </div>
            <div class="lst_condition">
              <div class="checkbox_row checkboxbtn">
                <input type="checkbox" id="checkbox03" name="chkTerms" class="fcb_checkbox">
                <label class="label" for="checkbox03"><span>개인정보 수집 및 이용 동의 (필수)</span></label>
                <a href="javascript:" id="openCollect">보기</a>
              </div>
            </div>
          </div>
        </div>
    </div>
  </div>
  <div class="actions">
    <button type="button" class="btn btn_tab btn_red" id="orderStart">주문하기</button>
  </div>
</div>

<script>
    

    function chkAmtValid() {
        var totAmt = getBasket().totAmt;
        var membershipDiscountAmt = getDiscountMembershipAllAmt();
        var paymentAmt = (totAmt - membershipDiscountAmt);
        var pt = getPromotion();
        var ptAmt = 0;

        if (pt != null) {
            ptAmt = Number(pt.discountAmt);
        }

        
        if (paymentAmt < 0) {
            showPop("결제 금액보다 할인 금액이 더 많습니다.<br>결제를 진행 할수 없습니다.");
            return false;
        }

        
        chkValidPromotion();

        return true;
    }

    

    function chkValidPromotion() {
        var totAmt = getBasket().totAmt;
        var membershipDiscountAmt = getDiscountMembershipAllAmt();
        var paymentAmt = (totAmt - membershipDiscountAmt);
        var pt = getPromotion();
        var ptAmt = 0;

        if (pt != null) {
            ptAmt = Number(pt.discountAmt);
        }

        if (paymentAmt <= ptAmt) {
            setPromotion(null);
        }
    }

    function chkValid() {
        if (isBasketEmpty()) {
            showPop("주문할 메뉴가 없습니다.");
            return false;
        }

        var orderMinAmt = returnInt(0);

        
        if (("" != "" && "" != "null") && Number("") > 0 && $("#iptTableNo").val() === "") {
            var msg = "";
            if ("CI01" != "CI03") {
                msg = "테이블 번호를 입력해주세요.";
            } else {
                msg = "좌석번호를 입력해주세요.";
            }
            showPopOk(msg, function () {
                $("#iptTableNo").focus();
            });
            return false;
        }
        
        if ((shoppingInfo.alarmFlag && $("#phone").val() === "")
            || (localstorageShop.getServiceType() == "OT03" && $("#phone").val() === "")) {
            showPopOk("휴대폰 번호를 입력해주세요.", function () {
                $("#phone").focus();
            });
            return false;
        }

        
        if ((shoppingInfo.alarmFlag && !formatMobile($("#phone").val()))
            || (localstorageShop.getServiceType() == "OT03" && !formatMobile($("#phone").val()))) {
            showPopOk("휴대폰 번호를 확인해 주세요.", function () {
                $("#phone").focus();
            });
            return false;
        }

        
        if ((localstorageShop.getServiceType() == "OT03"
            && ($("#zipcode_box").val().length == 0 || $("#detail_zipcode").val().length == 0))) {
            showPopOk("배달 주소를 확인해 주세요.", function () {
                $("#detail_zipcode").focus();
            });
            return false;
        }

        if ((shoppingInfo.isPickupDeliveryOrder() && shoppingInfo.isPickupDeliveryOrderOnly()
            && shoppingInfo.getPickupDeliveryCondition()) && $("#pidkcupDeliveryAddress").val().trim().length == 0) {
            showPopOk("배달 주소를 확인해 주세요.", function () {
                $("#detail_zipcode").focus();
            });
            return false;
        }

        if ((shoppingInfo.isPickupDeliveryOrder() && shoppingInfo.isPickupDeliveryOrderBaseBallOnly()
            && shoppingInfo.getPickupDeliveryCondition()) && ($("#locationRow").val().trim().length == 0
            || $("#locationNo").val().trim().length == 0)) {
            showPopOk("배달 주소를 확인해 주세요.", function () {
                $("#locationRow").focus();
            });
            return false;
        }


        
        if (localstorageShop.getServiceType() == "OT03" && getBasket().totAmt < orderMinAmt) {
            showPopOk("최소 주문 금액을 채워주세요.<br> <span>최소 주문 금액 : 0원</span>", function () {
            });
            return false;
        }
        

        if (localstorageShop.getServiceType() == "OT05" && $("#pickupTimeLabel").html() == "시간선택") {
            showPopOk("픽업 시간을 확인해 주세요.", function () {
                $("#pickupDayLabel").focus();
            })
            return false;
        }
        
        if ($("#pay").val() === "" && getPayTotAmt(getBasket().totAmt) > 0) {
            showPopOk("결제방법을 선택해주세요.", function () {
                $("#pay_1 button").focus();
            });
            return false;
        }

        
        if ($("input[name='chkTerms']").length !== $("input[name='chkTerms']").filter(":checked").length) {
            showPopOk("개인정보 수집 및 이용에 동의해주세요.", function () {
                $("#termsAllChk").focus();
            });
            return false;
        }

        if (shoppingInfo.isPickupDvryUseFlag() && isPickupShuttle() === "Y") {
            if (getBasket().totAmt < 0) {
                showPopOk("최소 주문 금액을 채워주세요.<br> <span>최소 주문 금액 : 0원</span>", function () {
                });
                return false;
            }
        }

        if (localstorageShop.getServiceType() == "OT03" && !delivery.checkDeliveryArea()) {
            return;
        }

        return true;

    }

    function isPickupShuttle() {
        return $("div[name=pickupOrderTypeSet].btn_payment.payment_on").attr("id") === "pickupOrderShuttle" ? "Y" : "N";
    }

    function isPickupNow() {
        
        // if (localstorageShop.getServiceType() == "OT03") return "N";
        if (localstorageShop.getServiceType() == "OT05") return "N";
        if ($("div[name=pickupTimeSet].btn_payment.payment_on").attr("id") == undefined) return "Y";
        if ($("div[name=pickupTimeSet].btn_payment.payment_on").attr("id") != "pickupNow") return "N"
        if ($("div[name=pickupTimeSet].btn_payment.payment_on").attr("id") == "pickupNow") return "Y"
    }

    
    $("#termsAllChk").on("click", function () {
        if ($("#termsAllChk").prop("checked")) {
            $("input[name='chkTerms']").prop("checked", true);
        } else {
            $("input[name='chkTerms']").prop("checked", false);
        }
    });

    
    $("input[name='chkTerms']").on("click", function () {
        var chkItem = $("input[name='chkTerms']");
        if (chkItem.length === chkItem.filter(":checked").length) {
            $("#termsAllChk").prop("checked", true);
        } else {
            $("#termsAllChk").prop("checked", false);
        }
    });

    
    $("#openCollect").click(function () {
        $("#divDimmed2, #termsCollection").show();
    });

    
    $("#openConsignment").click(function () {
        $("#divDimmed2, #termsOffer").show();
    });

    
    $("div[name='divPay']").on("click", function () {
        var pay = this.id;
        paymentSelect(pay);
    });

    

    function showDiscount(pay) {
        var promotion = getExistPromotion();

        $("div[name='divPay']").removeClass();
        $("div[name='divPay']").addClass('btn_payment');
        $("div[id='pay_1']").addClass("btn_payment");

        var promotionBannerTypes = JSON.parse(localStorage.getItem("promotionBannerTypes")).promotionBannerTypes;
        
        if (!isEmptyObj(promotion)) {
            if (pay === "pay_1") {
                
                $("div[id='" + pay + "']").removeClass("btn_payment").addClass("btn_payment payment_on");
                if (promotionBannerTypes != null && promotionBannerTypes != "") {
                    if (promotionBannerTypes.indexOf("BN02") !== -1) {
                        
                        $("#pay_1 .ico_discout").show();
                        $(".discount_box > div").hide();
                        $(".discount_box").slideDown();
                        $("#payco_discount_box_0801").show();
                    } else {
                        $(".discount_box").hide();
                        if ($("#pay_1 .ico_discout").attr("style") == "") {
                            $(".discount_box > div").hide();
                            $(".discount_box").slideDown();
                        }
                    }
                }
            } else {
                
                $("div[id='" + pay + "']").removeClass("btn_payment").addClass("btn_payment payment_on");
                if (pay === "pay_4") {
                    $("#pay_4 .ico_discout").show();
                    $(".discount_box > div").hide();
                    $(".discount_box").slideDown();
                    $("#credit_discount_box_0801").show();
                }
                    
                else if (pay === "pay_5") {
                    $("#pay_5 .ico_discout").show();
                    $(".discount_box > div").hide();
                    $(".discount_box").slideDown();
                    $("#credit_discount_box_0801").show();
                }
            }
        } else {
            if (pay === "pay_1") {
                $("div[id='" + pay + "']").removeClass("btn_payment").addClass("btn_payment payment_on");
                if (promotionBannerTypes != null && promotionBannerTypes != "") {
                    if (promotionBannerTypes.indexOf("BN02") !== -1) {
                        $(".discount_box > div").hide();
                        $(".discount_box").slideDown();
                        $("#payco_discount_box_0801").show();
                    }
                }
            } else {
                
                $("div[id='" + pay + "']").removeClass("btn_payment").addClass("btn_payment payment_on");
                if (pay === "pay_4") {
                    $(".discount_box").hide();
                    if ($("#pay_4 .ico_discout").attr("style") == "") {
                        $(".discount_box > div").hide();
                        $(".discount_box").slideDown();
                    }
                }
                    
                else if (pay === "pay_5") {
                    $(".discount_box").hide();
                    if ($("#pay_5 .ico_discout").attr("style") == "") {
                        $(".discount_box > div").hide();
                        $(".discount_box").slideDown();
                    }
                }
            }
        }
    }

    function paymentSelect(pay) {
        showDiscount(pay)

        var pay_method = "";
        var payco_direct = "";
        var ssgpay_direct = "";
        var sspay_direct = "";

        
        if (pay === "pay_5") {
            pay_method = "MOBILE_PHONE";
            payco_direct = "N";
            ssgpay_direct = "N";
            sspay_direct = "N";
            $("#pay").val("MOBILE");
        } else {
            pay_method = "CARD";
            $("#pay").val("CREDIT");
            
            if (pay === "pay_1") {
                payco_direct = "Y";
                ssgpay_direct = "N";
                sspay_direct = "N";
            }
                
            else if (pay === "pay_2") {
                payco_direct = "N";
                ssgpay_direct = "N";
                sspay_direct = "Y";
            }
                
            else if (pay === "pay_3") {
                payco_direct = "N";
                ssgpay_direct = "Y";
                sspay_direct = "N";
            }
                
            else if (pay === "pay_4") {
                payco_direct = "N";
                ssgpay_direct = "N";
                sspay_direct = "N";
            }
        }

        
        document.order_info.pay_method.value = pay_method;
        if (payco_direct === "Y") {
            document.order_info.pay_method.value = "PAYCO";
        } else if (ssgpay_direct === "Y") {
            document.order_info.pay_method.value = "SSGPAY";
        } else if (sspay_direct === "Y") {
            document.order_info.pay_method.value = "SSPAY";
        }
        
    }

    
    $("#orderStart").click(function () {
        if (shoppingInfo.checkOrder10min()) {
            var tmp = showPopConf("10분 이내에 주문하신 메뉴가 있습니다.<br>추가로 주문하시겠습니까?", orderStart);
            return;
        }


        orderStart();
        if (localstorageShop.getServiceType() == 'OT06') {
            ticket.resizeTicketOrder();
        }
    });

    function orderStart() {
        if (localstorageShop.getServiceType() == "OT06") {
            if (!ticket.chkValid()) return;
        } else {
            
            if (!chkValid()) return;
            
            if (!chkAmtValid()) return;
        }

        localstorageMember.setPhoneNumber($("#phone").val());
        
        if (localstorageShop.getServiceType() == "OT01" && (("" != "" && "" != "null") && Number("") > 0)) {
            var tableNo = $("#iptTableNo").val();
            setTableNo(tableNo);
            $("#v_tableNo").text(tableNo);
            $("#v_tableNoDiv").show();
        }
        var basket = getBasket();
        // 메뉴 유효성 체크
        var msg = chkSold(basket);
        if (!isNullAndEmpty(msg)) {
            return;
        }

        if (localstorageShop.getServiceType() == "OT06") {
            ticket.orderSet();
            // ticket.orderStart();
        } else {
            orderSet();
            if (localstorageShop.getServiceType() == "OT01" || localstorageShop.getServiceType() == "OT02") {
                orderHistoryView.makeElementsTableService();
            }

            if (localstorageShop.getServiceType() == "OT02") {
                orderHistoryView.makeElementsPickupService();

                if (isPickupNow() == "Y") {
                    $("#pickupTime").val(mobileSelectFunc.getNow());
                } else {
                    $("#pickupTime").val(mobileSelectFunc.getSelectDateTime());
                }
            }

            if (localstorageShop.getServiceType() == "OT05") {
                orderHistoryView.makeElementsReserveService();
            }

            
            var promotion = getPrt(basket.key, localstorageShop.getServiceType(), $("#phone").val(), getBasket().totAmt);

            
            chkValidPromotion();

            $("#v_f2").text(inputPhoneNumber($("#phone").val()));
            

            // 선택한 결제 타입 가져옴
            var payOnTxt = $("div[name='divPay']").filter(".payment_on").find("button").text().trim();
            // 선택한 결제가 타입이 없으면 결제 내역 확인에서 결제수단 안보여줌
            if (payOnTxt == undefined || payOnTxt == null || payOnTxt == "") {
                $("#v_payType").parent().parent().hide();
            }
            // 결제 수단이 보여야 되는 경우
            else {
                $("#v_payType").parent().parent().show();
                $("#v_payType").text(payOnTxt);
            }

            
            $("#v_orderTotAmt").html(numberWithCommas(getPayTotAmt(basket.totAmt)) + "<span class=\"price_unit\"> 원</span>");
            
            $("#v_orderAmt").text(numberWithCommas(basket.totAmt) + " 원");
            
            setOrderDiscount();
            
            $("#v_deliveryAmt").text(numberWithCommas(0) + " 원");

            if (shoppingInfo.isPickupDeliveryOrder() && shoppingInfo.getPickupDeliveryCondition()) { //픽업배달일때
                var total = parseInt(getPayTotAmt(basket.totAmt)) + localstorageShop.getPickupDeliveryAmt();
                $("#v_orderTotAmt").html(numberWithCommas(total) + "<span class=\"price_unit\"> 원</span>");


                $("#v_deliveryAmt").text(numberWithCommas(localstorageShop.getPickupDeliveryAmt()) + " 원");
                // $("form[name='order_info'] input[name='deliveryAmt']").val(localstorageDelivery.getDeliveryAmt());
                // result = true;
            }
            

          var BRANDNAME = "NONE";
          var SHOPNAME = "NONE";
          
          var noticeFlag = commonOrder.getOrderNoticeFlag(BRANDNAME, SHOPNAME);
          if(noticeFlag) {
            $("#divDimmed2, #d_notice").show();
          }
          else {
            $("#divDimmed2, #orderConfirm").show();
          }

            // 주문내역확인창에 '총 결제 금액' 영역 위치 지정
            // 서비스타입이 '서비스'인 경우, 주문내역확인창으로 넘어가기 전에 유의사항 문구를 확인해는 팝업창이 뜨기 때문에
            // 유의사항문구 팝업창(delivery_notice.jsp)에서 '확인' 버튼을 클릭할 경우도 위치를 계산하기 위한 함수를 호출하는 로직을 추가해 놓음
            positionFixing();
        }
    };

    /* 배달에 대한 세팅 */
    function settingDelivery(basket) {
        
        if (isPickupNow() == "Y") {
            $("#orderTimeResv").hide();
            $("#orderTimeNow").show();
            $("#pickupTime").val("");
        } else {
            $("#orderTimeResv").show();
            $("#orderTimeNow").hide()
            $("#pickupTime").val(mobileSelectFunc.getSelectDateTime());
            $("#v_orderTimeResv").text(mobileSelectFunc.getPickupDateTimeFormat());
            // $("#v_orderTimeResv").text(mobileSelectFunc.getPickupDateTimeFormat($("#pickupTime").val()));
        }

        
        $("#v_zipcode_box").html($("#zipcode_box").val());
        $("#v_detail_zipcode").html($("#detail_zipcode").val());

        /* 배달 지역할증 금액 세팅(localstorageDelivary > deliveryRegionalPremiumAmt) */
        if (!delivery.getDeliveryRegionalPremium()) {
            return;
        }

        /* 배달비 및 form order_info(approval_chc.jsp)의 deliveryAmt(배달비 + 배달 지역할증) 세팅 */
        if (!delivery.chkDeliveryAmt(basket)) {
            return;
        }

        
        var total = calculationDeliveryTotalAmount(basket.totAmt);
        $("#v_orderTotAmt").html(numberWithCommas(total)
            + "<span class=\"price_unit\"> 원</span>");
        
    }

    /* 배달일 경우 배달비를 포함한 전체 주문 금액 계산 */
    function calculationDeliveryTotalAmount(totAmt) {
        // 장바구니 물품 금액 + 배달비 + 배달 지역할증
        var deliveryTotAmt = parseInt(getPayTotAmt(totAmt))
            + parseInt(localstorageDelivery.getDeliveryAmt())
            + parseInt(localstorageDelivery.getDeliveryRegionalPremiumAmt());

        return deliveryTotAmt;
    }

    function orderSet() {
        var prod = '<li><strong class="fst_col">{0}</strong><strong class="last_col">{1} 원</strong></li>';
        var opt = '<li class="option_selected"><strong class="fst_col">{0}</strong><span class="mid_col">{1}</span><strong class="last_col">{2} 원</strong></li>';

        var orders = "";
        var basket = getBasket();

        var products = basket.products;
        for (var i = 0; i < products.length; i++) {
            var menu = products[i].orderMenu;
            for (var j = 0; j < menu.cnt; j++) {
                var menuAmt = 0;
                
                if (menu.discountNo !== null && menu.discountNo !== "") {
                    menuAmt = menu.realMenuAmt;
                } else {
                    menuAmt = menu.amt;
                }

                orders += prod.format(menu.menuName, numberWithCommas(products[i].orderMenuTotAmt / menu.cnt));
                orders += opt.format(menu.menuName, 1, numberWithCommas(menuAmt));
                var options = products[i].orderMenuOptions;
                if (options != null && options.length > 0) {
                    for (var h = 0; h < options.length; h++) {
                        var option = options[h];
                        var p1 = option.menuOptDtailName;
                        var p2 = option.menuOptDtailCnt
                        var p3 = option.menuOptDtailAmt;
                        orders += opt.format(p1, p2, numberWithCommas(p3 * p2));
                    }
                }
            }
        }
        $("#v_orderList").html(orders);
    }

    

    function maxLengthCheck(obj) {
        if (obj.value.length > obj.maxLength) {
            obj.value = obj.value.slice(0, obj.maxLength);
        }
    }

    

    function checkNumber(obj) {
        $(obj).val($(obj).val().replace(/[^0-9]/g, ""));
    }

    

    function setOrderDiscount() {
        var promotion = getPromotion();
        var cp = localMmbrs.getCoupon();
        var pp = localMmbrs.getPayPoint();
        var pt = localMmbrs.getPoint();

        // 할인 내역 초기화
        $(".event_discount ul").html("");
        $(".event_discount").hide();

        if (promotion == null && !localMmbrs.isExistUseMembership()) {
            return;
        }

        if (localMmbrs.isExistUseMembership()) {
            var $membership = $("<li><dt>멤버십 사용금액</dt><dd><ul></ul></dd></li>");
            $membership.find("ul").append(makeCouponElement(cp));
            $membership.find("ul").append(makePointElement(pt));
            $membership.find("ul").append(makePayPointElement(pp));
            $("#order_conf_discout").append($membership);
        }

        if (promotion != null) {
            var $promotion = $("<li><dt>이벤트 할인금액</dt><dd><ul></ul></dd></li>");
            $promotion.find("ul").append(makePromotionElement(promotion));
            $("#order_conf_discout").append($promotion);
        }

        if (localMmbrs.isExistUseMembership || promotion != null) {
            $(".event_discount").show();
        }
    }

    // 할인 내역 템플릿
    var discountTemplate = '<li><strong class="fst_col">{0}</strong><strong class="last_col">-{1} 원</strong></li>';

    /*프로모션 할인내역 li 생성*/
    function makePromotionElement(pt) {
        if (pt == null) return null;
        return discountTemplate.format("페이코 오더 프로모션", numberWithCommas(pt.discountAmt));
    }

    /*쿠폰 할인 내역 li 생성*/
    function makeCouponElement(cp) {
        if (cp == null) return;
        return discountTemplate.format("쿠폰", numberWithCommas(cp.amt));
    }

    /*충전금 할인 내역 li 생성*/
    function makePayPointElement(pp) {
        if (pp == null) return;
        return discountTemplate.format("충전금", numberWithCommas(localMmbrs.getPayPointUseTotAmt()));
    }

    /*포인트 할인 내역 생성*/
    function makePointElement(pt) {
        if (pt == null || pt == 0) return;
        return discountTemplate.format("포인트", numberWithCommas(pt));
    }

    // 주문내역확인창에 '총 결제 금액' 영역 위치 지정
    function positionFixing() {
        if ($(".ly_option_select.check:not('.ticket') .btm_txt").length) {
            var listHeight = $(".ly_option_select.check:not('.ticket') .btm_txt").height();
            var priceHeight = $(".ly_option_select.check:not('.ticket') .row_total.discount2").height();
            var totalHeight = listHeight + priceHeight;
            $(".ly_option_select.check:not('.ticket') .row_total.discount2").css("bottom", listHeight + 96.5);
            $(".ly_option_select.check:not('.ticket') .orderCheck").css("bottom", totalHeight + 116);
        }
    }

    /**
     * 할인으로 0원으로 만들었을떄 결제방법 선택을 비활성화 시킨다.
     * 함수 호출해야되는 부분
     * 1. 멤버십 쿠폰 적용시
     * 2. 멤버십 충전금 적용시
     * 3. 장바구니 열릴때
     * 4. e-상품권 적용시
     * 5. 상품 변경시 > 멤버십 변동 사항 있을때
     **/
    function setPaymentDesibed() {
        // 적용 불가한 프로모션이 있는지 체크해서 null 처리
        chkValidPromotion();
        var amt = getPayTotAmt(getBasket().totAmt);
        // 0원이면 결제방법 선택 비활성화
        if (amt == 0) {

            // 결제 방법 비활성화
            $("div[name=divPay]").find(".method").attr("disabled", true);
            // 기존에 선택한 결제 방법 초기화
            $("#pay").val("");

            // 선택된 결제방법이 있으면 해제
            if ($("div[name=divPay]").parent().find(".payment_on").length > 0) {
                $("div[name=divPay]").parent().find(".payment_on").attr("class", "btn_payment");
            }
        }
        // 0원이 아니면 다시 활성화
        else {
            $("div[name=divPay]").find(".method").attr("disabled", false);
        }
    }
</script>



















<div class="fade_dimmed"></div>
            <div class="ly_option_select check" id="orderConfirm" style="display:none;">
  <h1 class="tit">주문 내역 확인</h1>
  <ul class="orderCheck">

    <li class="info">
        <dl>
          <dt>픽업매장정보</dt>
          <dd>카페베네(산본역점)</dd>
        </dl>
      </li>
      <li class="info">
        <dl>
          <dt>픽업시간</dt>
          <dd class="paymethod" id="v_pickupTime"></dd>
        </dl>
      </li>
      <li class="info">
        <dl>
          <dt>포장여부</dt>
          <dd id="v_packing"></dd>
        </dl>
      </li>
    <li class="info">
      <dl>
        <dt>고객연락처</dt>
        <dd class="black" id="v_f2"></dd>
      </dl>
    </li>

    <li class="info">
      <dl>
        <dt>결제수단</dt>
        <dd class="black" id="v_payType"></dd>
      </dl>
    </li>


    <li class="order_history">
      <dl>
        <dt>주문내역</dt>
        <dd>
          <ul id="v_orderList">
          </ul>
        </dd>
      </dl>

      <dl class="orderAmount">
        <dt>총 주문 금액</dt>
        <dd id="v_orderAmt"></dd>
        </dl>

      <dl class="event_discount">
        <ul id="order_conf_discout">
        </ul>
      </dl>
    </li>
  </ul>

  <div class="row_total discount2">
    <p class="txt_total">총 결제 금액</p>
    <p class="num_total" id="v_orderTotAmt"></p>
  </div>

  <!-- 아티제 접속 시 -->
    <p class="btm_txt">주문 접수 후 즉시 메뉴가 준비되기 때문에 주문 변경 또는 결제 취소가 어려운 점 양해바랍니다.</p>
    <div class="actions is_multiple">
    <button type="button" class="btn btn_pop btn_gray close_ordercheck">취소</button>
    <button type="button" class="btn btn_pop btn_red" id="orderComplete">결제하기</button>
  </div>
</div>

<script type="text/javascript">

    
    $("#orderComplete").click(function () {
        if (!chkValid()) {
            return;
        }
        commonOrder.approvalOrderPayco();
    });

    function getParam_opt_3() {
        
        return shoppingInfo.getPackingCondition() == true ? "Y" : "N" + "||" + isPickupNow() + "||" + $("#pickupTime").val();
    }

    

    function returnPage(url, params) {
        var form = document.createElement("form");
        var input = new Array();
        form.action = url;
        form.method = "post";
        params.code = "0";
        params.isZeroPayment = "Y";
        var i = 0;
        for (key in params) {
            if (params[key] !== undefined && params[key] !== null && params[key] !== "") {
                input[i] = document.createElement("input");
                input[i].setAttribute("type", "hidden");
                input[i].setAttribute('name', key);
                input[i].setAttribute("value", params[key]);
                form.appendChild(input[i]);
            }
            i++;
        }

        document.body.appendChild(form);
        form.submit();
    }

</script>
<div class="ly_option_select" id="termsCollection" style="display:none;">
  <h1 class="tit">개인정보 수집 및 이용 동의</h1>
  <div class="lst_detail_condition">
    <ol>
      <li>
        <p>1. 수집하는 개인정보 항목</p>
        <p>휴대폰번호, 주문정보, 결제정보, 회원번호,(멤버십 적립시) 멤버십 적립번호(휴대폰 번호 또는 별도 멤버십 번호)</p>
      </li>
      <li>
        <p>2. 수집하는 개인정보 이용 목적</p>
        <p>- 상품주문 및 결제, 멤버십적립, 고객이 주문한 상품의 준비 및 완료 안내</p>
        <p>- 고객민원처리</p>
      </li>
      <li>
        <p><strong>3. 개인정보의 보유 및 이용기간 : 주문일로부터 5년간 보존 후 파기</strong></p>
      </li>
      <li>
        <p>4. 고객님은 동의를 거부하실 수 있으나, 서비스 제공에 필요한 최소한의 정보이므로 동의하지 않으실 경우 서비스 이용이 제한될 수 있습니다.</p>
      </li>
      <li>
        <p>※ (테이블오더/픽업오더/배달오더) 서비스는 주문 및 결제처리, 주문정보 발송 등에 대한 업무를 엔에이치엔페이코㈜에 위탁하여 처리합니다.</p>
      </li>
    </ol>
  </div>
  <div class="actions">
    <button type="button" class="btn btn_pop btn_gray _closeTerm">확인</button>
  </div>
  <button type="button" class="btn_close _closeTerm"><span class="blind">닫기</span></button>
</div>

<script>
    
    $("._closeTerm").click(function(){
        $("#termsCollection, #divDimmed2").hide();
    });
</script>
<div class="ly_pop4" id="deliveryAreaPop" style="display:none;">
  <div class="ly_pop_cont deliver d2">
    <p class="des"><strong>배달 가능지역</strong>을 꼭 확인하세요!</p>
    <span class="sub">배달 불가지역은 주문이 거절될 수 있습니다.</span>
    <dl>
      <dt>배달 가능지역</dt>
      <dd id="deliveryAreaListInPop"></dd>
    </dl>
    <dl id="deliveryPopChargeList" style="display: none">
      <dt>지역별 배달 할증요금</dt>
    </dl>
  </div>
  <div class="actions">
    <button type="button" class="btn btn_pop btn_gray" id="closeDeliveryAreaBtn">확인</button>
  </div>
</div>

<div class="ly_pop4" id="undeliverableAreaPop" style="display:none;">
  <div class="ly_pop_cont deliver d1">
    <p class="des">입력하신 주소는 <strong>배달이 불가</strong>합니다.</p>
    <dl style="text-align:center;">
      <dt>배달 가능지역</dt>
      <dd id="undeliverableAreaListInPop">...</dd>
    </dl>
  </div>
  <div class="actions">
    <button type="button" class="btn btn_pop btn_gray" id="closeUndeliverableAreaBtn">확인</button>
  </div>
</div></div>
    </div>
    <form name="order_info" method="post">
  <input type="hidden" name="good_name" value="">
  <input type="hidden" name="good_mny" value="">
  <input type="hidden" name="pay_method" value="">
  <input type="hidden" name="shopId" value="S190002045">
  <input type="hidden" name="sellerKey" value="OD_SCB1756">
  <input type="hidden" name="cpId" value="OD_SCB1756">
  <input type="hidden" name="productId" value="OD_SCB1756_EASYP">
  <input type="hidden" name="deliveryAmt" value="">
</form>
















<script type="text/javascript">
    
    var pickupTimeObj;
    
    var pickupTimeObj2;
    var seat = $("#seat").val();

    

    function resetShopStorage() {
        localstorageShop.init();
        localstorageShop.setServiceType("OT02");
        localstorageShop.setProfile("prod");
        localstorageShop.setBrandId("BR0034");
        localstorageShop.setShopId("S190002045");
        localstorageShop.setShopName("카페베네(산본역점)");
        localstorageShop.setShopNameCode("NONE");
        localstorageShop.setAdvanceOrderFlag("N");
        localstorageShop.setPickupDeliveryAmt(0);
        localstorageShop.setOrderTimeType("OTT2");
        localstorageOrder.init();
        localstorageOrder.setSubServcie(null);
    }

    function checkResetStorage() {
        if ("S190002045" != localstorageShop.getShopId()
                || "OT02" != localstorageShop.getServiceType()
                || document.order_info.shopId.value != "S190002045"
                || document.order_info.shopId.value != localstorageShop.getShopId()) {
            return true; // 스토리지 초기화
        }
        return false
    }

    function mainInit() {
        storageSingulariry();
        if ("N" == "Y") {
            $("#pickupArea").show();
        }
        var useSafetyNumber = localstorageDelivery.getUseSafetyNumber();

        
        commonOrder.checkShopIdAndServiceType();
        if (useSafetyNumber != null) {
            localstorageDelivery.setUseSafetyNumber(useSafetyNumber);
        }

        
        if (!isBasketEmpty()) {
            var _data = getBasket();
            $('#totalQty').text(_data.totQty);
            $('#totalAmt').text(numberWithCommas(_data.totAmt));
            deactiveCart(30);
            // 매장 운영상태에 따른 하단 주문하기 영역의 '주문하기' 버튼 disabled 처리
            
                localstorageShop.setCloseOperationStatus(false);
                $(".btn_order").attr("disabled", false);
            
        } else {
            setPromotion(null);
            setExistPromotion({});
            removeCart();
        }

        resetShopStorage();

        
        var serviceType = "OT02";

        if (serviceType !== "") {
            localstorageShop.setServiceType(serviceType);
        } else {
            removeServiceType();
        }

        
        var corpIndType = "CI01";

        if (corpIndType !== "") {
            localstorageShop.setCorpIndType(corpIndType);
        }

        
        var oldTableNo = getTableNo();

        if (oldTableNo == 'null') {
            removeStorageItem("tableNo")
        }

        var tableNoTest = $("#tableNo").val();
        if (tableNoTest != "" && tableNoTest != "null") {
            var tableNo = tableNoTest;
            setTableNo(tableNo);
            $("#v_tableNo").text(tableNo);
            $("#v_tableNoDiv").show();
        } else {
            removeTableNo();

        }

        
        if ($("#userId").val() != undefined && $("#userId").val() != "") {
            var userId = $("#userId").val();
            localMmbrs.setUserId(userId);
            localMmbrs.enableLchk();        
        } else { 
            localMmbrs.removeUserId();
            localMmbrs.disableLchk();     
        }

        
            removeUserAgent();
        
            removePaycoAppToken();
        
        localstorageMember.init();
        
        var userNameStr = $("#userNameStr").val();
        var mpStr = $("#mp").val();
        var orderNameStr = $("#orderNameStr").val();
        var seatStr = $("#seat").val();
        var checkin = $("#checkin").val();

        localstorageMember.setNickname(userNameStr);
        localstorageMember.setPhoneNumberQueryStr(mpStr);
        localstorageMember.setOrdername(orderNameStr);
        localstorageMember.setSeat(seatStr);
        localstorageMember.setCheckIn(checkin);

        if (localstorageMember.getPhoneNumberQueryStr()) {
            localstorageMember.setPhoneNumber(localstorageMember.getPhoneNumberQueryStr());
        }

        
            /*푸드코트 코너가 영업안하면 해당 내용을 알려준다.*/
            

        /*주문 시 요청사항 숨기기 처리*/
        

        previewMenu();
    }

    
    function previewMenu() {
        
        var preViewShopMenuNo = "";

        if (preViewShopMenuNo != undefined && preViewShopMenuNo != null && preViewShopMenuNo != "") {
            
            setTimeout(function() {
                
                removeCart();
                menuForm.showMenu(preViewShopMenuNo);
            }, 50);

        }
    }

    
    function autoCorssScroll() {
        /*가로 스크롤 가능하게 하는 소스 삭제 아래 퍼블리셔의 소스로 대체*/
        /* 김민주씨 소스 start */
        var totalWidth = 0;
        var tabList = $('.tab_nav ul li');
        var listNum = tabList.length;
        var thisMargin = 10; //고정 margin-left값
        var thisMarginTotal = thisMargin * listNum;

        tabList.each(function () {
            totalWidth = totalWidth + $(this).width();
        });

        $('.tab_nav ul').css('width',(totalWidth + thisMarginTotal) + thisMargin);
        var winWidth = $('body').width();
        var navWidth = $('.tab_nav ul').width();

        if (navWidth > winWidth) {
            $('.nav_wrap ').addClass("active");
        }
        /* 김민주씨 소스 end */

        var active = $(".tab_nav .active");
        if (active != null && active.length > 0) {
            var left = active.position().left;
            var currScroll = $(".tab_nav").scrollLeft();
            var contWidth = $(".tab_nav").width()/2;
            var activeOuterWidth = active.outerWidth() / 2;
            left = left + currScroll - contWidth + activeOuterWidth;
            $(".tab_nav").animate({ scrollLeft:left },0);
        }
    }

    
    function activeCart(){
        $(".process_checkout").css("top", "60px");
        bodyScrollLock();
        $('.process_checkout').addClass('is_expanded');
        $('#divDimmed').css('display','block');
    }

    
    function deactiveCart(time){
        if (!isBasketEmpty()) {
            if (parseInt(getBasket().totQty) > 0) {
                $('.process_checkout').removeClass('is_expanded');
                $('#divDimmed').css('display','none');
                bodyUnScrollLock();
                setTimeout(function () {
                    $('.process_checkout').removeAttr('style');
                    $("body").addClass("has_cart");
                }, time);
            } else {
                removeCart();
            }
        } else {
            removeCart();
        }
    }

    
    function removeCart() {
        $("#divProcessCheckout").hide();
        $("body").removeClass("has_cart");
        bodyUnScrollLock();
        $("#divDimmed").hide();
    }

    
    var delayNotiCupCnt;

    function chkSold(_data) {
        var cd = "";
        var msg = "";
        call("/ord/sold", "json", {
            'shopId': _data.key,
            'basketJson': JSON.stringify(_data),
            'packaging': shoppingInfo.getPackingCondition(),
            'cupFlag' : shoppingInfo.getCupCondition(),
            'serviceType': localstorageShop.getServiceType()
            },
            function (data){
                if(data.res_cd == "0002") {
                    var timeObj = JSON.parse(data.res_msg);
                    shopService.selectShopCloseMessage(timeObj, timeObj.type);
                    return msg = data.res_msg;
                }
                if (data.res_cd == "0000") {
                    delayNotiCupCnt = data.res_msg;
                } else {
                    msg = data.res_msg;
                    if( !isNullAndEmpty(msg) ) {
                        if (msg.indexOf("^") != -1) {
                            var resultMsg = msg.split("^")[0];
                            var shopName = msg.split("^")[1];
                            msg = (resultMsg + "<p class='store'><i></i>" + shopName + "</p>");
                        }
                        showPopOperStatus(msg);
                    }
                }
            },
            function (request, status, error) {
                msg = request.responseJSON.errorMsg;
                if (!isNullAndEmpty(msg)) {
                    showPop(msg);
                }
            });

        return msg;
    }

    
    function getPrt(shopId, serviceType, phone, totAmt) {
        var promotion = null;
        call("/menu/find/promotion", "json",
            {
            'shopId': shopId,
            'serviceType': serviceType,
            'phone': phone.replaceAll("-", ""),
            'totAmt': totAmt
            },
            function (data) {
                
                promotion = data.promotion;
                setPromotion(promotion);
            },
            function (request, status, error) {
                msg = request.responseJSON.errorMsg;
                if (!isNullAndEmpty(msg)) {
                    showPop(msg);
                }
            });
        return promotion;
    }

    /*메뉴 그룹 이동*/
    function moveMenuGroup (menuGroupNo) {
        $("#shopMenuGroupNo").val(menuGroupNo);
        $("#userName").val(localstorageMember.getNickname());
        $("#mp").val(localstorageMember.getPhoneNumberQueryStr());
        $("#frmMain").prop("target", "");
        $("#frmMain").prop("method", "post");
        
        $("#frmMain").prop("action", "/menu/pickup").submit();
        $("#frmMain").submit();
    }

    $(document).ready(function() {
        var menuLimitCount = 20;
        mainInit();
        autoCorssScroll();

        
        $("#find_location").on('click', function (e) {
            $('#wrap_location').show();
            e.preventDefault(e);
        });

        
        $("#bridge_home").click(function () {
            var url = "/sports/kia";
            var seat = localstorageMember.getSeat() != 'null' ?
                localstorageMember.getSeat() : "";
            var mp = localstorageMember.getPhoneNumberQueryStr() != 'null' ?
                localstorageMember.getPhoneNumberQueryStr() : "";
            var orderName = localstorageMember.getOrdername() != 'null' ?
                localstorageMember.getOrdername() : "";
            var userId = localMmbrs.getUserId() != 'null' ? localMmbrs.getUserId() : "";
            var checkin = localstorageMember.getChcekIn() != 'null' ?
                localstorageMember.getChcekIn() : "";

            var parameter = "";
            if (!isNullAndEmpty(seat)) {
                parameter += "?seat=" + seat;
            }
            if (!isNullAndEmpty(mp)) {
                parameter += (parameter.indexOf("?") > -1 ? "&mp=" + mp : "?mp=" + mp)
            }
            if (!isNullAndEmpty(orderName)) {
                parameter += (parameter.indexOf("?") > -1 ?
                    "&orderName=" + orderName : "?orderName=" + orderName)
            }
            if (!isNullAndEmpty(userId)) {
                parameter += (parameter.indexOf("?") > -1 ?
                    "&userId=" + userId : "?userId=" + userId)
            }
            if (!isNullAndEmpty(checkin)) {
                parameter += (parameter.indexOf("?") > -1 ?
                    "&checkin=" + checkin : "?checkin=" + checkin)
            }

            window.location.href = url + parameter;
        });

        
        $(".a_menu_group").click(function () {
            moveMenuGroup($(this).data("menuGroupNo"));
        });

        /*메뉴 그룹 이전 버튼*/
        $("#menu_group_prev").click(function () {
            var menuGroupNo = "";

            // 이전 메뉴 그룹이 있으면
            if ($(".tab_nav ul").find(".active").prev().length > 0) {
                menuGroupNo = $(".tab_nav ul").find(".active").prev().children().data("menuGroupNo");
            } else { // 이전 메뉴 그룹이 없으면 제일 마지막 메뉴 그룹으로 이동
                menuGroupNo = $($(".tab_nav ul li")[$(".tab_nav ul li").length-1]).find("a").data("menuGroupNo");
            }
            moveMenuGroup(menuGroupNo);
        });

        /*메뉴 그룹 다음 버튼*/
        $("#menu_group_next").click(function () {
            var menuGroupNo = "";

            if ($(".tab_nav ul").find(".active").next().length > 0) {
                menuGroupNo = $(".tab_nav ul").find(".active").next().children().data("menuGroupNo");
            } else {
                menuGroupNo = $($(".tab_nav ul li")[0]).find("a").data("menuGroupNo");
            }
            moveMenuGroup(menuGroupNo);
        });


        
        $('.checkout_header button').on('click', function () {
            if ($(".btn_order").attr("disabled") == "disabled") {
                return;
            }

            
            if (localstorageShop.getServiceType() == "OT01"
                    || localstorageShop.getServiceType() == "OT02"
                    || localstorageShop.getServiceType() == "OT03"
                    || localstorageShop.getServiceType() == "OT06") {
                showBasket(this);
                return;
            }


            if ($(this).parents().hasClass('is_expanded')) {
                deactiveCart(300);
            } else {
                if (!isBasketEmpty()) {
                    var _data = getBasket();
                    if (_data.products.length > 0) {
                        $("#basketJson").val(JSON.stringify(_data));
                        var frmMainData = {
                            'shopMenuGroupNo':$("#shopMenuGroupNo").val(),
                            'shopMenuNo':$("#shopMenuNo").val(),
                            'shopId':$("#shopId").val(),
                            'basketJson':$("#basketJson").val(),
                            'modType':$("#modType").val(),
                            'arrNo':$("#arrNo").val(),
                            'serviceType':"OT02",
                            'userId':localMmbrs.getUserId()
                            };

                        // 추가 옵션 정보값을 배열로 저장
                        var addOptionVal = [];
                        for (var i = 0; i < $("input[id^='option']").length; i++) {
                            addOptionVal.push($("input[id^='option']").eq(i).val());
                        }

                        call("basket/view", "json", frmMainData, function (data) {
                            
                            $('#divBasket').html(data.productsHtml);

                            // 아티제일 경우만 '포장여부' 영역의 노출여부를 여기서 세팅
                            var profile = localstorageShop.getProfile();
                            if (localstorageShop.getServiceType() == "OT02" && BRANDNAME == "ARTISEE") {
                                // 아티제일 경우는 컵선택을 필수옵션에서 선택하기 때문에 장바구니 화면에서 컵선택 영역이 보여질 필요가 없음
                                data.includeDrinksInCart = false;
                                checkPackingDisplay(data);
                            }

                            shoppingInfo.setFlag(data);
                            
                            if (data.arrOrderAddOption != null && data.arrOrderAddOption != "") {
                                // 주문 추가옵션을 먼저 삭제하고 다시 노출 시킴
                                // 삭제하지 않으면 '주문하기' 버튼을 클릭 할 때마다 주문 추가옵션이 추가되어서 보여짐
                                $("input[id^='option']").parent().remove();
                                $("#f3").parent().before(arrOrderAddOptionToString(data.arrOrderAddOption));

                                if (addOptionVal.length > 0) {
                                    for (var i = 0; i < $("input[id^='option']").length; i++) {
                                        $("input[id^='option']").eq(i).val(addOptionVal[i]);
                                    }
                                }
                            }

                            
                            setPromotionInit(data);

                            
                            shoppingInfo.setMyPhoneNumber();

                            
                                if (document.getElementsByName('divPay').length == 1) {
                                    paymentSelect(document.getElementsByName('divPay')[0].id);
                                }
                            

                        });
                    }

                    shopService.requestPickupTime();
                }
                setPaymentDesibed(); // 결제금액 0원시 결제방법 비활성화
                activeCart();
            }
        });

        /*장바구니에 멤버십 사용 정보 세팅*/
        function setMembershipInfo (restPoint) {
            if (localMmbrs.getUserId() == null) {
                setUseMembershipInit();
            }

            // 쿠폰 세팅
            var coupon = localMmbrs.getCoupon();
            setCouponUse(coupon);
            // 적립금 세팅
            setDpPayPoint(getTotUsePointWithStorage());
            // 사용가능한 포인트 세팅
            setRestPoint(returnInt(restPoint));
            // 사용하는 포인트 세팅
            setUsePoint(localMmbrs.getPoint());

            /**
            * 사용가능한 멤버십 종류가 없으면 멤버십 삭제
            * 기존에 세팅된 멤버십 정보가 있기 때문
            *
            * main.jsp 에서 삭제하기 때문에 일딴 여기서는 삭제
            *
            **/
            
        }

        function showBasket (_this) {
            if ($(_this).parents().hasClass('is_expanded')) { // 이미 장바구니 화면에 표기된 경우
                deactiveCart(300);
                return;
            }

            if (isBasketEmpty()) { // 장바구니 비어있을경우
                return;
            }

            var _data = getBasket();

            if (_data.products.length > 0) {
                $("#basketJson").val(JSON.stringify(_data));
                var frmMainData = {
                    'shopMenuGroupNo':$("#shopMenuGroupNo").val(),
                    'shopMenuNo':$("#shopMenuNo").val(),
                    'shopId':$("#shopId").val(),
                    'basketJson':$("#basketJson").val(),
                    'modType':$("#modType").val(),
                    'arrNo':$("#arrNo").val(),
                    'serviceType': localstorageShop.getServiceType(),
                    'userId': localMmbrs.getUserId()
                    };

                // 추가 옵션 정보값을 배열로 저장
                var addOptionVal = [];
                for (var i = 0; i < $("input[id^='option']").length; i++) {
                    addOptionVal.push($("input[id^='option']").eq(i).val());
                }

                
                    call("basket/view", "json", frmMainData, function(data) {
                        basketViewProcessor(data);
                    });
                

                function basketViewProcessor (data) {
                    
                    $('#divBasket').html(data.productsHtml);

                    basketView.showBoxPackingElement(data.boxPackingOption);

                    // 아티제일 경우만 '포장여부' 영역의 노출여부를 여기서 세팅
                    var profile = localstorageShop.getProfile();
                    if (localstorageShop.getServiceType() == "OT02" && BRANDNAME == "ARTISEE") {
                        // 아티제일 경우는 컵선택을 필수옵션에서 선택하기 때문에 장바구니 화면에서 컵선택 영역이 보여질 필요가 없음
                        data.includeDrinksInCart = false;
                        checkPackingDisplay(data);
                    }

                    // 업종분류가 '일반음식점'일 경우, 컵 선택 영역을 default로 보여주고 컴 선택 영역의 버튼문자 변경(컵 선택 -> 드실 곳, 다회용 (매장용) -> 매장식사, 일회용 (외부용) ->테이크아웃)
                    // 업종분류가 'pc방'일 경우도 '일반음식점'과 동일하게 프로세스 진행
                    // 업종분류가 '푸드코트'일 경우도 '일반음식점'과 동일하게 프로세스 진행
                    if ((data.corpIndType == "CI02" && (localstorageShop.getServiceType() == "OT01"
                            || localstorageShop.getServiceType() == "OT02"))
                            || data.corpIndType == "CI03" || data.corpIndType == "CI04") {
                        $("#corpIndType").val("Y");
                        data.includeDrinksInCart = true;
                        shoppingInfo.setFlag(data);
                        setCommentChange();
                    } else {
                        $("#corpIndType").val("N");
                        shoppingInfo.setFlag(data);
                    }

                    
                    if (data.arrOrderAddOption != null && data.arrOrderAddOption != "") {
                        // 주문 추가옵션을 먼저 삭제하고 다시 노출 시킴
                        // 삭제하지 않으면 '주문하기' 버튼을 클릭 할 때마다 주문 추가옵션이 추가되어서 보여짐
                        $("input[id^='option']").parent().remove();
                        $("#f3").parent().before(arrOrderAddOptionToString(data.arrOrderAddOption));

                        if (addOptionVal.length > 0) {
                            for(var i = 0; i < $("input[id^='option']").length; i++) {
                                $("input[id^='option']").eq(i).val(addOptionVal[i]);
                            }
                        }
                    }

                    
                    if(localstorageShop.getServiceType() == "OT01" && (("" != ""
                            && "" != "null") && Number("") > 0)) {
                        // 업종구분이 'pc방'일 경우
                        if (data.corpIndType == "CI03") {
                            $("#divTableNo").find("label").text("좌석번호");
                            $("#divTableNo").find("input").attr("placeholder", "좌석번호를 입력해주세요.");
                        }
                        $("#divTableNo").show();
                        $("#iptTableNo").val(getTableNo());
                    }

                    
                    setPromotionInit(data);

                    
                    shoppingInfo.setMyPhoneNumber();


                    

                    var corpIndType = localstorageShop.getCorpIndType();
                    var pickupDvryUseFlag = shoppingInfo.isPickupDvryUseFlag();
                    var checkIn = localstorageMember.getChcekIn();

                    if (corpIndType === "CI05" && pickupDvryUseFlag === "Y" && checkIn === "Y") {
                        /*setPickupDvry();*/
                    }

                    
                        if (document.getElementsByName('divPay').length == 1) {
                            paymentSelect(document.getElementsByName('divPay')[0].id);
                        }
                    

                    setPaymentDesibed(); // 결제금액 0원시 결제방법 비활성화
                    activeCart();
                    shopService.requestPickupTime();
                }; // call() end
            } // if end
        }

        
        $(document).on("click", ".askRemoveBasket", function (event, data) {
            var shopMenuNo = $(this).data("shopMenuNo");
            var arrNo = $(this).data("arrNo");

            /*멤버십 쿠폰이 적용된 상태에 장바구니 가격이 변경되면 쿠폰을 초기화 시킨다.*/
            
                askRemoveBasket(shopMenuNo, arrNo);
            
        });

        function askRemoveBasket(shopMenuNo, arrNo) {
            showPopConf("선택하신 메뉴를 삭제하시겠습니까?", function(){
                removeBasket(shopMenuNo, arrNo);
            });
        }

        /*장바구니 목록 삭제*/
        function removeBasket(shopMenuNo, arrNo) {
            $("#shopMenuNo").val(shopMenuNo);
            $("#arrNo").val(arrNo);

            if (!isBasketEmpty() && $("#shopMenuNo").val() !== "" && $("#arrNo").val() !== "") {
                $("#basketJson").val(getBasketToString());
                var frmMainData = {
                    'shopMenuGroupNo':$("#shopMenuGroupNo").val(),
                    'shopMenuNo':$("#shopMenuNo").val(),
                    'shopId':$("#shopId").val(),
                    'basketJson':$("#basketJson").val(),
                    'modType':$("#modType").val(),
                    'arrNo':$("#arrNo").val(),
                    'serviceType': localstorageShop.getServiceType()
                    };
                call("ord/remove", "json", frmMainData, function(data) {
                    setBasket(data.basket);
                    $('#totalQty').text(data.totalQty);
                    $('#totalAmt').text(data.totalAmt);
                    $('#divBasket').html(data.view);

                    // 아티제일 경우만 '포장여부' 영역의 노출여부를 여기서 세팅
                    var profile = localstorageShop.getProfile();

                    if (localstorageShop.getServiceType() == "OT02" && BRANDNAME == "ARTISEE") {
                        // 아티제일 경우는 컵선택을 필수옵션에서 선택하기 때문에 장바구니 화면에서 컵선택 영역이 보여질 필요가 없음
                        data.includeDrinksInCart = false;
                        checkPackingDisplay(data);
                    }

                    // 업종분류가 '일반음식점'일 경우, 컵 선택 영역을 default로 보여주고 컴 선택 영역의 버튼문자 변경(컵 선택 -> 드실 곳, 다회용 (매장용) -> 매장식사, 일회용 (외부용) -> 테이크아웃)
                    // 업종분류가 'pc방'일 경우도 '일반음식점'과 동일하게 프로세스 진행
                    if ((data.corpIndType == "CI02" && (localstorageShop.getServiceType() == "OT01"
                            || localstorageShop.getServiceType() == "OT02"))
                            || data.corpIndType == "CI03" || data.corpIndType == "CI04") {
                        $("#corpIndType").val("Y");
                        data.includeDrinksInCart = true;
                        shoppingInfo.setFlag(data);
                        setCommentChange();
                    } else {
                        $("#corpIndType").val("N");
                        shoppingInfo.setFlag(data);
                    }

                    if ( parseInt(data.totalQty) < 1) {
                        removeCart();
                        // 장바구니에 담긴 상품이 하나도 없을 경우 주문 추가옵션 정보도 초기화 시켜준다.
                        $("input[id^='option']").parent().remove();
                    }
                    $("#popDelMenu, #divDimmed2").hide();
                });
            }
        }

        
        $(document).on("click", ".modBasket", function(event, data) {
            var shopMenuNo = $(this).data("shopMenuNo");
            var cnt = $(this).data("cnt");
            var type = $(this).data("type");
            var arrNo = $(this).data("arrNo");

            
            if(type == "minus" && cnt == 1) {
                return;
            }

            /*멤버십 쿠폰이 적용된 상태에 장바구니 가격이 변경되면 쿠폰을 초기화 시킨다.*/
            
                modBasket(shopMenuNo, cnt, type, arrNo);
            

        });

        /*장바구니 수량 변경*/
        function modBasket(shopMenuNo, cnt, type, arrNo) {
            // 장바구니 최대수량값이 존재하는 경우 장바구니 최대수량값보다 많은 값이 장바구니에 담길수 없게 alert처리
            // if (localStorage.getItem("basketMaxCount") != null && localStorage.getItem("basketMaxCount") != "") {
            // var basket = getBasket();
            // if (type == "plus" && (Number(basket.totQty) + 1 > localStorage.getItem("basketMaxCount"))) {
            // showPop("장바구니에 최대 <span>" + localStorage.getItem("basketMaxCount") + "</span>개까지만 담을 수 있습니다.");
            // return;
            // }
            // }

            // 수량제한
            var chk = true;

            if (localstorageShop.getServiceType() == "OT05") {
                menuLimitCount = 10;
            }

            if (!type == "plus") {
                if(cnt == 1) {
                    chk = false;
                }
            }

            if (!isBasketEmpty() && chk == true) {
                $("#basketJson").val(getBasketToString());
                $("#shopMenuNo").val(shopMenuNo);
                $("#modType").val(type);
                $("#arrNo").val(arrNo);

                var frmMainData = {
                    'shopMenuGroupNo':$("#shopMenuGroupNo").val(),
                    'shopMenuNo':$("#shopMenuNo").val(),
                    'shopId':$("#shopId").val(),
                    'basketJson':$("#basketJson").val(),
                    'modType':$("#modType").val(),
                    'arrNo':$("#arrNo").val(),
                    'serviceType': localstorageShop.getServiceType()
                    };

                call("ord/add", "json", frmMainData, function(data) {
                    if (data.overMaxCount != null && data.overMaxCount != "") {
                        showPop(data.overMaxCount);
                        return;
                    }
                    setBasket(data.basket);
                    $('#totalQty').text(data.totalQty);
                    $('#totalAmt').text(data.totalAmt);
                    $('#divBasket').html(data.view);
                });
            }
        }

        // shopService.requestShopOperatingTimeInfo();
        shopService.requestShopAllInfo();
    });

    // 주문서 항목 옵션 정보 문자열로 변경
    function arrOrderAddOptionToString(obj) {
        var strOrderAddOption = "";

        for (var i = 0; i < obj.length; i++) {
            strOrderAddOption += "<div class=\"field\">";
            strOrderAddOption += "<label class=\"label\" for=\"option" + i + "\"><span>" + obj[i].addOptName + "</span></label>";
            strOrderAddOption += ("<input type=\"text\" name=\"option" + i + "\" id=\"option" + i + "\""
                + ("IPT1" == (obj[i].inputType) ? "" : " inputmode=\"numeric\"") + " class=\"input_txt\" placeholder=\""
                + ((obj[i].addOptComments == "" || obj[i].addOptComments == null) ? "" : obj[i].addOptComments) + "\""
                + ("IPT1" == (obj[i].inputType) ? "" : " onkeyup='checkNumber(this)'")
                + ("IPT1" == (obj[i].inputType) ? " maxlength=\"40\"" : " maxlength=\"10\"") + " autocomplete=\"off\">");
            strOrderAddOption += "</div>";
        }
        return strOrderAddOption;
    };

    function setServiceList() {
        var serviceTypeList = [];
        
            serviceTypeList.push("OT02");
        
            serviceTypeList.push("OT05");
        

        localstorageShop.setServiceTypeList(serviceTypeList);
    };

    function setCommentChange() {
        $("#includeDrinksInCart strong").text("드실 곳");
        $("#mug button").text("매장식사");
        $("#toGo button").text("테이크아웃");
        $("#mugInfo").hide();
        $("#toGoInfo").hide();
        $("#pickupTimeNow").hide();
    };

    function checkPackingDisplay(data) {
        var packingFlagYn = false;
        var products = getBasket().products;

        for (var i = 0; i < products.length; i++) {
            // 메뉴의 포장여부값 체크
            if (products[i].orderMenu.packingFlag == "Y") {
                var chkCount = 0;
                var orderMenuOptions = products[i].orderMenuOptions.filter(function(orderMenuOption) {
                    return orderMenuOption.optionType == "OPT1";
                    });
                for (var j = 0; j < orderMenuOptions.length; j++) {
                    // 메뉴옵션의 포장여부값 체크
                    // 필수옵션의 포장여부 노출설정값만 체크(컵선택 옵션값은 필수옵션이기 때문임, 따라서 선택옵션의 포장여부 노출설정값은 체크하지 않음)
                    if (orderMenuOptions[j].packingDisplayFlag == "Y") {
                        chkCount++;
                    }
                }

                if (orderMenuOptions.length == chkCount) {
                    // 해당 메뉴에 선택된 옵션들의 '포장여부 노출설정(PACKING_DISPLAY_FLAG)' 값이 모두 'Y'인 경우
                    packingFlagYn = true;
                    break;
                }
            }
        }

        // '포장여부' 영역 노출여부값 설정
        data.includePacking = packingFlagYn;
    };

    function setPromotionInit(data) {
        // 프로모션 할인문구 영역 초기화
        $("#payco_discount_box_0801").empty();
        $("#credit_discount_box_0801").empty();

        if (data.promotionBanner != null && data.promotionBanner != "") {
            var promotionBannerTypse = [];
            var brandPromotionFlag = false;
            var paycoPromotionFlag = false;
            for (var i = 0; i < data.promotionBanner.length; i++) {
                var bannerType = data.promotionBanner[i].bannerType;
                promotionBannerTypse.push(bannerType);
                // 브랜드프로모션
                if (bannerType == "BN01") {
                    $("#credit_discount_box_0801").append(data.promotionBanner[i].comment1 + data.promotionBanner[i].comment2);
                    brandPromotionFlag = true;
                } else if (bannerType == "BN02") {// PAYCO프로모션
                    $("#payco_discount_box_0801").append(data.promotionBanner[i].comment1 + data.promotionBanner[i].comment2);
                    paycoPromotionFlag = true;
                }
            }

            // 선택된 결제방법
            // 1. pay_1(PAYCO)
            // 2. pay_4(신용카드)
            // 3. pay_5(휴대폰)
            var selectedPay = "";

            $("div[name='divPay']").each(function(index) {
                if ($(this).hasClass("payment_on")) {
                    selectedPay = $(this).attr("id");
                }
            });

            // ※ 결제방법에 '할인' 말풍선 이미지 보여주기
            if (brandPromotionFlag && paycoPromotionFlag) {
                $("#pay_4 .ico_discout").show();
                $("#pay_5 .ico_discout").show();
                $("#pay_1 .ico_discout").show();
                // 1. 장바구니 화면이 열릴 때, 이미 선택되어진 결제방법을 확인해서 해당 결제방법에 프로모션이 존재하는 경우 하위에 할인문구 영역을 보여줌
                // 2. 장바구니 화면이 열릴 때, 이미 선택되어진 결제방법을 확인해서 해당 결제방법에 프로모션이 존재하지 않는 경우 하위에 할인문구 영역을 숨김
                setPromotionComment(brandPromotionFlag, paycoPromotionFlag, selectedPay);
            } else if (!brandPromotionFlag && paycoPromotionFlag) {
                $("#pay_4 .ico_discout").hide();
                $("#pay_5 .ico_discout").hide();
                $("#pay_1 .ico_discout").show();
                // 1. 장바구니 화면이 열릴 때, 이미 선택되어진 결제방법을 확인해서 해당 결제방법에 프로모션이 존재하는 경우 하위에 할인문구 영역을 보여줌
                // 2. 장바구니 화면이 열릴 때, 이미 선택되어진 결제방법을 확인해서 해당 결제방법에 프로모션이 존재하지 않는 경우 하위에 할인문구 영역을 숨김
                setPromotionComment(brandPromotionFlag, paycoPromotionFlag, selectedPay);
            } else if (brandPromotionFlag && !paycoPromotionFlag) {
                $("#pay_4 .ico_discout").show();
                $("#pay_5 .ico_discout").show();
                $("#pay_1 .ico_discout").hide();
                // 1. 장바구니 화면이 열릴 때, 이미 선택되어진 결제방법을 확인해서 해당 결제방법에 프로모션이 존재하는 경우 하위에 할인문구 영역을 보여줌
                // 2. 장바구니 화면이 열릴 때, 이미 선택되어진 결제방법을 확인해서 해당 결제방법에 프로모션이 존재하지 않는 경우 하위에 할인문구 영역을 숨김
                setPromotionComment(brandPromotionFlag, paycoPromotionFlag, selectedPay);
            }

            if (data.brandPromotion != null && data.brandPromotion != "") {
                setExistPromotion(data.brandPromotion);
            } else {
                setExistPromotion({});
            }
            setStorageItem("promotionBannerTypes", JSON.stringify({"promotionBannerTypes" : promotionBannerTypse}));
        } else {
            $("#pay_1 .ico_discout").hide();
            $("#pay_4 .ico_discout").hide();
            $("#pay_5 .ico_discout").hide();
            $(".discount_box").hide();
            $("#payco_discount_box_0801").hide();
            $("#credit_discount_box_0801").hide();
            setExistPromotion({});
            setStorageItem("promotionBannerTypes", JSON.stringify({}));
        }
    };

    function setPromotionComment(brandPromotionFlag, paycoPromotionFlag, selectedPay) {
        if (selectedPay == "") {
            $(".discount_box").hide();
            $("#payco_discount_box_0801").hide();
            $("#credit_discount_box_0801").hide();
        } else {
            if (brandPromotionFlag && paycoPromotionFlag) {
                if (selectedPay == "pay_1") {
                    $(".discount_box").show();
                    $("#payco_discount_box_0801").show();
                    $("#credit_discount_box_0801").hide();
                } else if(selectedPay == "pay_4" || selectedPay == "pay_5") {
                    $(".discount_box").show();
                    $("#payco_discount_box_0801").hide();
                    $("#credit_discount_box_0801").show();
                }
            } else if (!brandPromotionFlag && paycoPromotionFlag) {
                if (selectedPay == "pay_1") {
                    $(".discount_box").show();
                    $("#payco_discount_box_0801").show();
                    $("#credit_discount_box_0801").hide();
                } else if(selectedPay == "pay_4" || selectedPay == "pay_5") {
                    $(".discount_box").hide();
                    $("#payco_discount_box_0801").hide();
                    $("#credit_discount_box_0801").hide();
                }
            } else if (brandPromotionFlag && !paycoPromotionFlag) {
                if (selectedPay == "pay_1") {
                    $(".discount_box").hide();
                    $("#payco_discount_box_0801").hide();
                    $("#credit_discount_box_0801").hide();
                } else if(selectedPay == "pay_4" || selectedPay == "pay_5") {
                    $(".discount_box").show();
                    $("#payco_discount_box_0801").hide();
                    $("#credit_discount_box_0801").show();
                }
            }
        }
    };
    </script>



<script type="text/javascript" src="/resource/js/mobileSelect.js?ver=2020042701"></script>
<script type="text/javascript" src="/resource/js/common.js?ver=2020052001"></script>

<script>
    if (/Android/i.test(navigator.appVersion)) {
        window.addEventListener("resize", function () {
            if (document.activeElement.tagName == "INPUT" || document.activeElement.tagName == "TEXTAREA") {
                window.setTimeout(function () {
                    document.activeElement.scrollIntoViewIfNeeded();
                }, 0);
            }
        })
    }

    

    function showPop(msg) {
        if (isNullAndEmpty(msg)) {
            return;
        }
        var id = randomString(5);
        var pop = $("#popCmm").clone(true).attr("id", id).appendTo(document.body);
        pop.find("p").html(msgConvert(msg));

        pop.find(".btn.btn_pop.btn_gray").bind("click", function () {
            $("#divDimmed3").hide();
            pop.remove();
        });

        $("#divDimmed3").show();
        pop.show();
    }

    

    function showPopOk(msg, callback) {
        if (isNullAndEmpty(msg)) {
            return;
        }
        var id = randomString(5);
        var pop = $("#popCmm").clone(true).attr("id", id).appendTo(document.body);
        pop.find("p").html(msgConvert(msg));

        pop.find(".btn.btn_pop.btn_gray").bind("click", function () {
            $("#divDimmed2").hide();
            pop.remove();
            if (typeof callback == 'function') {
                callback();
            }
        });

        $("#divDimmed2").show();
        pop.show();
    }

    

    function showPopConf(msg, callback, startRefresh) {
        if (isNullAndEmpty(msg)) {
            return;
        }
        var id = randomString(5);
        var pop = $("#popDelMenu").clone(true).attr("id", id).appendTo(document.body);
        pop.find("p").html(msgConvert(msg));

        pop.find(".btn.btn_pop.btn_red.pop_conf").bind("click", function () {
            $("#divDimmed3").hide();
            pop.remove();
            if (typeof callback == 'function') {
                callback();
            }
        });

        pop.find(".btn.btn_pop.btn_gray.closeLayer2").bind("click", function () {
            $("#divDimmed3").hide();
            $(this).closest("div.ly_pop4").hide();
            $("#popCmmText").text("");
            pop.remove();
            if (typeof startRefresh == 'function') {
                startRefresh();
            }
        });

        $("#divDimmed3").show();
        pop.show();
    }

    

    function msgConvert(msg) {
        return msg.replaceAll('&lt;', '<').replaceAll('&gt;', '>');
    }

    

    function bodyScrollLock() {
        $('html, body').css({'overflow': 'hidden', 'height': '100%'});
        document.body.addEventListener("scroll touchmove touchstart mousewheel",
            function (event) {
                event.preventDefault();
                event.stopPropagation();
            }, {passive: false});
    }

    

    function bodyUnScrollLock() {
        $('html, body').css({'overflow': 'unset', 'height': '100%'});
        document.body.removeEventListener("scroll touchmove touchstart mousewheel", function (event) {
        });
    }

    
    var BRANDNAME = "NONE";

    
    var essentialOptionMsg = "<span>필수 옵션</span>을 선택해주세요.";
    
    if (BRANDNAME == "ARTISEE") {
        essentialOptionMsg = essentialOptionMsg + "<br>( 사이즈, 컵 선택 )";
    }

    
    function showPopOperStatus(msg) {
        if (isNullAndEmpty(msg)) {
            return;
        }
        var id = randomString(5);
        var pop = $("#popShopOperStatus").clone(true).attr("id", id).appendTo(document.body);
        pop.find(".ly_pop_cont.state").html(msgConvert(msg));

        pop.find(".btn.btn_pop.btn_gray").bind("click", function () {
            $("#divDimmed3").hide();
            pop.remove();
        });

        $("#divDimmed3").show();

        

        pop.show();
    }

</script>






</body></html>