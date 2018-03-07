<%@ Page Language="C#" MasterPageFile="~/templates/internal.master" %> 
<%@ MasterType VirtualPath="~/templates/internal.master" %>
<script runat="server">
	protected void Page_Load(object sender, EventArgs e) 
	{
		//***** Page Settings
		// Page Title
		Page.Title = String.Format("{0} | {1}",
				ResourceHelper.GetString("Portal_PartnerProgramName"),
				"WorkCentre 6515 and Phaser 6510"
		);
	}
	
	protected void Page_Init(object sender, EventArgs e)
    {
		eClickCCSSDTP.Visible = AppUtil.Instance.CurrentPartnerLevel.ApiName == ("DocumentTechnologyPartner")||  AppUtil.Instance.CurrentPartnerLevel.ApiName == ("Concessionaire");
		seoCcssDTP.Visible = AppUtil.Instance.CurrentPartnerLevel.ApiName == ("DocumentTechnologyPartner")||  AppUtil.Instance.CurrentPartnerLevel.ApiName == ("Concessionaire");
		socialMediaCcssDTP.Visible = AppUtil.Instance.CurrentPartnerLevel.ApiName == ("DocumentTechnologyPartner")||  AppUtil.Instance.CurrentPartnerLevel.ApiName == ("Concessionaire");
		trainingCcssDTP.Visible = AppUtil.Instance.CurrentPartnerLevel.ApiName == ("DocumentTechnologyPartner")||  AppUtil.Instance.CurrentPartnerLevel.ApiName == ("Concessionaire");
		
		noWarranty1.Visible = !(AppUtil.Instance.CurrentAccount.MailingCountry.Equals("FI") || AppUtil.Instance.CurrentAccount.MailingCountry.Equals("DK") || AppUtil.Instance.CurrentAccount.MailingCountry.Equals("NO") || AppUtil.Instance.CurrentAccount.MailingCountry.Equals("SE"));
		noWarranty2.Visible = !(AppUtil.Instance.CurrentAccount.MailingCountry.Equals("FI") || AppUtil.Instance.CurrentAccount.MailingCountry.Equals("DK") || AppUtil.Instance.CurrentAccount.MailingCountry.Equals("NO") || AppUtil.Instance.CurrentAccount.MailingCountry.Equals("SE"));
		noWarranty3.Visible = !(AppUtil.Instance.CurrentAccount.MailingCountry.Equals("FI") || AppUtil.Instance.CurrentAccount.MailingCountry.Equals("DK") || AppUtil.Instance.CurrentAccount.MailingCountry.Equals("NO") || AppUtil.Instance.CurrentAccount.MailingCountry.Equals("SE"));
	}
</script>
<asp:Content ContentPlaceHolderID="PageHeadContent" Runat="Server">
  <script type="text/javascript">
    $(document).ready( function() {
      $('#tab-container').easytabs();
    });
  </script>
</asp:Content>

<asp:Content ContentPlaceHolderID="InternalBreadCrumb" Runat="Server"> 
	<a href="../home.aspx">Partner Home</a> > Products and Services > <a href="new-offerings.aspx">New Offerings</a> > WorkCentre 6515/Phaser 6510
</asp:Content>

<asp:Content ContentPlaceHolderID="InternalSideContent" Runat="Server">
	<div class="container_side">
  		<h3>Quick Links</h3>
        <ul class="side_links">
        	<li><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="WorkCentre<sup>&reg;</sup> 6515  page" /></li> 
            <li><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Printers/Phaser-6510/" LinkText="Phaser<sup>&reg;</sup> 6510  page" /></li>
            <li><ResellerViewControls:BackpackLink runat="server" TargetSystem="Lamp" TargetUrl="https://www.office.xerox.com/resellers/" LinkText="Price list" /></li>
        	<%--<li><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" LinkText="Xerox C60-C70 printer page" Destination="/Products-and-Services/Production/Products/Production-Color/Xerox-C60/C70-Printer"/></li>
			<li><ResellerViewControls:BackpackLink runat="server" TargetSystem="Lamp" TargetUrl="https://www.office.xerox.com/resellers/" LinkText="Price List" /></li>--%>
        </ul>
	<p><a href="http://www.brainshark.com/globalpartners/vu?pi=233261564" target="_blank"><img src="~/images/misc/ecg-brainshark-thumbnail-english.jpg" runat="server"/></a><br>
	<a href="http://www.brainshark.com/globalpartners/vu?pi=233261564" target="_blank"><b>A short overview of the new WorkCentre 6515 and Phaser 6510</b></a></p>
	</div>
</asp:Content>
<asp:Content ContentPlaceHolderID="InternalBodyContent" runat="Server">
    <section id="header_main" style="height:unset; padding-bottom:1px !important; margin-bottom: 15px;" class="bg_violet_short3">
        <h1 style="font-size:1.55em; padding-right: 0;">WorkCentre 6515 and Phaser 6510</h1>
        <p>Groundbreaking price and performance for the fast-growing 21-30ppm A4 colour MFP market</p>
        <p></p>
    </section>
    <div id="tab-container" class='tab-container'>
        <ul class="etabs tabs-5">
            <li class="tab"><a href="#overview">Overview</a></li>
            <li class="tab"><a id="tab2" href="#salesSupport">Sales and Marketing Support</a></li>
        </ul>
        <div class='panel-container'>
            <div id="overview" class="paragraph">
                <h2>Introducing the Xerox WorkCentre 6515 and Phaser 6510</h2>
                <p>Everyone wants performance and affordability. And this is especially true for SMBs – one of the strongest markets for A4 colour printers and MFPs.</p>
                <p>Now you can meet that growing demand with the new WorkCentre<sup>&reg;</sup> 6515 and Phaser<sup>&reg;</sup> 6510.</p>
                <p>Direct replacements for the WorkCentre 6505 and Phaser 6500, this latest family of affordable machines deliver superb image quality, impressive print speeds, excellent media handling and effortless mobile connectivity.</p> 
				<p><span id="noWarranty1" runat="server">What's more, we are so confident of their reliability that we've given a FREE lifetime warranty<sup><a href="#footnote">1</a></sup> to each one! </span>Here are the highlights:</p>
                <img src="~/images/products/surgeProduct.jpg" runat="server" style="float:right; width:300px;" />
                <ul>
                    <li>Speeds of up to 28ppm</li>
                    <li>Easy mobile printing</li>
                    <li>Superb 1200 x 2400 dpi image quality </li>
                    <li>Easy to use with customisable 5" colour touchscreen*</li>
                    <li>50 sheet single-pass duplex automatic document feeder *</li>
                    <li>Choice of cartridges, with up to 4,300-page capacity</li>
					<li>Exceptional reliability<span id="noWarranty3" runat="server"> and a FREE lifetime warranty</span></li>
                    <li>A wealth of productivity tools</li>
                    <li id="eClickCCSSDTP" runat="server">eClick</li>
                </ul>
                <p><i>* MFP only.</i></p>
                <h3>Why you should be selling these new Xerox machines</h3>
                <p>This is a huge opportunity. The market for the WorkCentre 6515 accounts for almost 50% of A4 colour MFP sales. (CSI). Plus, the segment is expected to grow by 15% over the next few years. With its rich feature set and competitive price, the WorkCentre 6515 stands well apart from the competition.</p> 
                <p>The WorkCentre 6515 and Phaser 6510 also use the same consumables and options, making them easier for you to sell and for your customers to manage. And with different toner cartridge capacities, we've made it easy to meet the needs of your low volume and high volume customers.</p>
                <p style="margin-bottom: 20px;"></p>
                <p style="margin-bottom: -10px !important;"><b>Easy mobile printing</b></p>
                <img src="~/images/products/surge-mobile-printing.jpg" runat="server" style="float:right; padding-left: 15px;" />
                <ul>
                    <li>Compatible with Apple AirPrint 1.5, Mopria 1.2 and Google CloudPrint 2.0 for easy mobile printing</li>
                    <li>Our new Wi-Fi<sup>&reg;</sup> installation wizard and Wi-Fi Protected Setup™ (WPS) make getting connected secure and super simple. And, with Wi-Fi Direct<sup>&reg;</sup>, mobile devices can connect directly (and securely).</li>
                    <li>Standard WiFi connectivity available on WorkCentre 6515V_DNI gives freedom to put the device right where it is needed.</li>
                    <li>Near Field Communication (NFC) tap-to pair, for effortless mobile connectivity for Android based workers (WorkCentre 6515 only)</li>
                </ul>
                <p style="margin-bottom: 20px;"></p>
                <p><b>Spectacular image quality</b><br>
                <img src="~/images/products/surge-image-quality.jpg" runat="server" style="float:right; width: 225px; padding-left: 15px;" />
                Help your customers put their best face forward with our newest innovation in colour image quality.</p>
                <ul>
                    <li><b>Improved toner.</b> Both the WorkCentre 6515 and Phaser 6510 use our new Xerox<sup>&reg;</sup> EA Toner formulation, which has been re-engineered for enhanced dot reproducibility and less toner waste. And because it melts at lower temperatures, it saves energy too.</li>
                    <li><b>Stunning resolution.</b> Smaller toner particles translate to finer details, and with 1200 x 2400 dpi, printed materials will capture attention and create greater impact.</li>
                </ul>
                <p style="margin-bottom: 20px;"></p>
                <p><b>Impressive productivity</b><br>
                These devices are designed to simplify and automate costly, time consuming tasks.</p>
                <img src="~/images/products/surgeProduct2.jpg" runat="server" style="float:right; width:35%; height:35%; padding: 10px;" />
                <ul> 
                    <li><b>Print more for longer -</b> an optional second paper tray loads an extra 550 sheets at one time for extended interruption-free printing.</li>
                    <li><b>Save time -</b> the WorkCentre 6515 simultaneously scans both sides of a two-sided document, and Scan Preview allows you to remove unwanted pages, check accuracy and save valuable time—a solid boost for productivity. (MFP only)</li>
                    <li><b>Touch and go -</b> our 5" colour touchscreen interface offers an app-based, tablet-like user experience with gestures and multi-touch interactions. Customise it to match your workflow and navigate with intuitive, smartphone-like interactions (MFP only)</li>
                </ul>
                <p style="margin-bottom: 20px;"></p>
                <p><b>Start today</b><br>
                The latest collateral and digital resources are just a click away</p>
                
                <p><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="WorkCentre<sup>&reg;</sup> 6515  page" /></p> 
                <p><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Printers/Phaser-6510/" LinkText="Phaser<sup>&reg;</sup> 6510  page" /></p>
                <p><ResellerViewControls:BackpackLink runat="server" TargetSystem="Lamp" TargetUrl="https://www.office.xerox.com/resellers/" LinkText="Price list" /></p>
                <hr>
				<div id="noWarranty2" runat="server"><p id="footnote"><i><sup>1</sup><small> - Xerox Lifetime Warranty" means you may claim a free 12 month Xerox warranty multiple times throughout the lifetime of an eligible equipment, upon meeting conditions (e.g. buying specific Xerox supplies), but it does not mean you receive a "one off" Xerox provided warranty for the equipment's lifetime. Find terms and more details <a href="warranty-and-extensions.aspx#LifetimeWarranty">here</a>.  Applies only to specific equipment and supplies purchased during 1/09/16 until 31/12/17 in United Kingdom, France, Germany, Italy, Belgium, the Netherlands, Spain, Portugal, Switzerland, and Austria from Xerox or its reseller in those locations. Supplies must be sourced from within the EEA and Switzerland. Eligible equipment's lifetime is determined by Xerox (may end after pagecount reached, or due to working condition and product obsolescence).</small></i></p></div>
            </div>
            <div id="salesSupport" class="paragraph">
                <p>The WorkCentre 6515 and Phaser 6510 are ideally suited to selling online. We've put together some powerful tools to help you satisfy the growing demand.</p>
                <p style="margin-bottom: -10px;"><b>Update your website – WorkCentre 6515</b></p>
                <div style="float: right; width: 25%; text-align: center; padding-left: 15px;">
                	<img src="~/images/products/surgeEmail.jpg" runat="server" />
                    <p><i>Versatile</i></p>
                </div>
                <ul>
                    <li>Product listing &emsp; <a href="../marketing/optimise-your-website.aspx#iCECatdatafeed" runat="server">IceCat</a> &emsp; <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Marketing Copy"/></li>
                    <li>Evergreen link to the <a href="http://www.office.xerox.com/latest/65XBR-01E.pdf" target="_blank">product brochure</a></li>
                    <li>Photography &mdash; MFP &emsp; <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Product"/> &emsp; <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Supplies"/> &emsp; <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Lifestyle"/></li>
					<li>Videos &emsp; <a href="https://www.youtube.com/watch?v=FGTM9NfeXBY" target="_blank">Product Features</a> &emsp; <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Interactive Features Guide"/> &emsp; <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Count On It"/></li>
					<li><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769823764" LinkText="Virtual Demo"/></li> 
                    <li><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Versatiles"/> (digital postcards)</li>
                    <li><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Online ad banners"/></li> 
                </ul>
                <p style="margin-bottom: 20px;"></p>
                <p style="margin-bottom: -10px;"><b>Update your website - Phaser 6510</b></p>
                    <ul>
                    <li>Product listing &emsp; <a href="../marketing/optimise-your-website.aspx#iCECatdatafeed" runat="server">IceCat</a> &emsp; <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Marketing Copy"/></li>
                    <li>Evergreen link to the <a href="http://www.office.xerox.com/latest/65XBR-01E.pdf" target="_blank">product brochure</a></li>
                    <li>Photography &emsp; <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Product"/> &emsp; <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Printers/Phaser-6510/" LinkText="Supplies"/> &emsp; <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Printers/Phaser-6510/" LinkText="Lifestyle"/></li>
                    <li>Videos &emsp; <a href="https://www.youtube.com/watch?v=gP5c5fQQQOk" target="_blank">Product Features</a> &emsp; <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Printers/Phaser-6510/" LinkText="Interactive Features Guide"/></li>
					<li><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769823763" LinkText="Virtual Demo"/></li>
                </ul>
                    <div style="float: right; width: 25%; text-align: center; padding-left: 15px;">
                		<img src="~/images/products/surgeEmail2.jpg" runat="server" />
                    	<p><i>End-User Email</i></p>
                	</div>
                    <p style="margin-bottom: 20px;"></p>
                    <p style="margin-bottom: -10px;"><b>Generate more inbound enquiries</b></p>
                    <ul>
                        <li>Search Engine Optimisation (SEO) &emsp; Suggested Terms&mdash;<TreeHouseI:ImageHtmlToolTip ToolTipHtml="<div class='boxed'>The generic product category plus your location are likely to generate most of the organic search engine visits to your website e.g. Multifunction Colour Printers, Manchester, UK. For new products we suggest you add the brand/model name plus your location to your SEO list, but note it will take some time for there to be enough awareness for searches on brand and model e.g. Phaser 3260 Manchester, UK.</div>" runat="server" /> &emsp; <span id="seoCcssDTP" runat="server"><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Tools/Digital-Mastery/" LinkText="SEO Guide"/></li></span>
                    </ul>
                <p style="margin-bottom: 20px;"></p>
                <p style="margin-bottom: -10px;"><b>Tell your customers and prospects</b><br>
                <ul>
                    <li><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Email"/></li>
                    <li>PR &emsp; <a href="https://news.xerox.co.uk/news" target="_blank">Xerox press release</a></li>
					<li><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/Color-Multifunction/WorkCentre-6515/" LinkText="Social Media"/> &emsp; <span id="socialMediaCcssDTP" runat="server"><a href="../marketing/get-social.aspx">Xerox Social on Demand</a></span></li>
                </ul></p>
                <p>&nbsp;</p>
                <p><b>Top tips for using videos</b><br>
                It's easy to add video to your web site. Find out how in this <a href="http://www.brainshark.com/globalpartners/vu?pi=zGqzm0TZUzS5Waz0" target="_blank">10-minute video guide</a></p>
                <div id="trainingCcssDTP" runat="server">
                    <p style="margin-bottom: 20px;"></p>
                    <p><b>Training</b><br>
                    Learn more by taking the updated training on L@X &emsp; <a href="https://www.learning.xerox.com/USR/servlet/LAXEnter?entryPoint=findLearning.resourceDetails&shortcode=OA2076
" target="_blank">Analyst OA2076</a> &emsp; <a href="https://www.learning.xerox.com/USR/servlet/LAXEnter?entryPoint=findLearning.resourceDetails&shortcode=OS2076" target="_blank">Sales OS2076</a></p>
                </div>
                <p style="margin-bottom: 20px;"></p>
                <p><b>Start today</b><br>
                The latest collateral and digital resources are just a click away.</p> 	
            </div>
        </div>
    </div>
</asp:Content>
