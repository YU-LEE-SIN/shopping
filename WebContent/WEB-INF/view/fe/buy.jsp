<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>商品详情 </title>
		<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
				<script src="js/jquery.min.js"></script>
				<script src="js/text/login.js"></script>
				<script src="js/text/categorylist.js"></script>	
		<link rel="stylesheet" type="text/css" href="css/materialize.css">
		<link rel="stylesheet" type="text/css" href="css/iconfont.css">
		<link rel="stylesheet" type="text/css" href="css/product_style.css">
	<style type="text/css">
		.active{
			background-color: #00a0e9;
			color: #fff;
	}
	</style>
	</head>
	<body>
		<div id="nav1" class="nav-wrapper">
			<!--logo-->
			<a href="index.html" class="left brand-logo"><img src="img/index/microsoft-gray.png"/></a>
			<ul class="left hide-on-med-and-down">
				<li><a href="#help">支持与帮助</a></li>
				<li id="help" class="modal">
					<!--modal-->
					<div class="modal-content">
						<h4>在此写下您宝贵的建议:</h4>
						<form class="row input-field">
							<input type="text" name="" id="textarea1" value=""/>
							<label for="textarea1" data-lengh="120">在此写下您宝贵的建议:</label>
						</form>
					</div>
					<div class="divider"></div>
					<div class="modal-footer">
						<a href="" class="modal-action modal-close waves-effect waves-green btn-flat">发送</a>
					</div>
				</li>
				<li>
					<a href="">在线咨询</a>
				</li>
			</ul>
			<ul class="right search-wrapper">
				<li class="input-field">
					<input type="search" placeholder="搜索..." class="hide-on-med-and-down">
					<a href="" class="iconfont icon-iconsousuo hide-on-large-only"></a>
				</li>
				<li><a href="/viewcart" class="iconfont icon-gouwuchexian"></a></a></li>
				<li><a class="" href="#modal1">登录</a></li>
				<li id="modal1" class="modal" style="z-index: 1003; display: none; opacity: 0; transform: scaleX(0.7); top: 0px;">
						<div class="modal-content">
							<h4>登录 </h4>
							<div class="row">
								<form class="input-field col s12">
									<input type="email" class="validate" name="email" id="email">
									<label for="email" data-error="请输入正确的邮箱格式" data-success="输入成功">邮箱账号:</label>
								</form>
							</div>
							<div class="row">
								<form class="input-field col s12">
									<input type="password" name="password" id="password" name="password" value="">
									<label for="password">输入密码:</label>
								</form>
							</div>
						</div>
						<div class="divider"></div>
						<div class="modal-footer">							
							<a href="zhuce.html" class="modal-action modal-close waves-effect waves-green btn-flat" style="padding-top: 0px">没有账号?注册一个</a>
							<input type="submit" id="input-modal-action" class=" modal-action waves-effect waves-green btn-flat" style="padding-top: 0px" value="登录"/>
						</div>
					</li>
					
			</ul>
			<div class="clearfix"></div>
		</div>
		<nav id="nav2" class=" nav-wrapper">
			<a href="/index" class="brand-logo left">商城</a>
			<!--mobile menu-->
			<a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
			<!--PC 端-->
			<ul id="nav-mobile" class="left collapsible hide-on-med-and-down">		
				<c:forEach var="store" items="${store}">
					<li >
					<a class="collapsible-header" href="#!" data-activates="dropdown1" id="${store.pk_sid}">
						<span class="left">${store.sname}</span> 
						<span class="right iconfont icon-jiantou-copy"></span>
						<div class="clearfix"></div>
					</a>
					
					<ul id="dropdown1" class="collapsible-body  section table-of-contents">
							<!-- 显示数据 -->
							<li></li>
						<div class="clearfix"></div>
					</ul> 
				</li>	
				</c:forEach>
				<li>
					<a class="collapsible-header" href="#!" >
						<span class="left">企业频道</span> 
						<div class="clearfix"></div>
					</a>
				</li>
				<li>
					<a class="collapsible-header" href="#!" >
						<span class="left">教育商城</span> 
						<div class="clearfix"></div>
					</a>
				</li>
				<li>
					<a class="collapsible-header" href="#!" >
						<span class="left">以旧换新</span> 
						<div class="clearfix"></div>
					</a>
				</li>
				<div class="clearfix"></div>
			</ul>
			<!-- 手机端 -->
			
			<!--other-->
			<ul class="right hide-on-small-and-down">
				<li><a href="" class="">订单跟踪</a></li>
				<li><a class="">全场免运费</a></li>
			</ul>
		</nav>
		<!-- 
		<div class="nav-bread hide-on-med-and-down">
		    <div class="left nav-wrapper">
			    <div class="col s12">
			        <a href="index.html" class="breadcrumb">主页</a>
			        <a href="store.html" class="breadcrumb">Surface</a>
			        <a href="product1.html" class="breadcrumb">微软 Surface Book</a>
			    </div>
		    </div>
		     -->
		    <div class="right share">
		    <a href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url="_blank">
		    <span class="am-icon-share-alt">分享到QQ空间</a>
		    	<span style="font-size: 0.88em;margin-right: 10px;color: #BF360C;">分享至: </span>
		    	<a href=""><img src="img/product1/sina_logo.png"/></a>
		    </div>
		    <div class="clearfix"></div>
		</div>
		<!--nav end-->
		<!--content-->
		
		<div class="content" style="padding-top: 0px;">
			<div class="row">
				<div class="content1">
					<div class="product col l6 m12 s12">
						<div class="pro-a hide-on-med-and-down">
							<div id="tab-content" class="col l12 m12 s12">
								<ul class="tab-content-n">
								
									<li id="tab1">
									<img src="${product.images}">
									</li>
									<li id="tab2" style="display: none"><img src="img/product1/2.png"></li>
									<li id="tab3" style="display: none"><img src="img/product1/3.png"></li>
								
								</ul>
							</div>
							<div class="carousel carousel-slider col l12 m12 s12 initialized">
								<ul class="carousel-item tabs" style="z-index: 0; opacity: 1; display: block; transform: translateX(0px) translateX(0px) translateX(0px) translateZ(0px);">
									<li class="tab col s3"><a href="#tab1" class="active"><img src="${product.images}"></a></li>
									<li class="tab col s3"><a href="#tab2" class="active"><img src="img/product1/1.png"></a></li>
									<li class="tab col s3"><a href="#tab3" class="active"><img src="img/product1/2.png"></a></li>
									<div class="clearfix"></div>
								<div class="indicator" style="right: 273.188px; left: 0px;"></div>
								</ul>
							<ul class="indicators"><li class="indicator-item active"></li><li class="indicator-item"></li><li class="indicator-item"></li></ul></div>
							<div class="banner-arrows col l8 offset-l2 m8 offset-m2 s8 ">
						      	<a class="left"> &lt; </a>
						      	<a class="right"> &gt; </a>
						      	<div class="clearfix"></div>
						    </div>
							<ul class="survive col l12 m12 s12">
								<li class="col l3">
									<p><span class="material-icons">replay_30</span> 30天退换货</p>
								</li>
								<li class="col l3">
									<p><span class="material-icons">replay_30</span> 2年有限保修</p>
								</li>
								<li class="col l3">
									<p><span class="material-icons">schedule</span> 24x7在线服务</p>
								</li>
								<li class="col l3">
									<p><span class="material-icons">trending_up</span> 极速上手服务</p>
								</li>
								<div class="clearfix"></div>
							</ul>
							<div class="clearfix"></div>
						</div>
					</div>
					
					<div class="pro-b hide-on-large-only">
							<div class="carousel carousel-slider col m12 s12 initialized">
								<a href="#!" class="carousel-item" style="z-index: 0; opacity: 1; display: block; transform: translateX(0px) translateX(-0.0001px) translateX(0px) translateZ(0px);"><img src="${product.images}"></a>
								<a href="#!" class="carousel-item" style="transform: translateX(0px) translateX(99.9999px) translateZ(0px); z-index: -1; opacity: 1; display: block;"><img src="img/product1/2.png"></a>
								<a href="#!" class="carousel-item" style="transform: translateX(0px) translateX(200px) translateZ(0px); z-index: -2; opacity: 1; display: block;"><img src="img/product1/3.png"></a>
								<div class="clearfix"></div>
							<ul class="indicators"><li class="indicator-item active"></li><li class="indicator-item"></li><li class="indicator-item"></li><li class="indicator-item"></li><li class="indicator-item"></li><li class="indicator-item"></li><li class="indicator-item"></li><li class="indicator-item"></li><li class="indicator-item"></li><li class="indicator-item"></li></ul></div>
						</div>
					
				
					<div class="product-intro col l6 m12 s12">
						<div class="product-intro-price">
							<h5 >${product.pname}</h5>
							
					 		<c:forEach var="pr" end="0" items="${productspe}">
								<c:choose>
									<c:when test="${pr.prt_sp_one_name==null }">
										<h5 id="productdspename">${pr.prt_sp_two_name}</h5>
									</c:when>
									<c:when test="${pr.prt_sp_two_name==null }">
										<h5 id="productdspename">${pr.prt_sp_one_name}</h5>
									</c:when>
									<c:otherwise>
										<h5>${pr.prt_sp_two_name}</h5>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<div class="left price1">
								<p>建议零售价 :</p>
								<p>售价 :</p>
							</div>
							<div class="left price2">
								<p>¥ ${product.original_price}</p>
								<c:forEach var="pr" end="0" items="${productspe}">
								<p><span id="productspeprice">¥ ${pr.prt_sp_price}</span></p>
								</c:forEach>
							</div>
								
							<div class="right stars hide-on-med-and-down">
								<ul class="left">
									<li><i class="material-icons">star</i></li>
									<li><i class="material-icons">star</i></li>
									<li><i class="material-icons">star</i></li>
									<li><i class="material-icons">star</i></li>
									<li><i class="material-icons">star</i></li>
								</ul>
								<a class="left" href="">(16条评论)</a>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="divider"></div>
						<div class="product-intro-txt">
							<ul>
								<li>${product.about}</li>
							</ul>
						</div>
						<div class="divider"></div>
						<div class="product-intro-select">
							<div class="selectTitle" tabindex="0">请选择配置:</div>
							<ul>
							<c:forEach var="pr" items="${productspe}">
								<c:choose>
									<c:when test="${pr.prt_sp_one_name==null }">
										<li class="col l5 m5 s12"><a class="btnsuper" href="#" id="${pr.pk_id}">${pr.prt_sp_two_name}<span> ¥${pr.prt_sp_price}</span>&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
									</c:when>
									<c:when test="${pr.prt_sp_two_name==null }">
										<li class="col l5 m5 s12"><a class="btnsuper" href="#" id="${pr.pk_id}">${pr.prt_sp_one_name}<span> ¥${pr.prt_sp_price}</span>&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
									</c:when>
									<c:otherwise>
									<!-- <li class="col l5 m5 s12"><a href="/productDetails?pk_id=${pr.pk_id}&pid=${product.pk_pid}">${pr.prt_sp_one_name}<span></span>&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
									 -->
									<li class="col l5 m5 s12"><a class="btnsuper" href="#" id="${pr.pk_id}">${pr.prt_sp_two_name}<span></span>&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
									
									</c:otherwise>
								</c:choose>
							</c:forEach>
								<div class="clearfix"></div>
								
							</ul>
						</div>
						<div class="divider"></div>
						<div class="product-intro-car">
							<div class="left num">
								数量: 
								<button id="minus" class="btn">-</button>
								<input type="text" name="count" id="count" value="1" min="1">
								<button id="plus" class="btn">+</button>
							</div>
							<c:forEach var="pr" end="0" items="${productspe}">
							<a id="aa" href="/addToCart?pk_pid=${pr.pk_id}" class="right btn">购买单品</a>
								<p>标签:${pr.pk_id}</p>
							</c:forEach>
							<div class="clearfix"></div>
				
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
	
				<div class="content3">
					<nav id="Nav2" class="hide-on-med-and-down active">
						<ul class="nav-wrapper">
							<li><a href="#charactor">主要特征</a></li>
							<li><a href="#contrast">机型对比</a></li>
							<li><a href="#specifications">技术规格</a></li>
							<li><a href="#package">包装与质保</a></li>
							<li><a href="#begin">极速上手</a></li>
							<li><a href="#appraise">顾客评价</a></li>
						</ul>
					</nav>
					<div class="nav-content">
						<div id="charactor" class="">
							<h3>主要特征</h3>
							<ul>
								<li style="background-image: url(img/product1/bg1.jpg);background-position-x: 50%;background-size: cover;color: #fff;">
									<div class="txt col l6 m6 s12">
										<h5>重新定义笔记本电脑 </h5>
										<p>无论您喜爱编辑照片、信手涂画、制作音乐或创作精彩视频，Surface Book 总能在您灵感迸发时为您准备好所需的多项功能。</p>
									</div>
									<div class="clearfix"></div>
								</li>
								<li>
									<div class="txt col l6 m6 s12">
										<h5>强大的多功能性</h5>
										<p>Surface Book 是一款性能出色的笔记本电脑，性能强大且功能多样。最轻机型重量仅为1516g，13.5英寸PixelSense 显示屏拥有出色的分辨率（3000 x 2000）。得益于其高对比度和低眩光，Surface Book可独立校准的显示屏为您呈现逼真色彩。拆下屏幕即可当作平板电脑使用，或者翻转屏幕并将其重新接入键盘，可与图形硬件加速显卡连接使用。</p>
									</div>
									<div class="col l6 m6 s12">
										<img src="img/product1/bg2.jpg">
									</div>
									<div class="clearfix"></div>
								</li>
								<li>
									<div class="col l6 m6 s12">
										<img src="img/product1/bg3.jpg">
									</div>
									<div class="txt col l6 m6 s12">
										<h5>卓越性能</h5>
										<p>Surface Book 搭载第6代英特尔酷睿i5、i7处理器和高达16GB的内存，可选独立显卡，将带给您流畅的笔记本电脑体验。它为创作性工作而生，为你提供源源不断的动力，帮助你在设计、速写、制造方面突破局限，适用于要求苛刻的创造性任务。使用对图像显示要求很高的程序进行图片和视频编辑时，可以获得流畅平滑的体验。此外，Surface Book 可以提供长达 12 小时的电池续航时间，可源源不断为您带来创作灵感。</p>
									</div>
									<div class="clearfix"></div>
								</li>
								<li>
									<div class="txt col l6 m6 s12">
										<h5>高效运行 Windows 和 Office</h5>
										<p>Surface Book 运行Windows 10专业版，您所熟悉的强大Windows功能组合，还有许多强大新功能。想要运行Adobe Creative Cloud，Citrix，AutoCAD或Visual Studio 没问题！Surface Book 可运行您需要的多种专业级软件，性能强劲。生产力套件 Microsoft Office 可在 Surface Book 上高效运行。 您可在 Microsoft Edge 浏览器中使用 Surface 触控笔直接在网页上书写，并轻松共享您的笔记。</p>
									</div>
									<div class="col l6 m6 s12">
										<img src="img/product1/bg2.jpg">
									</div>
									<div class="clearfix"></div>
								</li>
								<li>
									<div class="col l6 m6 s12">
										<img src="img/product1/bg4.jpg">
									</div>
									<div class="txt col l6 m6 s12">
										<h5>Microsoft 尖端技术</h5>
										<p>Surface 触控笔的手写体验非常流畅和精准，如同使用圆珠笔在纸上书写。Surface 触控笔点击一下即可打开空白 OneNote 页面用于迅速做笔记——即使您的Surface处于睡眠状态。点击并按住 Surface 触控笔顶部即可激活Cortana ，您真正的个人智能助理。她可以发出基于时间、人物和地点的提醒，甚至可以帮您预定餐厅。Surface Book内置新一代面部识别摄像头，可凭借Windows Hello识别您本人，您无需密码即可登录。 </p>
									</div>
									<div class="clearfix"></div>
								</li>
							</ul>
						</div>
						<div id="contrast" class="">
							<h3>机型对比</h3>
							<table class="striped responsive-table">
						        <thead>
							        <tr class="head">
							            <th class="list"><h5>Surface机型对比</h5></th>
							            <th class="other" style="background-image: url(img/product1/tbg1.jpg);">
							            	<h5>Surface Book</h5>
							            	<a href="btn">立即购买</a>
							            </th>
							            <th class="other" style="background-image: url(img/product1/tbg2.jpg);">
							            	<h5>Surface Pro</h5>
							            	<a href="btn">立即购买</a>
							            </th>
							            <th class="other" style="background-image: url(img/product1/tbg3.jpg);">
							            	<h5>Surface 3</h5>
							            	<a href="btn">立即购买</a>
							            </th>
							        </tr>
							        <tr>
							        	<th>如果您正在寻求：</th>
							            <th>一款超越你对笔记本想象的设备</th>
							            <th>平板新风格，笔记本新选择</th>
							            <th>性能和价格的平衡之选</th>
							        </tr>
						        </thead>
						        <tbody>
							        <tr>
							        	<td>如果您期望获得：</td>
							            <td>体验所有在 Surface Pro 4 和 Surface 3 上可进行的操作，并且希望：
							            	<ul>
							            		<li>拍摄视频并在 Premiere Pro 中编辑，尽享令人惊艳的流畅性。</li>
							            		<li>带有独立显卡，可运行 Adobe Creative Cloud，AutoCAD，或Visual Studio 等专业级软件，且在性能方面毫不逊色</li>
							            	</ul>
							            </td>
							            <td>
							            	<ul>
							            		<li>就像笔记本电脑那样运行桌面软件</li>
							            		<li>流式传输音乐和电影</li>
							            		<li> 直接在屏幕上书写和绘画，1024级压力感应</li>
							            		<li>组织和增强照片</li>
							            		<li>使用专业级应用程序制作音乐</li>
							            		<li>使用Auto Cad进行3D建模（仅限i7型号）</li>
							            	</ul>
							            </td>
							            <td>
							            	<ul>
							            		<li>就像笔记本电脑那样运行桌面软件</li>
							            		<li>流式传输音乐和电影</li>
							            		<li>直接在屏幕上书写和绘画</li>
							            	</ul>
							            </td>
							        </tr>
							        <tr>
							            <td>
							            	<ul><li>屏幕尺寸和重量:</li></ul>
							            </td>
							            <td>
							            	<ul>
							            		<li>13.5英寸，最轻机型1516g</li>
							            		<li>PixelSense 显示屏</li>
							            		<li>分辨率：3000 x 2000</li>
							            	</ul>
							            </td>
							            <td>
							            	<ul>
							            		<li>12.3英寸，786g</li>
							            		<li>PixelSense 显示屏</li>
							            		<li>分辨率：2736 x 1824</li>
							            	</ul>
							            </td>
							            <td>
							            	<ul>
							            		<li>10.8英寸，622g</li>
							            		<li>全高清显示屏</li>
							            		<li>分辨率：1920 x 1280</li>
							            	</ul>
							            </td>
							        </tr>
							        <tr>
							        	<td>操作系统和软件: </td>
							        	<td>
							        		<ul>
							        			<li>Windows 10 专业版</li>
							        			<li>Office 365个人版30天试用</li>
							        		</ul>
							        	</td>
							        	<td>
							        		<ul>
							        			<li>中文版: Windows 10家用版, Office 家庭与学生版</li>
							        			<li>专业版: Windows 10专业版（支持多语言切换）,Office 365个人版30天试用</li>
							        		</ul>
							        	</td>
							        	<td>
							        		<ul>
							        			<li>Windows 10家用版</li>
							        			<li>包括Office 365个人版1年订阅</li>
							        		</ul>
							        	</td>
							        </tr>
							        <tr>
							        	<td>电池续航时间:</td>
							        	<td>长达12小时</td>
							        	<td>长达9小时</td>
							        	<td>长达10小时</td>
							        </tr>
							        <tr>
							        	<td>端口:</td>
							        	<td>
							        		<ul>
							        			<li>2个全尺寸USB 3.0</li>
							        			<li>高速全尺寸SD读卡器</li>
							        			<li>耳机插孔</li>
							        			<li>Mini DisplayPort</li>
							        			<li>Surface Connect 充电和拓展坞连接端口</li>
							        		</ul>
							        	</td>
							        	<td>
							        		<ul>
							        			<li>全尺寸USB 3.0</li>
							        			<li>microSD读卡器</li>
							        			<li>Mini DisplayPort</li>
							        			<li>耳机插孔</li>
							        			<li>键盘盖端口</li>
							        			<li>Surface Connect 充电和拓展坞连接端口</li>
							        		</ul>
							        	</td>
							        	<td>
							        		<ul>
							        			<li>全尺寸USB 3.0</li>
							        			<li>microSD读卡器</li>
							        			<li>Mini DisplayPort</li>
							        			<li>Micro USB 充电端口</li>
							        			<li>耳机插孔</li>
							        			<li>键盘盖端口</li>
							        		</ul>
							        	</td>
							        </tr>
						        </tbody>
					      	</table>
						</div>
						<div id="specifications" class="">
							<h3>技术规格</h3>
							<table class="responsive-table">
						        <tbody>
							        <tr>
							            <td>软件</td>
							            <td>
							            	<ul>
							            		<li>Windows 10专业版（支持多语言切换）</li>
							            		<li>Office 365个人版30天试用</li>
							            	</ul>
							            </td>
							        </tr>
							        <tr>
							            <td>外观</td>
							            <td>
							            	<ul><li>外壳：镁合金 • 颜色：银色 • 实体按钮：音量，电源</li></ul>
							            </td>
							        </tr>
							        <tr>
							            <td>尺寸</td>
							            <td>
							            	<ul>
							            		<li>笔记本电脑模式：312.3 x 232.1 x 13.0 - 22.8mm</li>
							            		<li>平板电脑模式：220.2 x 312.3 x 7.7mm</li>
							            	</ul>
							            </td>
							        </tr>
							        <tr>
							            <td>重量</td>
							            <td>
							            	<ul>
							            		<li>笔记本电脑模式：不配备 GPU 处理器1516g；配备 GPU 处理器1579g</li>
							            		<li> 平板电脑模式：726g</li>
							            	</ul>
							            </td>
							        </tr>
							        <tr>
							            <td>存储</td>
							            <td>
							            	<ul><li>固态驱动器(SSD)选项：128GB、256GB、512GB、1TB</li></ul>
							            </td>
							        </tr>
							        <tr>
							            <td>显示</td>
							            <td>
							            	<ul><li>屏幕：13.5英寸PixelSense显示屏 • 分辨率：3000 x 2000 (267 PPI) • 对比度：1700：1 • 宽高比：3:2 • 触控：10点多点触控</li></ul>
							            </td>
							        </tr>
							        <tr>
							            <td>电池续航时间</td>
							            <td>
							            	<ul><li>视频播放时间最长为12小时</li></ul>
							            </td>
							        </tr>
							        <tr>
							            <td>处理器</td>
							            <td>
							            	<ul><li>第6代英特尔酷睿i5 或 i7处理器 </li></ul>
							            </td>
							        </tr>
							        <tr>
							            <td>显卡</td>
							            <td>
							            	<ul>
							            		<li>i5：英特尔® 高清显卡 520</li>
							            		<li>i5/i7：有配备独立1GB GDDR5 高速显存的英伟达® GeForce® 显卡的型号可供选择</li>
							            	</ul>
							            </td>
							        </tr>
							        <tr>
							            <td>安全性</td>
							            <td>
							            	<ul><li>提供企业级安全性的TPM芯片</li></ul>
							            </td>
							        </tr>
							        <tr>
							            <td>内存</td>
							            <td>
							            	<ul><li>8GB或16GB DDR3L RAM</li></ul>
							            </td>
							        </tr>
							        <tr>
							            <td>无线</td>
							            <td>
							            	<ul>
							            		<li>802.11ac Wi-Fi无线网络功能； 兼容IEEE 802.11a/b/g/n</li>
							            		<li>蓝牙4.0无线技术</li>
							            	</ul>
							            </td>
							        </tr>
							        <tr>
							            <td>端口</td>
							            <td>
							            	<ul>
							            		<li>全尺寸USB 3.0 x 2</li>
							            		<li>全尺寸SD读卡器</li>
							            		<li>耳机插孔</li>
							            		<li>Mini DisplayPort</li>
							            		<li>Surface Connect 充电和拓展坞连接端口</li>
							            	</ul>
							            </td>
							        </tr>
							        <tr>
							            <td>摄像头、视频和音频</td>
							            <td>
							            	<ul>
							            		<li>500万像素1080p高清前置摄像头（支持Windows Hello面部识别功能）</li>
							            		<li>800万像素1080p高清后置摄像头，自动对焦</li>
							            		<li>前置和后置双立体声麦克风</li>
							            		<li>带杜比音效的前置立体声扬声器</li>
							            	</ul>
							            </td>
							        </tr>
							        <tr>
							            <td>传感器</td>
							            <td>
							            	<ul><li>环境光线传感器 • 加速计 • 陀螺仪 • 磁力计 </li></ul>
							            </td>
							        </tr>
							        <tr>
							            <td>中国能效标识</td>
							            <td>
							            	<ul class="row">
							            		<li class="col l2 m2 s2"><a href="#n1"><img src="img/product1/a.jpg"></a></li>
							            		<li class="col l2 m2 s2"><a href="#n2"><img src="img/product1/a_1.jpg"></a></li>
							            		<li class="col l3 m3 s3"><p>不同配置的典型能源消耗值可能与加施的能效标识中所示的典型能源消耗值不完全相同。</p></li>
							            		<li id="n1" class="modal">
												    <div class="modal-content">
												      	<img src="img/product1/a.jpg">
												    </div>
							            		</li>
							            		<li id="n2" class="modal">
												    <div class="modal-content">
												      	<img src="img/product1/a_1.jpg">
												    </div>
							            		</li>
							            		<div class="clearfix"></div>
							            	</ul>
							            </td>
							        </tr>
						        </tbody>
						    </table>
						</div>
						<div id="package" class="">
							<h3>包装与质保</h3>
							<table class="responsive-table">
						        <tbody>
							        <tr>
							            <td>包装清单</td>
							            <td>Surface Book、Surface触控笔、电源、快速入门指南、安全和保修文件</td>
							        </tr>
							        <tr>
							            <td>保修</td>
							            <td>2年有限保修 </td>
							        </tr>
						        </tbody>
						    </table>
						    <div class="problem">
						    	<h4>常见问题</h4>
						    	<dl>
						    		<dt>Surface Book运行什么操作系统？ </dt>
						    		<dd>Surface Book 运行Windows 10 专业版操作系统。这意味着你可以运行自己钟爱的程序、应用和浏览器。</dd>
						    	</dl>
						    	<dl>
						    		<dt>我能否同时运行多个程序？</dt>
						    		<dd>Surface Book可让您像专业人士一样同时完成多项任务。您可同时运行Windows应用及多个所需的桌面程序——他们可被固定到屏幕上特定的位置，以便您可以同时使用。</dd>
						    	</dl>
						    	<dl>
						    		<dt>Surface Book采用什么材料制成？ </dt>
						    		<dd>Surface Book的外壳采用镁合金制成，比铝合金更轻、更坚固耐用。 </dd>
						    	</dl>
						    	<dl>
						    		<dt>Surface Book配套的触控笔能否在其他Surface设备上使用？</dt>
						    		<dd>可以。可以在Surface Pro 4、Surface Pro 3 和Surface 3上通用（压力感应会有差异）。</dd>
						    	</dl>
						    	<dl>
						    		<dt>我是否可以使用 Surface Pro 3 的电源对 Surface Book 进行充电？ </dt>
						    		<dd>可以。Surface Pro 3 电源能通过 Surface Connect 端口为 Surface Book 充电。</dd>
						    	</dl>
						    	<ol>
						    		<h6>注释说明</h6>
						    		<li>视频播放时间最长为12小时。实际电池续航时间取决于设置、使用情况和其它因素。</li>
						    		<li>Cortana仅在部分市场可用，使用体验因所在地区及设备差异而有所不同。</li>
						    		<li>适用于Surface 3 平板电脑。 需要在Windows 激活之日起的6个月内激活Office。 数量有限，售完为止。</li>
						    		<li>视频播放时间最长为9小时。实际电池续航时间取决于设置、使用情况和其它因素。</li>
						    		<li>播放视频时最长为10小时。电池续航时间因设置、使用方式及其他因素的不同可有较大差异。</li>
						    		<li>系统软件会使用大量储存空间。可用的储存容量将随着系统软件更新及应用程序的使用而有所变化。1GB = 10亿字节。如需了解更多信息，请查看 <a href="">surface.com/storage。</a> </li>
						    		<li>Windows Hello 需要专业的生物识别硬件作为支撑。</li>
						    	</ol>
						    </div>
						</div>
						<div id="begin" class="">
							<div class="head">
								<h3 class="left">极速上手</h3>
								<p class="left"><span class="material-icons" style="color: #0059BC;">call</span> <em> 4008822059-4</em></p>
							</div>
							<div class="clearfix"></div>
							<div class="begin-content white-text" style="background-image: url(img/product1/bbg.jpg);">
								<div class="head2 col l5 m10 s10 ">
									<h4>您可尊享下列特别服务</h4>
									<p>我们的极速上手专业服务人员将致电给您，协助您完成产品开箱后的首次使用，如开机设置等。您亦可通过在线咨询，在完成快速认证后获得极速上手服务。</p>
									<p>Surface具体服务内容涵盖：</p>
									<ul class="collection">
									    <li class="collection-item avatar">
										    <img src="img/product1/i1.png" alt="" class="circle">
										    <span class="title">首次开机设置</span>
										    <p>协助您完成基本个性化设置，配置无线网络，注册微软账号，完成首次运行设置</p>
									    </li>
									    <li class="collection-item avatar">
										    <img src="img/product1/i2.png" alt="" class="circle">
										    <span class="title">系统界面及基本操作</span>
										    <p>帮助您了解操作界面，基本操作，磁贴的功能和操作</p>
									    </li>
									    <li class="collection-item avatar">
										    <img src="img/product1/i3.png" alt="" class="circle">
										    <span class="title">应用商店的使用</span>
										    <p>帮助您了解如何查找应用，安装应用，以及应用的更新或卸载</p>
									    </li>
									    <li class="collection-item avatar">
										    <img src="img/product1/i4.png" alt="" class="circle">
										    <span class="title">邮件的设置</span>
										    <p>帮助您了解如何添加邮箱和收发邮件</p>
									    </li>
									    <li class="collection-item avatar">
										    <img src="img/product1/i5.png" alt="" class="circle">
										    <span class="title">OneDrive的使用</span>
										    <p>介绍OneDrive，帮助您了解基本操作，如何进行文件共享</p>
									    </li>
									</ul>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div id="appraise" class="">
							<div class="head3">
								<div class="left">
									<h3>顾客评价</h3>
									<p>欢迎分享您对本商品的评价或使用心得！</p>
								</div>
								<a href="#showA" class="btn right">发表评价</a>
								<div id="showA" class="modal">
									<!--modal-->
									<div class="modal-content">
										<h4>在此写下您宝贵的评价:</h4>
										<form class="row input-field">
											<input type="text" name="" id="textarea1" value="">
											<label for="textarea1" data-lengh="70"></label>
										</form>
									</div>
									<div class="divider"></div>
									<div class="modal-footer">
										<a href="" class="modal-action modal-close waves-effect waves-green btn-flat">发表</a>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<ul class="appraise-content">
								<li>
									<p>
										<span class="left">产品质量不错</span> 
										<span class="right">
											<i class="material-icons">star</i>
											<i class="material-icons">star</i>
											<i class="material-icons">star</i>
											<i class="material-icons">star</i>
											<i class="material-icons">star</i>
										</span>
										</p><div class="clearfix"></div>
									<p></p>
									<p>整体质量还可以</p>
									<time>01/07/2016</time>
								</li>
								<li>
									<p>
										<span class="left">非常牛</span> 
										<span class="right">
											<i class="material-icons">star</i>
											<i class="material-icons">star</i>
											<i class="material-icons">star</i>
											<i class="material-icons">star</i>
											<i class="material-icons">star</i>
										</span>
										</p><div class="clearfix"></div>
									<p></p>
									<p>划时代的一款产品，非常喜欢</p>
									<time>25/02/2016</time>
								</li>
								<li>
									<p>
										<span class="left">i5 8G 256G</span> 
										<span class="right">
											<i class="material-icons">star</i>
											<i class="material-icons">star</i>
											<i class="material-icons">star</i>
											<i class="material-icons">star</i>
											<i class="material-icons">star</i>
										</span>
										</p><div class="clearfix"></div>
									<p></p>
									<p>系统不太稳定，对一些软件兼容不太好，软件下载后会造成某些功能失常，还有电脑很漂亮，平板好用，主要是配不到充电宝，希望下代会好点。</p>
									<time>24/02/2016</time>
								</li>
								<li>
									<p>
										<span class="left">surface book</span> 
										<span class="right">
											<i class="material-icons">star</i>
											<i class="material-icons">star</i>
											<i class="material-icons">star</i>
											<i class="material-icons">star</i>
											<i class="material-icons">star</i>
										</span>
										</p><div class="clearfix"></div>
									<p></p>
									<p>整体感觉较好，屏幕分辨率高，清晰；开关机速度快，人脸识别登录功能很牛。就是固态硬盘有点小（256g）不敢装太多程序。CAD2012已装能正常运行。</p>
									<time>14/02/2016</time>
								</li>
							</ul>
							<ul class="pagination center">
							    <li class="disabled"><a href=""><i class="material-icons">chevron_left</i></a></li>
							    <li class="active"><a href="">1</a></li>
							    <li class="waves-effect"><a href="">2</a></li>
							    <li class="waves-effect"><a href="">3</a></li>
							    <li class="waves-effect"><a href=""><i class="material-icons">chevron_right</i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--footer start-->
		<footer class="page-footer ">
			<div class="footer-top row">
				<p class="col l4 m12 s12"><span class="material-icons" style="color: #0059BC;">loyalty</span><a href="">促销信息抢先看，更可享专属优惠</a></p>
				<div class="input-field col l4 m11 s11">
					<a href="#!" class="prefix">订阅</a>
					<input type="email" id="email" class="validate" placeholder="请输入您的邮箱"/>
					<label for="email" data-error="请输入正确的邮箱格式"  data-success="输入成功"></label>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="divider"></div>
			<div class="row footer-b" data-collapsible="accordion">
				<!--pc-->
				<ul class=" " data-collapsible="accordion">
				    <li class="col l2 m12 s12 ">
					    <p class=" ">学习<span class="right hide-on-large-only iconfont icon-202-copy-copy"></span></p>
					    <div class=" ">
					      	<ul>
								<li><a href="#!">Windows </a></li>
								<li><a href="#!"> Office</a></li>
								<li><a href="#!">Skype</a></li>
								<li><a href="#!">Outlook</a></li>
								<li><a href="#!">OneDrive</a></li>
								<li><a href="#!">MSN</a></li>
							</ul>
					    </div>
				    </li>
				    <li class="col l2 m12 s12 ">
					    <p class=" ">设备<span class="right hide-on-large-only iconfont icon-202-copy-copy"></span></p>
					    <div class=" ">
					      	<ul>
								<li><a href="#!"> Microsoft Surface</a></li>
								<li><a href="#!">Xbox</a></li>
								<li><a href="#!">PC</a></li>
								<li><a href="#!">Microsoft Lumia </a></li>
							</ul>
					    </div>
				    </li>
				    <li class="col l2 m12 s12 ">
					    <p class=" ">微软官方商城<span class="right hide-on-large-only iconfont icon-202-copy-copy"></span></p>
					    <div class=" ">
					      	<ul>
								<li><a href="#!">我的订单</a></li>
								<li><a href="#!">与我们联系</a></li>
							</ul>
					    </div>
				    </li>
				    <li class="col l2 m12 s12 ">
					    <p class=" ">下载<span class="right hide-on-large-only iconfont icon-202-copy-copy"></span></p>
					    <div class=" ">
					      	<ul>
								<li><a href="#!">微软中国下载中心 </a></li>
								<li><a href="#!">所有 Windows 下载 </a></li>
								<li><a href="#!">Windows 10 Apps </a></li>
								<li><a href="#!">Office Apps </a></li>
								<li><a href="#!">Microsoft Lumia Apps</a></li>
								<li><a href="#!">Internet Explorer </a></li>
							</ul>
					    </div>
				    </li>
				    <li class="col l2 m12 s12 ">
					    <p class=" ">价值观<span class="right hide-on-large-only iconfont icon-202-copy-copy"></span></p>
					    <div class=" ">
					      	<ul>
								<li><a href="#!">Microsoft 隐私 </a></li>
								<li><a href="#!">教育</a></li>
							</ul>
					    </div>
				    </li>
				    <li class="col l2 m12 s12 ">
					    <p class=" ">公司<span class="right hide-on-large-only iconfont icon-202-copy-copy"></span></p>
					    <div class=" ">
					      	<ul>
								<li><a href="#!">招贤纳士 </a></li>
								<li><a href="#!"> 关于微软</a></li>
								<li><a href="#!">网站地图</a></li>
							</ul>
					    </div>
				    </li>
				</ul>
			</div>	
			<div class="footer-copyright">
				<div class="row">
					<span class="some1 col l3 m12 s12"><i class="iconfont icon-diqiu-copy"></i> 中文(中华人民共和国)</span>
					<div class="some2 col l9 m12 s12" href="#!">
						<a href="">使用条款</a>
						<a href="">关于我们的广告</a>
						<a href="">与我们联系</a>
						<a href="">隐私权声明</a>
						<a href="">商标</a>
						<a >京ICP备09042378号-6</a>
						<a >京公网安备 11010802010597</a>
						<a >© 2016 Microsoft</a>
					</ul>
				</div>
			</div>
		</footer>
		<!--footer end-->
		<a id="go_top" class="btn-floating">go</a>
			<div class="drag-target" data-sidenav="mobile-demo" style="left: 0px; touch-action: pan-y; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></div>
		<script src="js/materialize.js"></script>
		<script src="js/index.js"></script>

		<script type="text/javascript">
			$('#help').modal('');
			$('#textarea1').val('');
  			$('#textarea1').trigger('autoresize');
			$(document).on('scroll',function(){
				if ($(document).scrollTop() >= 50) {
					$("#nav2").addClass('active')
					$(".content").css('padding-top','120px')
				} else{
					$("#nav2").removeClass('active')
					$(".content").css('padding-top','0px')
				}
				if ($(document).scrollTop() >= 1090) {
					$("#Nav2").addClass('active')
				} else{
					$("#Nav2").removeClass('active')
				}
			})
			//banner1
			$('.carousel.carousel-slider').carousel({
				indicators:false
			});
			$(".carousel.carousel-slider ul").on('click',function(){
		      		var _index = $(this).index();
		      		$("#tab-content .tab-content-n").eq(_index).show().siblings().hide()
		      	})
			//arrow
			$('.pro-a .banner-arrows .left').on('click',function(){
				$('.carousel').carousel('prev');
			})
			$('.pro-a .banner-arrows .right').on('click',function(){
				$('.carousel').carousel('next');
			})
			//plus & minus
				//加的效果
				$(".content1 #plus").click(function(){
					var n=$(this).prev().val();
					var num=parseInt(n)+1;
					if(num==0){ return;}
					$(this).prev().val(num);
				});
				//减的效果
				$(".content1 #minus").click(function(){
					var n=$(this).next().val();
					var num=parseInt(n)-1;
					if(num==0){ return}
					$(this).next().val(num);
				});
			//在可视区域内出现时执行动画
			//
			//
			//
			//content3 modal
			$('.content3 #n1').modal('');
			$('.content3 #n2').modal('');
			$('#showA').modal('');
			//footer
			//footer input
			$("footer .footer-top input").on('click',function(){
				$(this).parent().find('a').addClass('active')
			})
			//footer collapsible
			$('.collapsible').collapsible();
			if ($(window).width()<800) {
				$("footer .footer-b ul").addClass('collapsible');
				$("footer .footer-b ul p").addClass('collapsible-header');
				$("footer .footer-b ul div").addClass('collapsible-body');
			} else{
				$("footer .footer-b ul").removeClass('collapsible');
				$("footer .footer-b ul p").removeClass('collapsible-header');
				$("footer .footer-b ul div").removeClass('collapsible-body');
			}
			$("footer .footer-b ul li .collapsible-header").on('click',function(){
				$("footer .footer-b ul li .collapsible-header").find('span').css({
						'display':'block',
						'transform':'rotate(0)'
				})
				$(this).find('span').css({
					'display':'block',
					'transform':'rotate(90deg)'
				})
			})
			;(function () {
				"use strict";
				$.fn.toTop = function (t) {
					var i = this,
						e = $(window),
						s = $('html, body'),
						n = $.extend({
							autohide: !0,   // 是否自动隐藏
							offset  : 420,  // 距离顶部多少的时候显示 回到顶部按钮
							speed   : 500,  // 动画速度
							position: !0,   // 是否定位
							right   : 15,   // 右边距离
							bottom  : 30    // 下边距离
						}, t);
					
					// 设置手型点击
					i.css({
						'cursor': 'pointer'
					});
					// 自动隐藏
					n.autohide && i.css({ 'display': 'none' });
					// 定位位置
					n.position && i.css({
						'position': 'fixed',
						'right'   : n.right,
						'bottom'  : n.bottom
					});
					// 回到顶部
					i.click(function () {
						s.stop().animate({
							scrollTop: 0
						}, n.speed);
					});
					// 回到顶部按钮是否隐藏显示
					e.scroll(function () {
						var o = e.scrollTop();
						// 若自动隐藏为 true, window 的滚动条高度 > 420 则显示, 否则隐藏
						n.autohide && ( o > n.offset ? i.fadeIn(n.speed) : i.fadeOut(n.speed) );
					});
                    return this;
				}
			})(jQuery);
			$(function () {
				$('#go_top').toTop();
			})
		</script>
		<div class="hiddendiv common"></div>
		
		<script>
			$(".btnsuper").click(function(){
				 var parmams={pk_id:$(this).attr("id")};
				 $.getJSON("productDetails",parmams,function(data){
					 if(data.prt_sp_one_name != null && data.prt_sp_two_name != null){
						 $("#productdspename").text(data.prt_sp_two_name);
					 }
					 else if(data.prt_sp_one_name != null){
						 $("#productdspename").text(data.prt_sp_one_name);
					 }else{
						 $("#productdspename").text(data.prt_sp_two_name);
					 }
					$("#productspeprice").text(data.prt_sp_price);
					$("#aa").attr("href","/addToCart?pk_pid="+data.pk_id);
				})
			})		
		</script>
		<script type="text/javascript">
		//点击配置样式
			$(".product-intro-select ul").on("click","li",function(){
			$(".product-intro-select ul li").removeClass("active");
			$(this).addClass("active");
		});
		</script>
		
	</body>
</html>