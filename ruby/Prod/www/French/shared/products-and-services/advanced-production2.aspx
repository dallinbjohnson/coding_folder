<%@ Page Language="C#" MasterPageFile="~/templates/internal_french.master" %>
<%@ MasterType VirtualPath="~/templates/internal_french.master" %>
<script runat="server">
protected void Page_Load(object sender, EventArgs e)
{

//***** Page Settings
// Page Title
Page.Title = String.Format("{0} | {1}",
ResourceHelper.GetString("Portal_PartnerProgramName"),
"Xerox ConnectKey Technology"
);
}

protected void Page_Init(object sender, EventArgs e)
{
basePresentationCCSSDTP.Visible = AppUtil.Instance.CurrentPartnerLevel.ApiName == ("Concessionaire") || AppUtil.Instance.CurrentPartnerLevel.ApiName == ("DocumentTechnologyPartner");
basePresentationSLPVOL.Visible = AppUtil.Instance.CurrentPartnerLevel.ApiName == ("VolumePartner") || AppUtil.Instance.CurrentPartnerLevel.ApiName == ("SolutionProvider");

connectKeyDemoCCSSDTP.Visible = AppUtil.Instance.CurrentPartnerLevel.ApiName == ("Concessionaire") || AppUtil.Instance.CurrentPartnerLevel.ApiName == ("DocumentTechnologyPartner");
connectKeyDemoSLPVOL.Visible = AppUtil.Instance.CurrentPartnerLevel.ApiName == ("VolumePartner") || AppUtil.Instance.CurrentPartnerLevel.ApiName == ("SolutionProvider");

ccssDTPbadge.Visible = AppUtil.Instance.CurrentPartnerLevel.ApiName == ("Concessionaire") || AppUtil.Instance.CurrentPartnerLevel.ApiName == ("DocumentTechnologyPartner");

volSLPbadge.Visible = AppUtil.Instance.CurrentPartnerLevel.ApiName == ("VolumePartner") || AppUtil.Instance.CurrentPartnerLevel.ApiName == ("SolutionProvider");
}
</script>
<asp:Content ContentPlaceHolderID="PageHeadContent" Runat="Server">
  <style>
  .productSubTitles {
  background-color: #eee;
  text-align: center;
  padding: 10px;
  }
  </style>
  <script type="text/javascript">
  $(document).ready( function() {
  $('#tab-container').easytabs();
  $('#eventAssets-Subtab').easytabs();
  });
  </script>
</asp:Content>
<asp:Content ContentPlaceHolderID="InternalBreadCrumb" Runat="Server">
  
  <a href="../home.aspx">Partner Home</a> > Products and Services > ConnectKey Resources
</asp:Content>
<asp:Content ContentPlaceHolderID="InternalSideContent" Runat="Server">
  <div class="container_side">
    <ul class="side_links">
      <li><a href="connectkey-products.aspx"><img src="~/images/products/connectKey-prod-selector thumbnail.png" runat="server" style="border:1px solid lightgray;"><br>
      <b>S&eacute;lecteur de produit ConnectKey</b> &ndash; trouvez la machine parfaite pour chaque client</a></li>
      <li class="divider">&nbsp;</li>
      <li><a href="connectkey-solutions.aspx#mobilePrint"><img src="~/images/products/connectKey-solutions-selector-thumbnail.png" runat="server" style="border:1px solid lightgray;"><br>
      <b>S&eacute;lecteur de solutions</b> &ndash; pour ajouter de la valeur.  Trouvez de nouvelles sources de revenus</a></li>
      <li><br>
      <ResellerViewControls:BackpackLink runat="server" TargetSystem="Signals" TargetUrl="https://www.xeroxresponse2.com/portal/Account/SignIn" Destination="Event_Site_Builder" LinkText="<img src='../../../images/products/connectKey-Resources-EventSiteBuilder.jpg'/><br><b>Event Site Builder</b> &ndash; Simplifie de nombreuses t&acirc;ches de promotion et d'organisation d'&eacute;v&eacute;nements"/></li>
    </ul>
  </div>
</asp:Content>
<asp:Content ContentPlaceHolderID="InternalBodyContent" runat="Server">
  <section id="header_short_longer" class="bg_connectKey_img2">
    <h1>Ressources ConnectKey</h1>
    <p class="larger" style="margin-top:50px;">Pr&eacute;sentez au monde le nouvel assistant pour <br>l'environnement de travail</p>
  </section>
  <div id="tab-container" class='tab-container'>
    <ul class="blue-etabs" runat="server">
      <li class="blue-tab"><a href="#eventAssets">Ressources de l'&eacute;v&eacute;nement</a></li>
      <li class="blue-tab"><a href="#connectKeyBadge">Logo ConnectKey</a></li>
      <!--<li class="blue-tab"><a href="#attributes">ConnectKey Attributes</a></li>-->
    </ul>
    <div class='panel-container'>
      <div id="eventAssets" class="paragraph">
        <div id="eventAssets-Subtab" class="tab-container subtabs">
          <ul class="etabs tabs-5 mobile-tab-5-line" runat="server">
            <li class="tab"><a href="#overview">Pr&eacute;sentation</a></li>
            <li class="tab"><a href="#preEventMaterials">Supports pr&eacute;-&eacute;v&eacute;nement</a></li>
            <li class="tab"><a href="#onSiteEventMaterials">Supports de l'&eacute;v&eacute;nement sur site</a></li>
          </ul>
          <div id="overview" class="paragraph">
            <img src="~/images/products/connectKey-futureOfWork.jpg" runat="server" alt="Future Of Work Graphic" style="width:100%;"/>
            <p>La tourn&eacute;e mondiale The Future of Work organis&eacute;e par Xerox dans des villes strat&eacute;giques au mois de mai avait pour but de pr&eacute;senter aux clients la technologie Xerox&reg; ConnectKey&reg; qui fait des imprimantes multifonctions bien plus que de simples p&eacute;riph&eacute;riques. D'imprimantes, elles deviennent en effet de v&eacute;ritables assistants pour l'environnement de travail, con&ccedil;us pour optimiser l'efficacit&eacute; et le rendement du travail de nos clients.</p>
            <img src="~/images/products/connectKey-futureOfWork2.jpg" runat="server" alt="Future Of Work Graphic" style="border:1px solid #eee; float: right; max-width: 20%; margin:20px;"/>
            <p>Dans la foul&eacute;e de cette grande tourn&eacute;e, le moment est id&eacute;al pour continuer de propager cette nouvelle. C'est pourquoi nous avons cr&eacute;&eacute; une sorte d'&laquo; &eacute;v&eacute;nement en bo&icirc;te &raquo; sous la forme d'une trousse compl&egrave;te et flexible de ressources, destin&eacute;e aux Partenaires Xerox pour leurs propres &eacute;v&eacute;nements dans le monde entier.</p>
            <p>Toutes ces ressources sont r&eacute;pertori&eacute;es dans le <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825692" LinkText="guide du programme de l'&eacute;v&eacute;nement" /> Xerox ConnectKey et aux sections suivantes.</p>
            <h3>Simplifiez-vous la vie, avec l'outil Event Site Builder</h3>
            <p>L'outil Event Site Builder simplifie de nombreuses t&acirc;ches requises pour promouvoir et organiser des &eacute;v&eacute;nements. Il vous permet de personnaliser rapidement votre site Web s&eacute;curis&eacute; d'inscription, pour permettre &agrave; vos clients souhaitant participer &agrave; votre &eacute;v&eacute;nement de s'inscrire facilement.</p>
            <p>Cet outil suit les r&eacute;ponses aux invitations, et envoie des confirmations, des rappels et des e-mails de suivi. Acc&eacute;dez &agrave; l'outil
              <ResellerViewControls:BackpackLink runat="server" TargetSystem="Signals" TargetUrl="https://www.xeroxresponse2.com/portal/Account/SignIn" Destination="Event_Site_Builder" LinkText="Event Site Builder" />
              maintenant, ou lisez le petit
              <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Tools/Events-Technology-and-Registration-Systems/" LinkText="guide de l'utilisateur par &eacute;tapes" />
            .</p>
          </div>
          <div id="preEventMaterials" class="paragraph">
            <h2>Supports pr&eacute;-&eacute;v&eacute;nement</h2>
            <div class="row">
              <div class="col-sm-8">
                <p><b>
                  <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825567" LinkText="Document relatif aux r&ocirc;les et aux responsabilit&eacute;s <span class='pdf_text'>(Mod&egrave;le Excel.)</span>" />
                  </b><br>
                Servez-vous de ce mod&egrave;le pour affecter aux divers responsables les activit&eacute;s de planification et de r&eacute;alisation de votre &eacute;v&eacute;nement.</p>
                <p><b>
                  <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825384" LinkText="Mod&egrave;le de budget <span class='pdf_text'>(Mod&egrave;le Excel.)</span>" />
                  </b><br>
                Servez-vous de cette feuille de calcul pour planifier et suivre vos d&eacute;penses et respecter les limites de votre budget.</p>
                <p><b>Invitation
                  <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825623" LinkText="E-mail <span class='pdf_text'>Outlook (.OFT) modifiables.</span>" /></b>
                  et
                  <b><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825030" LinkText="prospectus <span class='pdf_text'>Fichiers PowerPoint</span>" />
                  </b><br>
                Servez-vous de ces mod&egrave;les personnalisables pour r&eacute;aliser des invitations &agrave; votre &eacute;v&eacute;nement, rapidement et facilement.</p>
                <p><b>Site Web d'inscription (au moyen de l'outil
                  <ResellerViewControls:BackpackLink runat="server" TargetSystem="Signals" TargetUrl="https://www.xeroxresponse2.com/portal/Account/SignIn" Destination="Event_Site_Builder" LinkText="Event Site Builder" />
                  tool)</b><br>
                Utilisez ce site pour cr&eacute;er facilement des pages d'inscription personnalis&eacute;es destin&eacute;es &agrave; vos invit&eacute;s, et pour suivre le processus d'inscription. D&eacute;couvrez la nouvelle banni&egrave;re &laquo; The Future of Work &raquo; sp&eacute;cialement con&ccedil;ue pour vos &eacute;v&eacute;nements ConnectKey 2017.</p>
                <p><b>E-mails d'inscription (confirmation et rappels)</b><br>
                  Processus automatis&eacute; par l'outil
                  <ResellerViewControls:BackpackLink runat="server" TargetSystem="Signals" TargetUrl="https://www.xeroxresponse2.com/portal/Account/SignIn" Destination="Event_Site_Builder" LinkText="Event Site Builder" />
                  <br>
                Utilisez cet outil pour confirmer les inscriptions et cr&eacute;er une s&eacute;quence de messages de rappel avant l'&eacute;v&eacute;nement.</p>
                <p><b>
                  <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825625" LinkText="E-mails relatifs &agrave; la logistique <span class='pdf_text'>Fichier Outlook (.OFT) personnalisable.</span>" />
                  </b><br>
                Servez-vous de ces e-mails pour informer les personnes inscrites des d&eacute;tails logistiques de votre &eacute;v&eacute;nement, notamment l'heure d'arriv&eacute;e, la tenue vestimentaire, le parking, les instructions d'acc&egrave;s, les r&eacute;servations h&ocirc;teli&egrave;res et d'autres informations propres &agrave; l'&eacute;v&eacute;nement.</p>
                <p><b>
                  <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825385" LinkText="Illustrations" />
                  </b><br>
                Images ConnectKey et photos de produits approuv&eacute;es par Xerox. Il peut s'agir de pr&eacute;sentations, de signal&eacute;tique et de supports marketing li&eacute;s aux activit&eacute;s Xerox ConnectKey.</p>
                <p><b>
                  <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825570" LinkText="Mod&egrave;le de communiqu&eacute; de presse <span class='pdf_text'>Document Word modifiable.</span>" />
                  </b><br>
                Document destin&eacute; aux Partenaires pour qu'ils produisent leur propre communiqu&eacute; de presse. Inclut des hyperliens aux pages Web essentielles sur ConnectKey.</p>
                <p><b>
                  <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825386" LinkText="Ressources destin&eacute;es aux r&eacute;seaux sociaux" />
                  </b><br>
                  Calendrier de billets destin&eacute;s aux r&eacute;seaux sociaux, &agrave; publier avant, pendant et apr&egrave;s les &eacute;v&eacute;nements pour sensibiliser l'opinion et cr&eacute;er le buzz.<br>
                  Utilisez les images de la collection
                  <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825385" LinkText="ConnectKey Imagery" />
                (voir ci-dessus) ou des photos en temps r&eacute;el prises &agrave; l'aide de votre smartphone.</p>
              </div>
              <div class="col-sm-4">
                <div class="col-sm-12">
                  <p><img src="~/images/products/connectKey-Events-EmailFlyer.JPG" runat="server" /><br>
                  <i>Invitation (prospectus et e-mail)</i></p>
                </div>
                <p>&nbsp;</p>
                <div class="col-sm-12">
                  <p><img src="~/images/products/connectKey-Events-Imagery.JPG" runat="server" style="border:1px solid #eee;"/><br>
                  <i>La collection ConnectKey Imagery contient des photos de produits et en studio de haute qualit&eacute;.</i></p>
                </div>
                <p>&nbsp;</p>
                <div class="col-sm-12">
                  <p><img src="~/images/products/connectKey-Events-pressRelease.JPG" runat="server" style="border:1px solid #eee;"/><br>
                  <i>Mod&egrave;le de communiqu&eacute; de presse</i></p>
                </div>
              </div>
            </div>
          </div>
          <div id="onSiteEventMaterials" class="paragraph">
            <h2>Supports de l'&eacute;v&eacute;nement sur site</h2>
            <div class="row">
              <div class="col-sm-8">
                <p><b>
                  <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825607" LinkText="Mod&egrave;le de programme <span class='pdf_text'>(PowerPoint Template)</span>" />
                  </b><br>
                Mod&egrave;le personnalisable au format PowerPoint, permettant de fournir aux invit&eacute;s les d&eacute;tails de l'&eacute;v&eacute;nement sur une page.</p>
                <p><b>
                  <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825622" LinkText="Guide de l'&eacute;v&eacute;nement <span class='pdf_text'>(Fichiers sources au format InDesign.)</span>" />
                  </b><br>
                Produisez un &eacute;l&eacute;gant programme de votre &eacute;v&eacute;nement sous forme de d&eacute;pliant &agrave; trois volets. Personnalisez le contenu en indiquant les intervenants, le programme et d'autres informations utiles.</p>
                <p><b>
                  <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825241" LinkText="Mod&egrave;le de badge nominatif <span class='pdf_text'>(Mod&egrave;le Word personnalisable.)</span>" />
                </b></p>
                <p><b>
                  <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825571" LinkText="Mod&egrave;le de chevalet <span class='pdf_text'>(Word &amp; Excel Templates)</span>" />
                  </b><br>
                Mod&egrave;le Word personnalisable et mod&egrave;le de base de donn&eacute;es Excel.</p>
                
                <h2>Pr&eacute;sentations et vid&eacute;os sur site</h2>
                <p><b>
                  <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825174" LinkText="Pr&eacute;sentation d'accueil en boucle <span class='pdf_text'>(PowerPoint)</span>" />
                  </b><br>
                Passez ces int&eacute;ressantes statistiques et informations visuelles en boucle avant l'&eacute;v&eacute;nement, pour accueillir les participants par un contenu pertinent.</p>
                <p><b>
                  <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825632" LinkText="Pr&eacute;sentation de base The Future of Work <span class='pdf_text'>(PowerPoint)</span>" />
                  </b><br>
                  Pr&eacute;sentation d'environ 20 &agrave; 35 minutes avec notes d&eacute;taill&eacute;es<br>
                  <span id="basePresentationCCSSDTP" runat="server">Sections : a) Historique de la marque et th&egrave;me b) Pr&eacute;sentation de VersaLink et AltaLink c) &Eacute;l&eacute;ments factuels ConnectKey align&eacute;s sur l'&eacute;cosyst&egrave;me.</span>
                  <span id="basePresentationSLPVOL" runat="server">Sections : a) Historique de la marque et th&egrave;me b) Pr&eacute;sentation de VersaLink c) &Eacute;l&eacute;ments factuels ConnectKey align&eacute;s sur l'&eacute;cosyst&egrave;me.</span></p>
                  <p><b>
                    <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825174" LinkText="&Eacute;quipement recommand&eacute;" />
                    </b><br>
                  Suivez ces recommandations pour d&eacute;terminer les p&eacute;riph&eacute;riques ConnectKey &agrave; pr&eacute;senter et le moyen de vous les procurer.</p>
                  <p><b>D&eacute;monstrations ConnectKey</b><br>
                    <span id="connectKeyDemoCCSSDTP" runat="server">Principales caract&eacute;ristiques recommand&eacute;es pour la d&eacute;monstration des mod&egrave;les VersaLink et AltaLink.<br>Les notes de pr&eacute;sentation pour une d&eacute;monstration simple sont fournies.</span>
                    <span id="connectKeyDemoSLPVOL" runat="server">Principales caract&eacute;ristiques recommand&eacute;es pour la d&eacute;monstration des mod&egrave;les VersaLink.<br>
                    Les notes de pr&eacute;sentation pour une d&eacute;monstration simple sont fournies.</span></p>
                    <h2>Ressources vid&eacute;o</h2>
                    <p>Fichiers MP4. Int&eacute;grez ces vid&eacute;os &agrave; votre pr&eacute;sentation The Future of Work pour renforcer vos principaux messages.</p>
                    <p><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825258" LinkText="Shingy: Transformation video" /></p>
                    
                    <p><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825266" LinkText="VersaLink Hat Shop SMB video" /></p>
                    
                    <p><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825264" LinkText="2017 Brother Dominic 'Set the Page Free' video" /><br>
                    <i>(NOTE: usage rights for this video expire December 31, 2017)</i></p>
                    
                    <p><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825270" LinkText="ConnectKey competitor's 15-steps video" /></p>
                    
                    <p><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825272" LinkText="ConnectKey 3-steps demo video" /></p>
                    
                    <p><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825262" LinkText="Shingy: Product Design (Apps) video" /></p>
                    
                    <p><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825274" LinkText="Foxway-xllnc Invoice Automation testimonial video" /></p>
                    
                    <p><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825247" LinkText="Shingy: Context video <i>(extra)</i>" /></p>
                    
                    <p><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825260" LinkText="Shingy: Social Connected video <i>(extra)</i>" /></p>
                    <h2>Signal&eacute;tique sur site</h2>
                    <h3>Signal&eacute;tique/Banni&egrave;res</h3>
                    <p><b>Fichiers sources au format InDesign pour les &eacute;l&eacute;ments suivants :</b></p>
                    <ul>
                      <li><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825695" LinkText="Banni&egrave;res d'accueil" /></li>
                      <li><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825610" LinkText="(6) Banni&egrave;res d&eacute;crivant les avantages" /></li>
                      <li><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825609" LinkText="(15) Banni&egrave;res relatives aux applis" /></li>
                    </ul>
                    <h3>Affichage mural</h3>
                    <p><b>Fichiers sources personnalisables</b></p>
                    <ul>
                      <li><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825573" LinkText="Stand parapluie 10&rsquo; x 8&rsquo; (3,048 m x 2,438 m)" /></li>
                      <li><ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825580" LinkText="Affichage pour mur arri&egrave;re 20&rsquo; x 8&rsquo; (6,096 m x 2,438 m)" /></li>
                    </ul>
                    <h2>Supports post-&eacute;v&eacute;nement</h2>
                    <p><b>E-mails - Remerciements, enqu&ecirc;te de satisfaction</b><br>
                    Automatis&eacute;s par l'outil<ResellerViewControls:BackpackLink runat="server" TargetSystem="Signals" TargetUrl="https://www.xeroxresponse2.com/portal/Account/SignIn" Destination="Event_Site_Builder" LinkText="Event Site Builder" />.</p>
                  </div>
                  <div class="col-sm-4">
                    <div class="col-sm-12">
                      <p><img src="~/images/products/connectKey-Events-agendaTemplate.JPG" runat="server" style="border:1px solid #eee;"/><br>
                      <i>Mod&egrave;le de programme</i></p>
                    </div>
                    <div class="col-sm-12">
                      <p><img src="~/images/products/connectKey-Events-futureOfWork.JPG" runat="server" style="border:1px solid #eee;"/><br>
                      <i>Pr&eacute;sentation de base The Future of Work</i></p>
                    </div>
                    <div class="col-sm-12" style="margin-top:100px;">
                      <p><img src="~/images/products/connectKey-Events-videoAssets1.jpg" runat="server" style="border:1px solid #eee;"/></p>
                    </div>
                    <div class="col-sm-12">
                      <p><img src="~/images/products/connectKey-Events-videoAssets2.jpg" runat="server" style="border:1px solid #eee;"/></p>
                    </div>
                    <div class="col-sm-12">
                      <p><img src="~/images/products/connectKey-Events-videoAssets3.jpg" runat="server" style="border:1px solid #eee;"/><br>
                      Ressources vid&eacute;o</p>
                    </div>
                    <div class="col-sm-12">
                      <p><img src="~/images/products/connectKey-Events-signageBanners.jpg" runat="server" style="border:1px solid #eee;"/><br>
                      Signal&eacute;tique et banni&egrave;res</p>
                    </div>
                  </div>
                </div></div>
              </div>
            </div>
            <div id="connectKeyBadge" class="paragraph">
              <div class="row">
                <div class="col-sm-9">
                  <p>La technologie ConnectKey va au-del&agrave; de la vente d'une simple machine pour inclure des services et des solutions de gestion des processus m&eacute;tiers &laquo; cl&eacute;s en main &raquo;. Pour diff&eacute;rencier l'offre Xerox et &eacute;largir la discussion avec vos clients, utilisez les images associant le logo Technologie ConnectKey sur votre site Web et dans d'autres communications lorsque vous faites la promotion des produits ConnectKey.</p>
                  <ol>
                    <li>Consultez les <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769826388" LinkText="Consignes d'utilisation de la marque et du logo <span class='pdf_text'>(PDF)</span>" /> &agrave; titre d'indication.</li>
                    <li>Acc&eacute;dez &agrave; la s&eacute;rie d'<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/CK17/" LinkText="images de produit associant le logo ConnectKey" /></li>
                    <li>Reportez-vous &agrave; la <ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/CK17/" LinkText="brochure ConnectKey " /></li>
                  </ol>
                </div>
                <div class="col-sm-3">
                  <p id="volSLPbadge" runat="server"><img src="~/images/products/connectKey-Badge-1.jpg" runat="server"/></p>
                  <p id="ccssDTPbadge" runat="server"><img src="~/images/products/connectKey-Badge-3.jpg" runat="server"/></p>
                  <!--<p><img src="~/images/products/connectKey-Badge-2.png" runat="server"/><br>
                  The 'lock-up' images help differentiate ConnectKey-enabled products</p>-->
                </div>
              </div>
            </div>
          </div>
        </div>
      </asp:Content>