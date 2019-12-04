<!DOCTYPE html>
<html>
	<head>
		<title></title>
	</head>
	<body>
		<%@ Page Language="C#" MasterPageFile="~/templates/internal-sub_1column-arabic.master" %>
		<%@ MasterType VirtualPath="~/templates/internal-sub_1column-arabic.master" %>
		<script runat="server">
			protected void Page_Init(object sender, EventArgs e)
			{
				//***** Page Settings
				Page.Title = String.Format("{0} | {1}",
					ResourceHelper.GetString("Portal_PartnerProgramName"),
					"حلول الطباعة الإنتاجية"
				);
			}
		</script>
		<asp:Content ContentPlaceHolderID="PageHeadContent" Runat="Server">
			<meta name="description" content="">
		</asp:Content>
		<asp:Content ContentPlaceHolderID="BodyContent" Runat="Server">
			<section class="hero-text-styles">
				<ResellerView:EditableArea ID="SubpageBanner" runat="server">
				<div class="container hero" style="background: url(../../../../images/hero/connectkey-ecosystem.jpg) no-repeat 0 0;">
					<div class="row">
						<div class="black-overlay">
							<h1>هو مجال متخصص ضمن برنامج الشريك العالمي من Xerox</h1>
						</div>
					</div>
				</div>
				</ResellerView:EditableArea>
			</section>
			<section class="mobile-visible">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 text-right">
							<div class="field-links-wrapper">
								<ResellerView:EditableArea ID="ContactMobile" runat="server">
								<div id="arabicContactMobile" class="field-links contact-us-style">Contact us: (+44) 1895 841889<br>
									or <a href="../contact/contact.aspx">Contact us</a>
								</div>
								</ResellerView:EditableArea>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="xrx-container">
				<div class="container">
					<div class="row">
						<div class="col-md-9">
							<ResellerView:EditableArea ID="EditableBody" runat="server">
							<h1>حلول الطباعة الإنتاجية </h1>
							<div class="row">
								<div class="col-md-6">
									<p>
										الاستفادة من العلامة الأصلية ومنتجات Xerox في مجال صناعة نظم التواصل القائمة على الرسوم لتقديم ابتكارات وإنشاء تدفق للعائدات متكرر في جميع نواحي الإنتاج.
									</p>
								</div>
								<div class="col-md-6">
									<img alt="Not Available Parnter Welcome Ebook"/>
								</div>
							</div>
							<p>
								وقد أدى توسيع النطاق العالمي الكبير في الطباعة الرقمية وزيادة طلب العملاء للطباعة بقيمة عالية إلى إنشاء فرص جديدة لشركاء Xerox لتكوين نمو أعمال مربح ومستمر
							</p>
							<p>
								تستمر Xerox في قيادة مجال طباعة التصوير الجاف مع مجموعة طباعة إنتاجية رائعة، بما يوفر مجموعة واسعة النطاق من الطبعات الرقمية
								وطابعات إنتاجية في السوق.
							</p>
							<p> وبصفتك شريك Xerox متخصص في حلول الطباعة الإنتاجية، يُمكنك الاستفادة بالتالي:</p>
							<ul>
								<li>الاستفادة من تقنيات وخدمات وحلول برمجيات Xerox الرائدة المتقدمة للحصول على التميّز وتحقيق قيمة إضافية</li>
								<li>تحسين فعالية وتأثير المبيعات من خلال مجموعة من الأدوات والموارد <br /> لتطوير الأعمال</li>
								<li>اختيار من اثنين من اعتمادات/شهادات الاعتماد الإنتاجية لتحفيز النمو: منتج بسيط ومنتج نهائي عالي الجودة</li>
								<li>الاستفادة من نموذج أعمال مربح لحماية وزيادة الهوامش والربح</li>
							</ul>
							</ResellerView:EditableArea>
						</div>
						<div class="col-md-3">
							<a href="#" class="arabicGPPApply">Apply Now</a>
							<ResellerView:EditableArea ID="AsideContent" runat="server">
							<div class="mobile-hidden">
								<div class="hidden-xs" id="arabicContactSide">
									<h2>Contact</h2>
									<div class="field-links-wrapper">
										<div class="field-links contact-us-style">Contact us: (+44) 1895 841889<br>
											or <a href="../contact/contact.aspx">Contact us</a>
										</div>
									</div>
								</div>
							</div>
							<h2>Quick Links</h2>
							<div class="field-links-wrapper">
								<div class="field-links"> <a href="#">وثائق برنامج Xerox للشريك العالمي </a> </div>
								<div class="field-links"> <a href="#">مزايا البرنامج </a> </div>
							</div>
							<%--					<h2>&Icirc;n obiectiv</h2>--%>
							<%--					<div class="field-links-wrapper">--%>
								<%--						<div class="field-links"> <a href="#">Asisten&#539;&#259; local&#259; pentru v&acirc;nz&#259;ri &#537;i marketing</a> </div>--%>
							<%--					</div>--%>
							</ResellerView:EditableArea>
						</div>
					</div>
				</div>
			</section>
			<script type="text/javascript">
				// Select all links with hashes
				$('a[href*="#"]')
				// Remove links that don't actually link to anything
				.not('[href="#"]')
				.not('[href="#0"]')
				.click(function(event) {
					// On-page links
					if (
					location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '')
					&&
					location.hostname == this.hostname
					) {
					// Figure out element to scroll to
					var target = $(this.hash);
					target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
					// Does a scroll target exist?
					if (target.length) {
						// Only prevent default if animation is actually gonna happen
						event.preventDefault();
						$('html, body').animate({
						scrollTop: target.offset().top
						}, 300, function() {
						// Callback after animation
						// Must change focus!
						var $target = $(target);
						$target.focus();
						if ($target.is(":focus")) { // Checking if the target was focused
							return false;
						} else {
							$target.attr('tabindex','-1'); // Adding tabindex for elements not focusable
							$target.focus(); // Set focus again
						};
						});
					}
					}
				});
			</script>
		</asp:Content>
	</body>
</html>