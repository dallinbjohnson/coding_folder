<%@ Page Language="C#" MasterPageFile="../../../templates/internal-sub_1column-english.master" %>
<%@ MasterType VirtualPath="../../../templates/internal-sub_1column-english.master" %>

<script runat="server">
	protected void Page_Init(object sender, EventArgs e)
	{
		//***** Page Settings
		Page.Title = String.Format("{0} | {1}",
			ResourceHelper.GetString("Portal_PartnerProgramName"),
			"Workcentre 6515 and Phaser 6010"
		);
	}
</script>


<asp:Content ContentPlaceHolderID="PageHeadContent" Runat="Server">
<meta name="description" content="">

</asp:Content>

<asp:Content ContentPlaceHolderID="BodyContent" Runat="Server">
<%--<section class="hero-text-styles">
	<ResellerView:EditableArea ID="SubpageBanner" runat="server">
		<div class="container hero" style="background: url(../../../images/hero/connectkey-ecosystem.jpg) no-repeat 0 0;">
			<div class="row">
				<div class="black-overlay">
				   	<h1>WorkCentre 6515 and Phaser 6510</h1>
        			<p>Groundbreaking price and performance for the fast-growing 21-30ppm A4 colour MFP market</p>
				</div>
			</div>
		</div>
	</ResellerView:EditableArea>
</section>--%>
<section>
	<ResellerView:EditableArea ID="SubpageHeroBanner" runat="server">
		<div class="container subpage-hero-titles">
			<h1>WorkCentre 6515 and Phaser 6510</h1>
			<p>Groundbreaking price and performance for the fast-growing 21-30ppm A4 colour MFP market</p>
		</div>
	</ResellerView:EditableArea>
</section>
<section class="mobile-visible">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 text-right">
				<div class="field-links-wrapper">
					<ResellerView:EditableArea ID="ContactMobile" runat="server"> 
						<div class="field-links contact-us-style">Contact us: (+44) 1895 841889<br>
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
				<div class="row no-gutter-left">
					<div class="col-sm-12">
						<div class="component-jump-menu component-jump-menu-large">
							<ul class="list-inline jump-menu zero-size">
								<li><a href="#overview">Overview</a></li>
								<li><a href="#salesSupport">Sales and Marketing Support</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-md-12 title-section">
								<span class="anchor" id="overview"></span>
								<h2>Introducing the Xerox WorkCentre 6515 and Phaser 6510</h2>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								
				                <p>Everyone wants performance and affordability. And this is especially true for SMBs &ndash; one of the strongest markets for A4 colour printers and MFPs.</p>
				                <p>Now you can meet that growing demand with the new WorkCentre<sup>&reg;</sup> 6515 and Phaser<sup>&reg;</sup> 6510.</p>
				                <p>Direct replacements for the WorkCentre 6505 and Phaser 6500, this latest family of affordable machines deliver superb image quality, impressive print speeds, excellent media handling and effortless mobile connectivity.</p> 
								<p>What's more, we are so confident of their reliability that we've given a FREE lifetime warranty<sup><a href="#footnote">1</a></sup> to each one! </span>Here are the highlights:</p>
							</div>
							<div class="col-md-7">
								<ul>
				                    <li>Speeds of up to 28ppm</li>
				                    <li>Easy mobile printing</li>
				                    <li>Superb 1200 x 2400 dpi image quality </li>
				                    <li>Easy to use with customisable 5" colour touchscreen*</li>
				                    <li>50 sheet single-pass duplex automatic document feeder *</li>
				                    <li>Choice of cartridges, with up to 4,300-page capacity</li>
									<li>Exceptional reliability< and a FREE lifetime warranty</span></li>
				                    <li>A wealth of productivity tools</li>
				                    
				                </ul>
				                <p><i>* MFP only.</i></p>
				                
							</div>
							<div class="col-md-5">
				                <img src="../../../images/products/surgeProduct.jpg" class="img-responsive center-block"  />
				            </div>
				            <div class="col-md-12">
				            	<h3>Why you should be selling these new Xerox machines</h3>
				                <p>This is a huge opportunity. The market for the WorkCentre 6515 accounts for almost 50% of A4 colour MFP sales. (CSI). Plus, the segment is expected to grow by 15% over the next few years. With its rich feature set and competitive price, the WorkCentre 6515 stands well apart from the competition.</p>
				                <p>The WorkCentre 6515 and Phaser 6510 also use the same consumables and options, making them easier for you to sell and for your customers to manage. And with different toner cartridge capacities, we've made it easy to meet the needs of your low volume and high volume customers.</p>
				                
				                <div class="col-md-8">
					                <p><b>Easy mobile printing</b></p>
					               
					                <ul>
					                    <li>Compatible with Apple AirPrint 1.5, Mopria 1.2 and Google CloudPrint 2.0 for easy mobile printing</li>
					                    <li>Our new Wi-Fi<sup>&reg;</sup> installation wizard and Wi-Fi Protected Setup™ (WPS) make getting connected secure and super simple. And, with Wi-Fi Direct<sup>&reg;</sup>, mobile devices can connect directly (and securely).</li>
					                    <li>Standard WiFi connectivity available on WorkCentre 6515V_DNI gives freedom to put the device right where it is needed.</li>
					                    <li>Near Field Communication (NFC) tap-to pair, for effortless mobile connectivity for Android based workers (WorkCentre 6515 only)</li>
					                </ul>
					            </div>
					            <div class="col-md-4">
									<p>&nbsp;</p>
									<p>&nbsp;</p>
									 <img src="../../../images/products/surge-mobile-printing.jpg" class=" img-responsive center-block" />
								</div>
								<div class="col-md-8">
					                
					                <p><b>Spectacular image quality</b><br>
					                
					                Help your customers put their best face forward with our newest innovation in colour image quality.</p>
					                <ul>
					                    <li><b>Improved toner.</b> Both the WorkCentre 6515 and Phaser 6510 use our new Xerox<sup>&reg;</sup> EA Toner formulation, which has been re-engineered for enhanced dot reproducibility and less toner waste. And because it melts at lower temperatures, it saves energy too.</li>
					                    <li><b>Stunning resolution.</b> Smaller toner particles translate to finer details, and with 1200 x 2400 dpi, printed materials will capture attention and create greater impact.</li>
					                </ul>
					            </div>
					            <div class="col-md-4">
									 <p>&nbsp;</p>
									 <p>&nbsp;</p>
									<img src="../../../images/products/surge-image-quality.jpg" class=" img-responsive center-block" />
								</div>
								<div class="col-sm-8">
					               
					                <p><b>Impressive productivity</b><br>
					                These devices are designed to simplify and automate costly, time consuming tasks.</p>
					                
					                <ul> 
					                    <li><b>Print more for longer -</b> an optional second paper tray loads an extra 550 sheets at one time for extended interruption-free printing.</li>
					                    <li><b>Save time -</b> the WorkCentre 6515 simultaneously scans both sides of a two-sided document, and Scan Preview allows you to remove unwanted pages, check accuracy and save valuable time—a solid boost for productivity. (MFP only)</li>
					                    <li><b>Touch and go -</b> our 5" colour touchscreen interface offers an app-based, tablet-like user experience with gestures and multi-touch interactions. Customise it to match your workflow and navigate with intuitive, smartphone-like interactions (MFP only)</li>
					                </ul>
					            </div>
					            <div class="col-md-4">
									<p>&nbsp;</p>
									<p>&nbsp;</p>
									<p>&nbsp;</p>
									<img src="../../../images/products/surgeProduct2.jpg" class=" img-responsive center-block" />
								</div>
								<div class="col-md-12">
					                
					                <p><b>Start today</b><br>
					                The latest collateral and digital resources are just a click away</p>
					                
					                <p><a href="#backpacklink">WorkCentre<sup>&reg;</sup> 6515  page</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="WorkCentre<sup>&reg;</sup> 6515  page" />--%></p> 
					                <p><a href="#backpacklink">Phaser<sup>&reg;</sup> 6510  page</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Printers/Phaser-6510/" LinkText="Phaser<sup>&reg;</sup> 6510  page" />--%></p>
					                <p><a href="#backpacklink">Price list</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="Lamp" TargetUrl="https://www.office.xerox.com/resellers/" LinkText="Price list" />--%></p>	
									<i><sup>1</sup><small> - Xerox Lifetime Warranty" means you may claim a free 12 month Xerox warranty multiple times throughout the lifetime of an eligible equipment, upon meeting conditions (e.g. buying specific Xerox supplies), but it does not mean you receive a "one off" Xerox provided warranty for the equipment's lifetime. Find terms and more details <a href="warranty-and-extensions.aspx#LifetimeWarranty">here</a>.  Applies only to specific equipment and supplies purchased during 1/09/16 until 31/12/17 in United Kingdom, France, Germany, Italy, Belgium, the Netherlands, Spain, Portugal, Switzerland, and Austria from Xerox or its reseller in those locations. Supplies must be sourced from within the EEA and Switzerland. Eligible equipment's lifetime is determined by Xerox (may end after pagecount reached, or due to working condition and product obsolescence).</small></i>
							</div>
						</div>
					</div>
						<p>&nbsp;</p>
						<hr>
						<div class="row">
							<div class="col-md-12 title-section">
								<span class="anchor" id="salesSupport"></span>
								<h2>Sales and Marketing Support</h2>
								<p>The WorkCentre 6515 and Phaser 6510 are ideally suited to selling online. We've put together some powerful tools to help you satisfy the growing demand.</p>
							</div>
						</div>

						<div class="row">
							<div class="col-md-8">
								
                				<h4><b>Update your website &ndash; WorkCentre 6515</b></h4>
				                <ul>
				                    <li>Product listing &emsp; <a href="../marketing/optimise-your-website.aspx#iCECatdatafeed" server">IceCat</a> &emsp; <a href="#backpacklink">Marketing Copy</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Marketing Copy"/>--%></li>
				                    <li>Evergreen link to the <a href="http://www.office.xerox.com/latest/65XBR-01E.pdf" target="_blank">product brochure</a></li>
				                    <li>Photography &mdash; MFP &emsp; <a href="#backpacklink">Product</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Product"/>--%> &emsp; <a href="#backpacklink">Supplies</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Supplies"/>--%> &emsp; <a href="#backpacklink">Lifestyle</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Lifestyle"/>--%></li>
									<li>Videos &emsp; <a href="https://www.youtube.com/watch?v=FGTM9NfeXBY" target="_blank">Product Features</a> &emsp; <a href="#backpacklink">Interactive Features Guide</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Interactive Features Guide"/> &emsp; <a href="#backpacklink">Count On It</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Count On It"/>--%></li>
									<li><a href="#backpacklink">Virtual Demo</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769823764" LinkText="Virtual Demo"/>--%></li> 
				                    <li><a href="#backpacklink">Versatiles</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Versatiles"/>--%> (digital postcards)</li>
				                    <li><a href="#backpacklink">Online ad banners</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Online ad banners"/>--%></li> 
				                </ul>
				                <p>
				                <h4><b>Update your website - Phaser 6510</b></h4>
				                    <ul>
				                    <li>Product listing &emsp; <a href="../marketing/optimise-your-website.aspx#iCECatdatafeed" r>IceCat</a> &emsp; <a href="#backpacklink">Marketing Copy</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Marketing Copy"/>--%></li>
				                    <li>Evergreen link to the <a href="http://www.office.xerox.com/latest/65XBR-01E.pdf" target="_blank">product brochure</a></li>
				                    <li>Photography &emsp; <a href="#backpacklink">Product</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Product"/>--%> &emsp; <a href="#backpacklink">Supplies</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Printers/Phaser-6510/" LinkText="Supplies"/>--%> &emsp; <a href="#backpacklink">Lifestyle</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Printers/Phaser-6510/" LinkText="Lifestyle"/>--%></li>
				                    <li>Videos &emsp; <a href="https://www.youtube.com/watch?v=gP5c5fQQQOk" target="_blank">Product Features</a> &emsp; <a href="#backpacklink">Interactive Features Guide</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Printers/Phaser-6510/" LinkText="Interactive Features Guide"/>--%></li>
									<li><a href="#backpacklink">Virtual Demo</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769823763" LinkText="Virtual Demo"/>--%></li>
				                </ul>
				            </div>
				            <div class="col-md-4 text-center">
				            	 <p>&nbsp;</p>
				            	<img src="../../../images/products/surgeEmail.jpg" class="img-responsive center-block" style="width: 70%; height: auto"  />
				                    <p><i>Versatile</i></p>
				            </div>
				            <div class="col-md-8">
		                    	<h4><b>Generate more inbound enquiries</b></h4>
			                    <ul>
			                        <li>Search Engine Optimisation (SEO) &emsp; Suggested Terms&mdash;<TreeHouseI:ImageHtmlToolTip ToolTipHtml="<div class='boxed'>The generic product category plus your location are likely to generate most of the organic search engine visits to your website e.g. Multifunction Colour Printers, Manchester, UK. For new products we suggest you add the brand/model name plus your location to your SEO list, but note it will take some time for there to be enough awareness for searches on brand and model e.g. Phaser 3260 Manchester, UK.</div>"  /> &emsp; <a href="#backpacklink">SEO Guide</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Tools/Digital-Mastery/" LinkText="SEO Guide"/>--%></li></span>
			                    </ul>
				                
				                <h4><b>Tell your customers and prospects</b></h4>
				                <p>
				                <ul>
				                    <li><a href="#backpacklink">Email</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Email"/>--%></li>
				                    <li>PR &emsp; <a href="https://news.xerox.co.uk/news" target="_blank">Xerox press release</a></li>
									<li><a href="#backpacklink">Social Media</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Social Media"/>--%> &emsp; <a href="../marketing/get-social.aspx"></a></span></li>
				                </ul></p>
				                <p>&nbsp;</p>
				                <h4><b>Top tips for using videos</b></h4>
				                It's easy to add video to your web site. Find out how in this <a href="http://www.brainshark.com/globalpartners/vu?pi=zGqzm0TZUzS5Waz0" target="_blank">10-minute video guide</a></p>
				               
				                <h4><b>Start today</b></h4>
				                <p>The latest collateral and digital resources are just a click away.</p> 	
					        </div>    
							<div class="col-md-4 text-center">
		                		<img src="../../../images/products/surgeEmail2.jpg" class="img-responsive center-block" style="width: 70%;" />
		                    	<p><i>End-User Email</i></p>
		                	</div>
						<p>&nbsp;</p>
						<hr>
					</div>
				</div>
				</div>
				</ResellerView:EditableArea>
			</div>
			<div class="col-md-3">
				<ResellerView:EditableArea ID="AsideContent" runat="server"> 
					<div class="mobile-hidden">
						<div class="hidden-xs">
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
			        	<div class="field-links"><p><a href="#backpacklink">WorkCentre<sup>&reg;</sup> 6515  page</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="WorkCentre<sup>&reg;</sup> 6515  page" />--%></p></div> 
        				<div class="field-links"><p><a href="#backpacklink">Phaser<sup>&reg;</sup> 6510  page</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Printers/Phaser-6510/" LinkText="Phaser<sup>&reg;</sup> 6510  page" />--%></p></div>
            			<div class="field-links"><p><a href="#backpacklink">Price list</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="Lamp" TargetUrl="https://www.office.xerox.com/resellers/" LinkText="Price list" />--%></p></div>
            			<div class="field-links"><p><a href="http://www.brainshark.com/globalpartners/vu?pi=233261564" target="_blank"><img src="../../../images/misc/ecg-brainshark-thumbnail-english.jpg" class="img-responsive center-block" /></a></p>
						<div class="field-links"><a href="http://www.brainshark.com/globalpartners/vu?pi=233261564" target="_blank"><b>A short overview of the new WorkCentre 6515 and Phaser 6510</b></a></p>	</div>
					</div>
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
