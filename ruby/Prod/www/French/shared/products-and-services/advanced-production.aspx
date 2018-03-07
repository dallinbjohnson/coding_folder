<script runat="server">
  
  protected void Page_Init(object sender, EventArgs e)
    {
    //ccssDTP22.Visible = AppUtil.Instance.CurrentPartnerLevel.ApiName == ("Concessionaire") || AppUtil.Instance.CurrentPartnerLevel.ApiName == ("DocumentTechnologyPartner");
    ccssDTP23.Visible = AppUtil.Instance.CurrentPartnerLevel.ApiName == ("Concessionaire") || AppUtil.Instance.CurrentPartnerLevel.ApiName == ("DocumentTechnologyPartner");
    ccssDTP24.Visible = AppUtil.Instance.CurrentPartnerLevel.ApiName == ("Concessionaire") || AppUtil.Instance.CurrentPartnerLevel.ApiName == ("DocumentTechnologyPartner");
    ccssDTP25.Visible = AppUtil.Instance.CurrentPartnerLevel.ApiName == ("Concessionaire");
    ccssDTP26.Visible = AppUtil.Instance.CurrentPartnerLevel.ApiName == ("Concessionaire") || AppUtil.Instance.CurrentPartnerLevel.ApiName == ("DocumentTechnologyPartner");
    ccssDTP27.Visible = AppUtil.Instance.CurrentPartnerLevel.ApiName == ("Concessionaire") || AppUtil.Instance.CurrentPartnerLevel.ApiName == ("DocumentTechnologyPartner");
    //ccssDTP28.Visible = AppUtil.Instance.CurrentPartnerLevel.ApiName == ("Concessionaire") || AppUtil.Instance.CurrentPartnerLevel.ApiName == ("DocumentTechnologyPartner");
    //showroomCover.Visible = AppUtil.Instance.CurrentPartnerLevel.ApiName == ("Concessionaire") || AppUtil.Instance.CurrentPartnerLevel.ApiName == ("DocumentTechnologyPartner");
    
    //Country Codes for Product Brochures (B405 Sales tab)
    //austria_sales_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("AT"); belgiumFrench_sales_b7025.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("BE") && AppUtil.Instance.CurrentLanguage.Name == "French"); 
    //belgiumDutch_sales_b7025.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("BE") && AppUtil.Instance.CurrentLanguage.Name == "Dutch"); 
    //switzerlandFrench_sales_b7025.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("CH") && AppUtil.Instance.CurrentLanguage.Name == "French"); 
    //switzerlandGerman_sales_b7025.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("CH") && AppUtil.Instance.CurrentLanguage.Name == "German"); 
    //germany_sales_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("DE"); 
    //denmark_sales_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("DK"); 
    //spain_sales_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("ES"); 
    //finland_sales_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("FI"); france_sales_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("FR"); 
    //italy_sales_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("IT"); netherlands_sales_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("NL"); //norway_sales_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("NO"); portugual_sales_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("PT"); //sweden_sales_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("SE"); unitedKingdom_sales_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("GB");
    
    //Logic for Product Brochures (Marketing tab B405)
    //austria_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("AT"); belgiumFrench_b7025.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("BE") && AppUtil.Instance.CurrentLanguage.Name == "French"); belgiumDutch_b7025.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("BE") && AppUtil.Instance.CurrentLanguage.Name == "Dutch"); switzerlandFrench_b7025.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("CH") && AppUtil.Instance.CurrentLanguage.Name == "French"); switzerlandGerman_b7025.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("CH") && AppUtil.Instance.CurrentLanguage.Name == "German"); germany_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("DE"); 
    //denmark_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("DK"); 
    //spain_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("ES"); 
    //finland_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("FI"); france_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("FR"); 
    //italy_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("IT"); netherlands_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("NL"); norway_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("NO"); portugual_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("PT"); sweden_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("SE"); unitedKingdom_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("GB");
    
    //Country Codes for Press Releases B405
    austria_pr_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("AT"); belgiumFrench_pr_b7025.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("BE") && AppUtil.Instance.CurrentLanguage.Name == "French"); 
    belgiumDutch_pr_b7025.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("BE") && AppUtil.Instance.CurrentLanguage.Name == "Dutch"); 
    switzerlandFrench_pr_b7025.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("CH") && AppUtil.Instance.CurrentLanguage.Name == "French"); 
    switzerlandGerman_pr_b7025.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("CH") && AppUtil.Instance.CurrentLanguage.Name == "German"); 
    germany_pr_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("DE"); 
    denmark_pr_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("DK"); 
    spain_pr_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("ES"); 
    finland_pr_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("FI"); france_pr_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("FR"); 
    italy_pr_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("IT"); netherlands_pr_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("NL"); norway_pr_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("NO"); portugual_pr_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("PT"); sweden_pr_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("SE"); unitedKingdom_pr_b7025.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("GB");
    
    //Service Ads Logic
    pagePack.Visible = (AppUtil.Instance.CurrentPartnerLevel.ApiName == ("Concessionaire") || AppUtil.Instance.CurrentPartnerLevel.ApiName == ("DocumentTechnologyPartner")) && (AppUtil.Instance.CurrentAccount.CustomValues.HasResponseText("Pricing_Content_Code__cf", "XPPS_ELIGIBLE") || AppUtil.Instance.CurrentAccount.CustomValues.HasResponseText("Pricing_Content_Code__cf", "XPPS_AUTHORIZED"));
    
    eClick.Visible = (AppUtil.Instance.CurrentPartnerLevel.ApiName == ("Concessionaire") || AppUtil.Instance.CurrentPartnerLevel.ApiName == ("DocumentTechnologyPartner")) &&  (AppUtil.Instance.CurrentAccount.CustomValues.HasResponseText("Pricing_Content_Code__cf", "XPPS_ELIGIBLE") || AppUtil.Instance.CurrentAccount.CustomValues.HasResponseText("Pricing_Content_Code__cf", "XPPS_AUTHORIZED"));
    
    pageConnect.Visible = (AppUtil.Instance.CurrentPartnerLevel.ApiName == ("Concessionaire") || AppUtil.Instance.CurrentPartnerLevel.ApiName == ("DocumentTechnologyPartner")) && AppUtil.Instance.CurrentAccount.CustomValues.HasResponseText("Pricing_Content_Code__cf", "XPPS_ELIGIBLE");
    
    amps.Visible = (AppUtil.Instance.CurrentPartnerLevel.ApiName == ("Concessionaire") || AppUtil.Instance.CurrentPartnerLevel.ApiName == ("DocumentTechnologyPartner")) && AppUtil.Instance.CurrentAccount.CustomValues.HasResponseText("Pricing_Content_Code__cf", "XPPS_AUTHORIZED");
    
    //Country Codes for Product Brochures (sales tab)
    austria_product_brochure.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("AT"); belgiumFrench_product_brochure.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("BE") && AppUtil.Instance.CurrentLanguage.Name == "French"); 
    belgiumDutch_product_brochure.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("BE") && AppUtil.Instance.CurrentLanguage.Name == "Dutch"); 
    switzerlandFrench_product_brochure.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("CH") && AppUtil.Instance.CurrentLanguage.Name == "French"); 
    switzerlandGerman_product_brochure.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("CH") && AppUtil.Instance.CurrentLanguage.Name == "German"); 
    germany_product_brochure.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("DE"); 
    denmark_product_brochure.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("DK"); 
    spain_product_brochure.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("ES"); 
    finland_product_brochure.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("FI"); 
    france_product_brochure.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("FR"); 
    italy_product_brochure.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("IT");
    netherlands_product_brochure.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("NL");
    norway_product_brochure.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("NO"); 
    portugual_product_brochure.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("PT"); 
    sweden_product_brochure.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("SE");
    unitedkingdom_product_brochure.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("GB");
    
    //Product Brochure 2
    austria_product_brochure_2.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("AT"); belgiumFrench_product_brochure_2.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("BE") && AppUtil.Instance.CurrentLanguage.Name == "French"); 
    belgiumDutch_product_brochure_2.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("BE") && AppUtil.Instance.CurrentLanguage.Name == "Dutch"); 
    switzerlandFrench_product_brochure_2.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("CH") && AppUtil.Instance.CurrentLanguage.Name == "French"); 
    switzerlandGerman_product_brochure_2.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("CH") && AppUtil.Instance.CurrentLanguage.Name == "German"); 
    germany_product_brochure_2.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("DE"); 
    denmark_product_brochure_2.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("DK"); 
    spain_product_brochure_2.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("ES"); 
    finland_product_brochure_2.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("FI"); 
    france_product_brochure_2.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("FR"); 
    italy_product_brochure_2.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("IT"); netherlands_product_brochure_2.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("NL"); 
    norway_product_brochure_2.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("NO"); portugual_product_brochure_2.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("PT");
    sweden_product_brochure_2.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("SE");
    unitedKingdom_product_brochure_2.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("GB");
    
    //Detailed Specs Sheet
    austria_specs.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("AT"); belgiumFrench_specs.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("BE") && AppUtil.Instance.CurrentLanguage.Name == "French"); 
    belgiumDutch_specs.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("BE") && AppUtil.Instance.CurrentLanguage.Name == "Dutch"); 
    switzerlandFrench_specs.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("CH") && AppUtil.Instance.CurrentLanguage.Name == "French"); 
    switzerlandGerman_specs.Visible = (AppUtil.Instance.CurrentAccount.MailingCountry.Equals("CH") && AppUtil.Instance.CurrentLanguage.Name == "German"); 
    germany_specs.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("DE"); 
    denmark_specs.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("DK"); 
    spain_specs.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("ES"); 
    finland_specs.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("FI"); 
    france_specs.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("FR"); 
    italy_specs.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("IT"); netherlands_specs.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("NL"); 
    norway_specs.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("NO"); portugal_specs.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("PT");
    sweden_specs.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("SE");
    unitedkingdom_specs.Visible = AppUtil.Instance.CurrentAccount.MailingCountry.Equals("GB");
  }
</script>

<ul class="nav nav-tabs nav-justified displayInline gradient-tab">
    <li class="active"><a href="#b8045-overview" data-toggle="tab">Pr&eacute;sentation</a></li>
    <li><a href="#b8045-marketOpportunity" data-toggle="tab">Opportunit&eacute;s commerciales</a></li>
    <li><a href="#b8045-salesResources" data-toggle="tab">Ressources commerciales</a></li>
    <li><a href="#b8045-addMoreValue" data-toggle="tab">Ajouter de la valeu</a></li>
    <li><a href="#b8045-marketingSupport" data-toggle="tab">Support marketing</a></li>
</ul>
<div class="tab-content">
    <div id="b8045-overview" class="tab-pane fade in active">
        <p class="productSubTitles"><b>AltaLink B8045 &ndash; Pr&eacute;sentation</b></p>
                <div id="versalink_keyFeatures">
                   <img src="~/images/products/connectKey_b8000_overview.jpg" runat="server" style="margin: 0 0 -15px 10px; width: 92.75%;"/>
                    <div style="background-color:lightgray; padding: 20px; margin: 10px;">
                        <h3>Principales caract&eacute;ristiques :</h3>
                        <ul>
              <li>Imprimante multifonctions noir et blanc A3</li>
              <li>Impression jusqu'&agrave; 45 ppm</li>
              <li>Technologie ConnectKey &bull; Haute r&eacute;solution &agrave; 1 200 x 1 200</li>
              <li>256 niveaux de gris &bull; CAD RV &agrave; un passage</li>
              <li>Num&eacute;risations jusqu'&agrave; 200 ipm (recto verso) ; vers plusieurs destinations, dans de multiples formats</li>
              <li>NFC tap-to-pair en standard</li>
              <li>Choix de plusieurs magasins avec une capacit&eacute; maximale jusqu'&agrave; 8 000 feuilles.</li>
              <!--<li>La gamme d'options de finition inclut la perforation, l'agrafage, la cr&eacute;ation de cahiers, le pliage en C/Z, l'insertion C/z fold and insert only on 65/75/90</li>-->
              <li>Magasin pour enveloppes en option</li>
              <li>Wi-Fi et Wi-Fi Direct en option</li>
              <li>T&eacute;l&eacute;copie en option, une ou deux lignes avec fax LAN</li>
                        </ul>
                    </div>
                </div>
        <p>Notre imprimante multifonctions intelligente noir et blanc est capable de modifier votre fa&ccedil;on de travailler. Offrant une exp&eacute;rience de nouvelle g&eacute;n&eacute;ration id&eacute;ale pour les utilisateurs mobiles, la s&eacute;rie AltaLink B8045 associe facilit&eacute; d'utilisation et s&eacute;curit&eacute;, tout en pr&eacute;voyant l'&eacute;volutivit&eacute; des flux de travail bas&eacute;s sur les applications. Exploitez ses fonctionnalit&eacute;s pour transformer d'abord le parc de vos clients puis leur entreprise.</p> 
          <h3>Intelligence et performance</h3>
        <p>De l'&eacute;cran tactile couleur 10 pouces inclinable, qui permet une navigation intuitive bas&eacute;e sur les gestes, au scanner monopasse haute vitesse avec fonction OCR int&eacute;gr&eacute;e, ou aux applications Xerox ConnectKey t&eacute;l&eacute;chargeables depuis Xerox App Gallery pour automatiser les t&acirc;ches courantes, l'AltaLink s&eacute;rie B est con&ccedil;ue pour am&eacute;liorer l'efficacit&eacute;, permettre le fonctionnement multit&acirc;che et favoriser la collaboration au sein du bureau.</p>
        <p>Facile &agrave; g&eacute;rer, aussi bien en tant que syst&egrave;me autonome qu'au sein d'un parc d'imprimantes. Le nouveau serveur Web int&eacute;gr&eacute; et les fonctionnalit&eacute;s MPS am&eacute;lior&eacute;es permettent un d&eacute;ploiement plus rapide et une meilleure gestion des appareils. Gr&acirc;ce &agrave; des fonctionnalit&eacute;s comme l'installation sans intervention, le clonage, la configuration/sauvegarde/restauration &agrave; distance et la mise &agrave; niveau logicielle plus rapide, l'imprimante est simple &agrave; utiliser et &agrave; entretenir. De plus, l'interface utilisateur distante permet la fourniture de service et la formation &agrave; distance.</p>
          <h3>Puissance et &eacute;volutivit&eacute;</h3>
        <p>Cr&eacute;ez des flux de travail personnalis&eacute;s, automatisez des t&acirc;ches complexes, imprimez et num&eacute;risez directement vers et depuis le cloud avec des services comme Google Drive&trade;, Microsoft&reg; OneDrive&reg; et DropBox&trade;. Connectez-vous ais&eacute;ment aux mobiles avec Apple&reg; AirPrint&reg;, Google Cloud Print&trade;, et Mopria&reg;. La fonction pair &agrave; pair Near Field Communication (NFC), int&eacute;gr&eacute;e en standard, permet de connecter ais&eacute;ment un appareil mobile &agrave; l'imprimante ; de plus, les fonctionnalit&eacute;s Wi-Fi et Wi-Fi Direct en option vous permettent de positionner vos appareils sans c&acirc;blage.</p>
        <p>Choisissez parmi une vaste gamme d'options et d'accessoires et configurez pour r&eacute;pondre aux besoins pr&eacute;cis de vos clients.</p>
          <h3>S&eacute;curit&eacute; int&eacute;gr&eacute;e</h3> 
        <p>Diff&eacute;rents niveaux de s&eacute;curit&eacute; garantis par des partenaires du secteur comme Cisco et McAfee assurent une assistance proactive pour les documents et les donn&eacute;es. La puissante technologie de liste blanche, le cryptage des donn&eacute;es, le nettoyage du disque et l'impression s&eacute;curis&eacute;e avec protection par mot de passe et cryptage de McAfee contribuent &agrave; prot&eacute;ger des menaces &eacute;mergentes et respectent ou d&eacute;passent la conformit&eacute; r&eacute;glementaire, quel que soit le secteur d'activit&eacute; de vos clients.</p> 
              <p>&nbsp;</p>   
        <p><a href="www.xerox.com/AltalinkB8000Specs" target="_blank">Sp&eacute;cifications d&eacute;taill&eacute;es du produit</a></p>
        <p><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" LinkText="Ressources produit" Destination="/Products-and-Services/Office/Products/BW-Multifunction/AltaLink-B8045/B8055/B8065/B8075/B8090/"/></p>
        <p><ResellerViewControls:BackpackLink runat="server" TargetSystem="Lamp" TargetUrl="https://www.office.xerox.com/resellers/" LinkText="Liste des prix"/></p>  
        <p>&nbsp;</p>  
    </div>
    <div id="b8045-marketOpportunity" class="tab-pane fade">
        <p class="productSubTitles"><b>AltaLink B8045 &ndash; Opportunit&eacute;s commerciales</b></p>
        <p>&nbsp;</p>
        <h3>Saviez-vous que les fournisseurs de services MPS ont atteint ou d&eacute;pass&eacute; les attentes de qualit&eacute; de service de plus de 90 % de leurs clients ?</h3>
              <img src="~/images/products/connectKey_b8000_marketOpportunity.jpg" runat="server" style="border:1px solid lightgray; margin:10px 0; width:60%;"/>
        <p><b>Interface Serveur Web int&eacute;gr&eacute; AltaLink</b></p>
        <p>Offrez des services de r&eacute;f&eacute;rence qui d&eacute;passent les attentes de vos clients en faisant figurer les imprimantes multifonctions AltaLink s&eacute;rie B8000 au c&oelig;ur de vos solutions MPS.</p>
        <p>Profitez de la gestion, du suivi &agrave; distance et de la mise &agrave; niveau des capacit&eacute;s en standard sur les imprimantes multifonctions AltaLink B8045 , un avantage concurrentiel permettant de renforcer la satisfaction et la fid&eacute;lisation des clients.</p>
              <p><i>Source: Xerox commissioned survey 2016,1000 SMBs in US, UK, France, Germany</i></p>
    </div>
    <div id="b8045-salesResources" class="tab-pane fade">
        <p class="productSubTitles"><b>AltaLink B8045 &ndash; Ressources commerciales</b></p>
                <div style="float: right; width: 55%; text-align: center; padding: 0px 20px 10px 55px; margin-top:15px;">
                    <img src="~/images/products/connectKey_b8000_salesResources.jpg" runat="server" />
                </div>
                <h3>Notions de base : d&eacute;couvrez les nouvelles machines</h3>
                <ul>
                    
                    <li id="austria_product_brochure" runat="server"> <a href="http://www.office.xerox.com/latest/AB8BR-01G.pdf" target="_blank">Produktbrosch&uuml;re </a>anzeigen</li>
          <li id="belgiumFrench_product_brochure" runat="server">Consultez la <a href="http://www.office.xerox.com/latest/AB8BR-01F.PDF" target="_blank">brochure produit</a></li>
          <li id="belgiumDutch_product_brochure" runat="server">Lees de <a href="http://www.office.xerox.com/latest/AB8BR-01D.pdf" target="_blank">product brochure</a></li>
          <li id="switzerlandFrench_product_brochure" runat="server">Consultez la <a href="http://www.office.xerox.com/latest/AB8BR-01F.PDF" target="_blank">brochure produit</a></li>
          <li id="switzerlandGerman_product_brochure" runat="server">Produktbrosch&uuml;re <a href="http://www.office.xerox.com/latest/AB8BR-01G.pdf" target="_blank">anzeigen</a></li>
          <li id="germany_product_brochure" runat="server">Produktbrosch&uuml;re <a href="http://www.office.xerox.com/latest/AB8BR-01G.pdf" target="_blank">anzeigen</a></li>
          <li id="denmark_product_brochure" runat="server">Lees de <a href="http://www.office.xerox.com/latest/AB8BR-01B.pdf" target="_blank">product brochure</a></li>
          <li id="spain_product_brochure" runat="server">Ver el <a href="http://www.office.xerox.com/latest/AB8BR-01S.PDF" target="_blank">folleto del producto</a></li>
          <li id="finland_product_brochure" runat="server">Lue <a href="http://www.office.xerox.com/latest/AB8BR-01N.pdf" target="_blank">tuote-esite</a></li>
          <li id="france_product_brochure" runat="server">Consultez la <a href="http://www.office.xerox.com/latest/AB8BR-01F.PDF" target="_blank">brochure produit</a></li>
          <li id="italy_product_brochure" runat="server">Visualizzate la <a href="http://www.office.xerox.com/latest/AB8BR-01I.pdf" target="_blank">brochure del prodotto</a></li>
          <li id="netherlands_product_brochure" runat="server">Lees de <a href="http://www.office.xerox.com/latest/AB8BR-01D.pdf" target="_blank">product brochure</a></li>
          <li id="norway_product_brochure" runat="server">Lees de <a href="http://www.office.xerox.com/latest/AB8BR-01O.pdf" target="_blank">product brochure</a></li>
          <li id="portugual_product_brochure" runat="server">Veja a <a href="http://www.office.xerox.com/latest/AB8BR-01Z.pdf" target="_blank">brochura do produto</a></li>
          <li id="sweden_product_brochure" runat="server" target="_blank">View the <a href="http://www.office.xerox.com/latest/AB8BR-01W.pdf" target="_blank">product brochure</a></li>
                    <li id="unitedkingdom_product_brochure" runat="server" target="_blank">View the <a href="http://www.office.xerox.com/latest/AB8BR-01E.PDF">product brochure</a></li>
                    
                    <li>Regardez la <a href="https://youtu.be/fNdUZiTfgXo" target="_blank">vid&eacute;o AltaLink</a></li>
                </ul>
                <h3>Approfondissement pour une meilleure compr&eacute;hension</h3>
                <ul>
          <li><a href="http://www.office.xerox.com/latest/XOGEG-04E.PDF" target="_blank">Guide d'&eacute;valuation AltaLink</a></li> 
          
          
          <li id="austria_specs" runat="server"><a href="http://www.office.xerox.com/latest/AC8SS-01G.pdf" target="_blank">Livre blanc produit AltaLink</a></li>
          <li id="belgiumFrench_specs" runat="server"><a href="http://www.office.xerox.com/latest/AC8SS-01F.pdf" target="_blank">Livre blanc produit AltaLink</a></li>
          <li id="belgiumDutch_specs" runat="server"><a href="http://www.office.xerox.com/latest/AC8SS-01E.pdf" target="_blank">Livre blanc produit AltaLink</a></li>
          <li id="switzerlandFrench_specs" runat="server"><a href="http://www.office.xerox.com/latest/AC8SS-01F.pdf" target="_blank">Livre blanc produit AltaLink</a></li>
          <li id="switzerlandGerman_specs" runat="server"><a href="http://www.office.xerox.com/latest/AC8SS-01G.pdf" target="_blank">Livre blanc produit AltaLink</a></li>
          <li id="germany_specs" runat="server"><a href="http://www.office.xerox.com/latest/AC8SS-01G.pdf" target="_blank">Livre blanc produit AltaLink</a></li>
          <li id="denmark_specs" runat="server"><a href="http://www.office.xerox.com/latest/AC8SS-01E.pdf" target="_blank">Livre blanc produit AltaLink</a></li>
          <li id="spain_specs" runat="server"><a href="http://www.office.xerox.com/latest/AB8SS-01S.PDF" target="_blank">Livre blanc produit AltaLink</a></li>
          <li id="finland_specs" runat="server"><a href="http://www.office.xerox.com/latest/AC8SS-01E.pdf" target="_blank">Livre blanc produit AltaLink</a></li>
          <li id="france_specs" runat="server"><a href="http://www.office.xerox.com/latest/AB8SS-01E.PDF" target="_blank">Livre blanc produit AltaLink</a></li>
          <li id="italy_specs" runat="server"><a href="http://www.office.xerox.com/latest/AC8SS-01I.pdf" target="_blank">Livre blanc produit AltaLink</a></li>
          <li id="netherlands_specs" runat="server"><a href="http://www.office.xerox.com/latest/AC8SS-01E.pdf" target="_blank">Livre blanc produit AltaLink</a></li>
          <li id="norway_specs" runat="server"><a href="http://www.office.xerox.com/latest/AC8SS-01E.pdf" target="_blank">Livre blanc produit AltaLink</a></li>
          <li id="portugal_specs" runat="server"><a href="http://www.office.xerox.com/latest/AC8SS-01E.pdf" target="_blank">Livre blanc produit AltaLink</a></li>
          <li id="sweden_specs" runat="server"><a href="http://www.office.xerox.com/latest/AC8SS-01E.pdf" target="_blank">Livre blanc produit AltaLink</a></li>
          <li id="unitedkingdom_specs" runat="server"><a href="http://www.office.xerox.com/latest/AC8SS-01E.pdf" target="_blank">Livre blanc produit AltaLink</a></li>
          
          
          
          <li><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" LinkText="Livre blanc produit AltaLink" Destination="/Products-and-Services/Office/Products/BW-Multifunction/AltaLink-B8045/B8055/B8065/B8075/B8090/"/></li>     
          <li><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" LinkText="Fiche outil Serveur Web int&eacute;gr&eacute;" Destination="/Products-and-Services/Office/Products/BW-Multifunction/AltaLink-B8045/B8055/B8065/B8075/B8090/"/></li>   
          <li><a href="http://www.office.xerox.com/latest/XOGFS-14.PDF" target="_blank">Matrice des homologations</a></li>
          <li><a href="https://www.learning.xerox.com/USR/servlet/LAXEnter?entryPoint=findLearning.resourceDetails&shortcode=OS2085" target="_blank">Plateforme de formation Ventes (OS2085)</a> Formation commerciale sous forme de modules, ais&eacute;ment accessible depuis une tablette ou un ordinateur portable. Les principaux points &agrave; retenir sont expliqu&eacute;s en 10 minutes et sont accompagn&eacute;s de liens vers des ressources suppl&eacute;mentaires</li> 
                </ul>
                <h3>Outils d'aide &agrave; la vente</h3>
                <ul>
                    <li><a href="https://explorexeroxproducts.com" target="_blank">Outil de d&eacute;couverte de produits</li>
                    <!--(do not show until March &mdash; day TBC)-->
                    <li id="ccssDTP23" runat="server"><a href="../sales/online-configurator.aspx">Configurateur de produits</a></li>
                    <!--(CCSS/DTPs only)-->
                    <li id="ccssDTP24" runat="server"><a href="../sales/proposal-generator.aspx">G&eacute;n&eacute;rateur de propositions</a></li>
                    <!--(CCSS/DTPs only)-->
                    <li id="ccssDTP25" runat="server"><a href="../sales/easy-compare.aspx">Outil BLiQ de positionnement concurrentiel</a></li>
                    <!--(CCSS/DTPs only)-->
                    <li><a href="../sales/smartpad.aspx">ShowPad</a></li>
                </ul>
        <p id="showroomCover" runat="server"><a href="../partner-program/partner-showrooms.aspx#showroomCover">La garantie Showroom </a> est un contrat gratuit qui garantit le bon fonctionnement permanent des &eacute;quipements de d&eacute;monstration install&eacute;s dans votre showroom. Ce contrat de r&eacute;paration couvre uniquement vos sites de showroom.</p>
    </div>
    <div id="b8045-addMoreValue" class="tab-pane fade">
        <p class="productSubTitles"><b>AltaLink B8045 &ndash; Ajouter de la valeu</b></p>
                <div style="float: right; width: 50%; text-align: center; padding: 0px 20px 10px 55px; margin-top:-15px;">
                    <p><img src="~/images/products/connectKey_b8000_addMoreValue.jpg" runat="server" /></p>
                </div>
                <p>Bien plus qu'une machine - des options qui vous aideront &agrave; augmenter la valeur de chaque vente :</p>
                <h3>Options</h3>
                <p><b>1. Vous anticipez des volumes d'impression &eacute;lev&eacute;s ?</b><br>
          Ajoutez davantage de capacit&eacute; papier avec un chargeur 3 300 feuilles haute capacit&eacute;</p>
        <p><b>2.  Des applications de publipostage ?</b><br>
          Ajoutez un magasin pour enveloppes</p> 
        <!--<p><b>3.  Vous souhaitez proposer une finition en ligne ? </b><br>  
          Les modules de finition haut volume permettent la cr&eacute;ation de cahiers, le pliage en C/Z ou int&egrave;grent une unit&eacute; d&rsquo;insertion post-traitement pour les supports pr&eacute;-imprim&eacute;s ou sp&eacute;ciaux</p>-->
        <p><b>3.  Vous souhaitez positionner le p&eacute;riph&eacute;rique sans c&acirc;blage?</b><br></p>
        <p><b>Pour en savoir plus, utilisez l'<a href="https://explorexeroxproducts.com" target="_blank">outil de d&eacute;couverte de produits</a></b></p>
                <p>&nbsp;</p>
                <h3>Solutions</h3>
        <img src="~/images/products/connectKey-solutions-selector-thumbnail.png" runat="server" style="border:1px solid lightgray; float:left; margin:0 15px 15px 0;"/>
        <p>Utilisez le <a href="connectkey-solutions.aspx">S&eacute;lecteur de solutions</a> pour savoir comment ajouter de la valeur et g&eacute;n&eacute;rer de nouvelles sources de revenus.</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <h3>Services</h3>
        <table>
            <tr>
               <td id="pagePack" runat="server" style="width:32%;"><div style="border:3px solid orange; padding:0 15px 0 15px; width:90%; height:470px;">
                                <p>Votre client a-t-il besoin d'un contrat de service et co&ucirc;t par page standard ?</p>
                                <hr>
                                <p><b>PagePack:</b> contrat de service &laquo; tout compris &raquo; qui combine services de r&eacute;paration &agrave; distance et consommables &agrave; un co&ucirc;t par page.</p>
                                <p><b>Comment d&eacute;gager du profit ?</b> En g&eacute;n&eacute;ral, vous recevez de Xerox une facture forfaitaire et une facture de r&eacute;gularisation que vous facturez ensuite &agrave; vos clients avec une majoration.</p>
                                <p><a href="basic-print-services.aspx#pagepack-tab-main">En savoir plus</a></p>
                            </div></td>
                <td id="eClick" runat="server" style="width:32%;"><div style="border:3px solid orange; padding:0 15px 0 15px; width:90%; height:470px;">
                                <p>Votre client a-t-il besoin d'un contrat de service et co&ucirc;t par page personnalis&eacute; pour un parc ?</p>
                                <hr>
                                <p><b>eClick:</b> service &laquo; tout compris &raquo; offrant un contrat de service complet qui combine services de r&eacute;paration &agrave; distance et consommables. Tarifs sp&eacute;ciaux pour les contrats de grande taille.</p>
                                <p><b>Comment d&eacute;gager du profit ?</b> Simple co&ucirc;t par page pour tous les besoins en impression de vos clients, factur&eacute; par Xerox, et que vous pouvez ensuite facturer &agrave; vos clients avec une majoration.</p>
                                <p><a href="basic-print-services.aspx#pagepack-tab-main">En savoir plus</a></p>
                            </div></td>
                <td id="pageConnect" runat="server" style="width:32%;"><div style="border:3px solid orange; padding:0 15px 0 15px; width:90%; height:470px;">
                                <p>Votre client a-t-il besoin de simplifier le syst&egrave;me d'approvisionnement et de services de son parc multifournisseur ?</p>
                                <hr>
                                <p><b>Services PageConnect :</b> propose un r&eacute;approvisionnement proactif en consommables ainsi qu'une assistance technique pour le parc de votre client pour la plupart des marques concurrentes d'imprimantes et de multifonctions A4, ainsi que toutes les machines PagePack Xerox.</p>
                                <p><b>Comment d&eacute;gager du profit ? </b> G&eacute;n&eacute;rez des revenus r&eacute;guliers plus &eacute;lev&eacute;s gr&acirc;ce &agrave; un plus grand nombre de pages et renforcez la relation avec vos clients.</p>
                                <p><a href="basic-print-services.aspx#pageconnect-tab-main">En savoir plus</a></p>
                            </div></td>
                <td id="amps" runat="server" style="width:32%;"><div style="border:3px solid orange; padding:0 15px 0 15px; width:90%; height:470px;">
                        <p>Votre client a-t-il besoin d'une solution de services d'impression optimis&eacute;e avec un leader de l'industrie renomm&eacute; ?</p>
                        <hr>
                        <p><b>Xerox Partner Print Services :</b> devenez un partenaire strat&eacute;gique du client en lui offrant une infrastructure d'impression de bureau g&eacute;r&eacute;e, &eacute;conomique et productive, au niveau local et global.</p>
                        <p><b>Comment d&eacute;gager du profit ?</b> Exploitez de nombreuses sources de revenu avec des services proactifs alli&eacute;s &agrave; une solution et des options de s&eacute;curit&eacute; avanc&eacute;es, dans le cadre d'un seul contrat consolid&eacute;.</p>
                        <p><a href="advanced-managed-print-services.aspx">En savoir plus</a></p>
                    </div></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>&nbsp;</p>
    </div>
    <div id="b8045-marketingSupport" class="tab-pane fade">
        <p class="productSubTitles"><b>AltaLink B8045 &ndash; Support marketing</b></p>
                <div style="float: right; width: 45%; text-align: center; padding-left: 15px; margin-bottom:20px;">
                    <img src="~/images/products/connectKey_b7000_marketingSupport.jpg" runat="server" />
                </div>
                <p>Des ressources pour vous aider &agrave; commercialiser la s&eacute;rie d'imprimantes multifonctions Xerox</p>
    <h3>Mettez &agrave; jour votre site Web</h3>
                <ul>
                    <li><b>Liste de produits</b> &emsp; <span  id="ccssDTP26" runat="server"><a href="../marketing/optimise-your-website.aspx#xeroxContentWidget">Widget de contenu Xerox </a></span></li>
                    <!--(Widget is for CCSS / DTPs only)-->
                    
                    <!-- COUNTRY LINKS TO PRODUCT BROCHURE -->
            <li id="austria_product_brochure_2" runat="server"> <a href="http://www.office.xerox.com/latest/AB8BR-01G.pdf" target="_blank">Permanentlink zur </a>Produktbrosch&uuml;re</li>
            <li id="belgiumFrench_product_brochure_2" runat="server">Lien permanent vers la <a href="http://www.office.xerox.com/latest/AB8BR-01F.PDF" target="_blank">brochure produit</a></li>
            <li id="belgiumDutch_product_brochure_2" runat="server">Link naar de <a href="http://www.office.xerox.com/latest/AB8BR-01D.pdf" target="_blank">product brochure</a></li>
            <li id="switzerlandFrench_product_brochure_2" runat="server">Lien permanent vers la <a href="http://www.office.xerox.com/latest/AB8BR-01F.PDF" target="_blank">brochure produit</a></li>
            <li id="switzerlandGerman_product_brochure_2" runat="server">Permanentlink zur <a href="http://www.office.xerox.com/latest/AB8BR-01G.pdf" target="_blank">Produktbrosch&uuml;re</a></li>
            <li id="germany_product_brochure_2" runat="server">Permanentlink zur <a href="http://www.office.xerox.com/latest/AB8BR-01G.pdf" target="_blank">Produktbrosch&uuml;re</a></li>
            <li id="denmark_product_brochure_2" runat="server">Link naar de <a href="http://www.office.xerox.com/latest/AB8BR-01B.pdf" target="_blank">product brochure</a></li>
            <li id="spain_product_brochure_2" runat="server">VEnlace permanente al <a href="http://www.office.xerox.com/latest/AB8BR-01S.PDF" target="_blank">folleto del producto</a></li>
            <li id="finland_product_brochure_2" runat="server">Linkki  <a href="http://www.office.xerox.com/latest/AB8BR-01N.pdf" target="_blank">tuote-esite</a></li>
            <li id="france_product_brochure_2" runat="server">Lien permanent vers la <a href="http://www.office.xerox.com/latest/AB8BR-01F.PDF" target="_blank">brochure produit</a></li>
            <li id="italy_product_brochure_2" runat="server">Collegamento sempre attivo alla <a href="http://www.office.xerox.com/latest/AB8BR-01I.pdf" target="_blank">brochure del prodotto</a></li>
            <li id="netherlands_product_brochure_2" runat="server">Link naar de <a href="http://www.office.xerox.com/latest/AB8BR-01D.pdf" target="_blank">product brochure</a></li>
            <li id="norway_product_brochure_2" runat="server">Link naar de <a href="http://www.office.xerox.com/latest/AB8BR-01O.pdf" target="_blank">product brochure</a></li>
            <li id="portugual_product_brochure_2" runat="server">Link sempre atualizado para a <a href="http://www.office.xerox.com/latest/AB8BR-01Z.pdf" target="_blank">brochura do produto</a></li>
            <li id="sweden_product_brochure_2" runat="server" target="_blank">Evergreen Link to the <a href="http://www.office.xerox.com/latest/AB8BR-01W.pdf" target="_blank">product brochure</a></li>
            <li id="unitedKingdom_product_brochure_2" runat="server" target="_blank">Evergreen Link to the <a href="http://www.office.xerox.com/latest/AB8BR-01E.pdf" target="_blank">product brochure</a></li>
                    
                    
                    <li><b>Photographie</b> &emsp;
                        <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" LinkText="Photographie produit" Destination="/Products-and-Services/Marketing-Store/Product-Photography/"/>
                        &emsp;
                        <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" LinkText="Photographie fournitures et consommables" Destination="/Products-and-Services/Marketing-Store/Supplies-Photography/"/>
                    </li>
          <li><b>Vid&eacute;os</b> &emsp; <a href="https://youtu.be/fNdUZiTfgXo" target="_blank">AltaLink</a></li>
          <li><b>Outils interactifs</b> &emsp; <a href="http://a400.g.akamai.net/7/400/5566/v0001/xerox.download.akamai.com/5566/AltaLinkB8000_US/index.htm" target="_blank">D&eacute;mo virtuelle</a> &emsp; <a href="http://a400.g.akamai.net/7/400/5566/v0001/xerox.download.akamai.com/5566/AltaLinkSIM/index.htm" target="_blank">Simulateur d'interface utilisateur</a></li>
                </ul>
                <div id="ccssDTP27" runat="server">
                    <h3>G&eacute;n&eacute;rez davantage de demandes de renseignements</h3>
                    <!--(this section is for CCSSs/DTPs only)-->
                    <ul>
                <li>Optimisation pour les moteurs de recherche (SEO)  Suggestion de termes &mdash;
                    <TreeHouseI:ImageHtmlToolTip ToolTipHtml="<div class='boxed'>La cat&eacute;gorie de produits g&eacute;n&eacute;riques plus votre situation g&eacute;ographique constituent probablement les mots-cl&eacute;s les plus efficaces pour le r&eacute;f&eacute;rencement naturel de votre site Web. Ex. : imprimantes multifonctions couleur, Toulouse, France. Pour les nouveaux produits, nous vous conseillons d\u0027ajouter la marque/le nom du mod&egrave;le et votre situation g&eacute;ographique dans votre liste SEO. Notez cependant qu\u0027il faut un certain temps avant que les internautes ne connaissent le nom de la marque ou du mod&egrave;le et ne les utilisent comme mots-cl&eacute;s dans leurs recherches. Ex. : Phaser 3260 Toulouse, France.</div>" runat="server" />
                    &emsp; <span id="seoCcssDTP2" runat="server">
                    <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Tools/Digital-Mastery/" LinkText="SEO Guide"/>
                    </span></li>
            </ul>
                </div>
                <h3>Informez vos clients et prospects</h3>
                <ul>
                    <li id="austria_pr_b7025" runat="server"><b>PR</b> <a href="https://austria.news.xerox.com/" target="_blank">Xerox-Pressemitteilung </a></li>
                    <li id="belgiumFrench_pr_b7025" runat="server"> <b>PR</b> <a href="https://belgium-fr.news.xerox.com/" target="_blank">Communiqu&eacute; de presse Xerox </a></li>
                    <li id="belgiumDutch_pr_b7025" runat="server"><b>PR</b> <a href="https://belgium-nl.news.xerox.com/" target="_blank">Xerox-persbericht </a></li>
                    <li id="switzerlandFrench_pr_b7025" runat="server"><b>PR</b> <a href="https://swiss-fr.news.xerox.com/" target="_blank">Communiqu&eacute; de presse Xerox </a></li>
                    <li id="switzerlandGerman_pr_b7025" runat="server"><b>PR</b> <a href="https://swiss-de.news.xerox.com/" target="_blank">Xerox-Pressemitteilung </a></li>
                    <li id="germany_pr_b7025" runat="server"><b>PR</b> <a href="https://news.xerox.de/" target="_blank">Xerox-Pressemitteilung </a></li>
                    <li id="denmark_pr_b7025" runat="server"><b>PR</b> <a href="https://finland.news.xerox.com/" target="_blank">Xerox-persbericht </a></li>
                    <li id="spain_pr_b7025" runat="server"><b>PR</b> <a href="https://noticias.xerox.es/" target="_blank">Nota de prensa de Xerox </a></li>
                    <li id="finland_pr_b7025" runat="server"><b>PR</b> <a href="https://finland.news.xerox.com/" target="_blank">Xeroxin lehdist&ouml;tiedote </a></li>
                    <li id="france_pr_b7025" runat="server"><b>PR</b> <a href="https://actualites.xerox.fr/" target="_blank">Communiqu&eacute; de presse Xerox </a></li>
                    <li id="italy_pr_b7025" runat="server"><b>PR</b> <a href="https://notizie.xerox.it/" target="_blank">Comunicato stampa Xerox </a></li>
                    <li id="netherlands_pr_b7025" runat="server"><b>PR</b> <a href="https://nieuws.xerox.nl/" target="_blank">Xerox-persbericht </a></li>
                    <li id="norway_pr_b7025" runat="server"><b>PR</b> <a href="https://noticias.xerox.es/" target="_blank">Xerox-persbericht </a></li>
                    <li id="portugual_pr_b7025" runat="server"><b>PR</b> <a href="https://portugal.news.xerox.com/" target="_blank">Xerox Press Release </a></li>
                    <li id="sweden_pr_b7025" runat="server"><b>PR</b> <a href="https://noticias.xerox.es/" target="_blank">Xerox-persbericht </a></li>
                    <li id="unitedKingdom_pr_b7025" runat="server"><b>PR</b> <a href="https://news.xerox.co.uk/" target="_blank">Xerox Press Release </a></li>
                </ul>
        <h3>Planifiez des &eacute;v&eacute;nements ou des r&eacute;unions clients</h3>
        <ul>
          <li><b>Ressources</b> &emsp; <a href="http://www.office.xerox.com/latest/AB8PS-01U.PDF" target="_blank">&Eacute;chantillons d'impression</a> &emsp; <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/BW-Multifunction/AltaLink-B8045/B8055/B8065/B8075/B8090/" LinkText="Script de d&eacute;monstration"/> &emsp; <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/Office/Products/BW-Multifunction/AltaLink-B8045/B8055/B8065/B8075/B8090/" LinkText="Kits Salle d&eacute;mo"/>
        </ul>
        <p><b>Conseils pratiques pour l'utilisation des vid&eacute;os sur votre site Web :</b> <a href="http://www.brainshark.com/globalpartners/vu?pi=zGqzm0TZUzS5Waz0" target="_blank">Vid&eacute;o explicative de 10 minutes</a></p>
    </div>
</div>
