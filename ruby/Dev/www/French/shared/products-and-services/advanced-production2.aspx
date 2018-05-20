<%@ Page Language="C#" MasterPageFile="../../../templates/internal-sub_1column-english.master" %>
<%@ MasterType VirtualPath="../../../templates/internal-sub_1column-english.master" %>

<script runat="server">
protected void Page_Init(object sender, EventArgs e)
{
//***** Page Settings
Page.Title = String.Format("{0} | {1}",
ResourceHelper.GetString("Portal_PartnerProgramName"),
"ConnectKey Resources"
);
}
</script>

<asp:Content ContentPlaceHolderID="PageHeadContent" Runat="Server">
  <meta name="description" content="">
</asp:Content>

<asp:Content ContentPlaceHolderID="BodyContent" Runat="Server">
  <section class="hero-text-styles">
    <ResellerView:EditableArea ID="SubpageBanner" runat="server">
    <div class="container hero" style="background: url(../../../images/hero/ECG_ProductsServices_CK-Resources_1200x380.jpg) no-repeat 0 0;">
      <div class="row">
        <div class="black-overlay">
          <h1>Ressources ConnectKey</h1>
          <p>Pr&eacute;sentez au monde le nouvel assistant pour <br>l'environnement de travail</p>
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
            <div class="field-links contact-us-style">(33) 155 856775 <br>
              ou <a href="../contact/contact.aspx">Nous contacter</a>
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
                  <li><a href="#eventAssets">Ressources de l'&eacute;v&eacute;nement</a></li>
                  <li><a href="#connectKey">Logo ConnectKey</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-md-12">
            <img src="../../../images/products/connectKey-futureOfWork.jpg" style="width:100%; height:auto;" alt="Future Of Work Graphic/>;"/>
            
          </div>
          <div class="row">
            <div class="col-md-6 title-section">
              <span class="anchor" id="eventAssets"></span>
              <!-- <h3>Intuitive User Experience</h3> -->
            </div>
          </div>
          <span class="anchor" id="versalink"></span>
          <div class="row no-gutter-left">
            <div class="col-sm-12">
              <div class="component-jump-menu component-jump-menu-large">
                <ul class="list-inline jump-menu zero-size">
                  <li><a href="#overview">Pr&eacute;sentation</a></li>
                  <li><a href="#preEventMaterials">Supports pr&eacute;-&eacute;v&eacute;nement</a></li>
                  <li><a href="#onSiteEventMaterials">Supports de l'&eacute;v&eacute;nement sur site</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-12">
              <div class="row">
                <div class="col-md-6 title-section">
                  <span class="anchor" id="overview"></span>
                  <h2>Pr&eacute;sentation</h2>
                </div>
              </div>
              <div class="row">
                <div class="col-md-8">
                  <p>La tourn&eacute;e mondiale The Future of Work organis&eacute;e par Xerox dans des villes strat&eacute;giques au mois de mai avait pour but de pr&eacute;senter aux clients la technologie Xerox&reg; ConnectKey&reg; qui fait des imprimantes multifonctions bien plus que de simples p&eacute;riph&eacute;riques. D'imprimantes, elles deviennent en effet de v&eacute;ritables assistants pour l'environnement de travail, con&ccedil;us pour optimiser l'efficacit&eacute; et le rendement du travail de nos clients.</p>
                  
                  <p>Dans la foul&eacute;e de cette grande tourn&eacute;e, le moment est id&eacute;al pour continuer de propager cette nouvelle. C'est pourquoi nous avons cr&eacute;&eacute; une sorte d'&laquo; &eacute;v&eacute;nement en bo&icirc;te &raquo; sous la forme d'une trousse compl&egrave;te et flexible de ressources, destin&eacute;e aux Partenaires Xerox pour leurs propres &eacute;v&eacute;nements dans le monde entier.</p>
                  <p>Toutes ces ressources sont r&eacute;pertori&eacute;es dans le
                    <a href="#backpacklink">guide du programme de l'&eacute;v&eacute;nement</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825692" LinkText="Event Programme Guide" />--%>
                  Xerox ConnectKey et aux sections suivantes.</p>
                </div>
                <div class="col-md-4 text-center">
                  <figure>
                    <img src="../../../images/products/connectKey-futureOfWork2.jpg" alt="Future Of Work Graphic" />
                  </figure>
                </div>
                <div class="col-sm-12">
                  <h3>Simplifiez-vous la vie, avec l'outil Event Site Builder</h3>
                  <p>L'outil Event Site Builder simplifie de nombreuses t&acirc;ches requises pour promouvoir et organiser des &eacute;v&eacute;nements. Il vous permet de personnaliser rapidement votre site Web s&eacute;curis&eacute; d'inscription, pour permettre &agrave; vos clients souhaitant participer &agrave; votre &eacute;v&eacute;nement de s'inscrire facilement.</p>
                  <p>Cet outil suit les r&eacute;ponses aux invitations, et envoie des confirmations, des rappels et des e-mails de suivi. Acc&eacute;dez &agrave; l'outil
                    <a href="#backpacklink">Event Site Builder</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="Signals" TargetUrl="https://www.xeroxresponse2.com/portal/Account/SignIn" Destination="Event_Site_Builder" LinkText="Event Site Builder" />--%>
                    maintenant, ou lisez le petit
                    <a href="#backpacklink">guide de l'utilisateur par &eacute;tapes</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Tools/Events-Technology-and-Registration-Systems/" LinkText="step-by-step User Guide" />--%>
                  .</p>
                </div>
              </div>
              <p>&nbsp;</p>
              <hr>
              <div class="row">
                <div class="col-md-8 title-section">
                  <span class="anchor" id="preEventMaterials"></span>
                  <h2>Supports pr&eacute;-&eacute;v&eacute;nement</h2>
                </div>
              </div>
              <div class="row">
                <div class="col-md-8">
                  <p><b>
                    <a href="#backpacklink">Document relatif aux r&ocirc;les et aux responsabilit&eacute;s <span class='pdf_text'>(Mod&egrave;le Excel.)</span></a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825567" LinkText="Roles and Responsibilities Document <span class='pdf_text'>(Excel Template)</span>" />--%>
                    </b><br>
                  Servez-vous de ce mod&egrave;le pour affecter aux divers responsables les activit&eacute;s de planification et de r&eacute;alisation de votre &eacute;v&eacute;nement.</p>
                  <p><b>
                    <a href="#backpacklink">Mod&egrave;le de budget <span class='pdf_text'>(Mod&egrave;le Excel.)</span></a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825384" LinkText="Budget Template <span class='pdf_text'>(Excel Template)</span>" />--%>
                    </b><br>
                  Servez-vous de cette feuille de calcul pour planifier et suivre vos d&eacute;penses et respecter les limites de votre budget.</p>
                  <p><b>Invitation
                    <a href="#backpacklink">E-mail <span class='pdf_text'>Outlook (.OFT) modifiables.</span></a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825623" LinkText="Email <span class='pdf_text'>(.OTF - Outlook)</span>" />--%>
                    </b> et <b>
                    <a href="#backpacklink">prospectus <span class='pdf_text'>Fichiers PowerPoint</span> </a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825030" LinkText="Flyer <span class='pdf_text'>(PowerPoint Template)</span>" />--%>
                    </b><br>
                  Servez-vous de ces mod&egrave;les personnalisables pour r&eacute;aliser des invitations &agrave; votre &eacute;v&eacute;nement, rapidement et facilement.</p>
                  <p><b>Site Web d'inscription (au moyen de l'outil
                    <a href="#backpacklink">Event Site Builder</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="Signals" TargetUrl="https://www.xeroxresponse2.com/portal/Account/SignIn" Destination="Event_Site_Builder" LinkText="Event Site Builder" />--%>
                    tool)</b><br>
                  Utilisez ce site pour cr&eacute;er facilement des pages d'inscription personnalis&eacute;es destin&eacute;es &agrave; vos invit&eacute;s, et pour suivre le processus d'inscription. D&eacute;couvrez la nouvelle banni&egrave;re &laquo; The Future of Work &raquo; sp&eacute;cialement con&ccedil;ue pour vos &eacute;v&eacute;nements ConnectKey 2017.</p>
                  <p><b>E-mails d'inscription (confirmation et rappels)</b><br>
                    Processus automatis&eacute; par l'outil
                    <a href="#backpacklink">Event Site Builder</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="Signals" TargetUrl="https://www.xeroxresponse2.com/portal/Account/SignIn" Destination="Event_Site_Builder" LinkText="Event Site Builder" />--%>
                    <br>
                  Utilisez cet outil pour confirmer les inscriptions et cr&eacute;er une s&eacute;quence de messages de rappel avant l'&eacute;v&eacute;nement.</p>
                  <p><b>
                    <a href="#backpacklink">E-mails relatifs &agrave; la logistique <span class='pdf_text'>Fichier Outlook (.OFT) personnalisable.</span></a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825625" LinkText="Logistics Emails <span class='pdf_text'>(.OFT - Outlook)</span>" />--%>
                    </b><br>
                  Servez-vous de ces e-mails pour informer les personnes inscrites des d&eacute;tails logistiques de votre &eacute;v&eacute;nement, notamment l'heure d'arriv&eacute;e, la tenue vestimentaire, le parking, les instructions d'acc&egrave;s, les r&eacute;servations h&ocirc;teli&egrave;res et d'autres informations propres &agrave; l'&eacute;v&eacute;nement.</p>
                  <p><b>
                    <a href="#backpacklink">Illustrations</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825385" LinkText="Imagery" />--%>
                    </b><br>
                  Images ConnectKey et photos de produits approuv&eacute;es par Xerox. Il peut s'agir de pr&eacute;sentations, de signal&eacute;tique et de supports marketing li&eacute;s aux activit&eacute;s Xerox ConnectKey.</p>
                  <p><b>
                    <a href="#backpacklink">Mod&egrave;le de communiqu&eacute; de presse <span class='pdf_text'>Document Word modifiable.</span></a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825570" LinkText="Press Release Template <span class='pdf_text'>(Word Template)</span>" />--%>
                    </b><br>
                  Document destin&eacute; aux Partenaires pour qu'ils produisent leur propre communiqu&eacute; de presse. Inclut des hyperliens aux pages Web essentielles sur ConnectKey.</p>
                  <p><b>
                    <a href="#backpacklink">Ressources destin&eacute;es aux r&eacute;seaux sociaux</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825386" LinkText="Social Media Assets" />--%>
                    </b><br>
                    Calendrier de billets destin&eacute;s aux r&eacute;seaux sociaux, &agrave; publier avant, pendant et apr&egrave;s les &eacute;v&eacute;nements pour sensibiliser l'opinion et cr&eacute;er le buzz.<br>
                    Utilisez les images de la collection
                    <a href="#backpacklink">ConnectKey Imagery</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825385" LinkText="ConnectKey Imagery" />--%>
                  (voir ci-dessus) ou des photos en temps r&eacute;el prises &agrave; l'aide de votre smartphone.</p>
                </div>
                <div class="col-md-4">
                  <figure>
                    <p><img src="../../../images/products/connectKey-Events-EmailFlyer.JPG" class="img-responsive center-block" alt="connectKey events"/><br>
                      <figcaption>Invitation (prospectus et e-mail)</figcaption>
                    </figure>
                    <figure>
                      <p><img src="../../../images/products/connectKey-Events-Imagery.JPG" class="img-responsive center-block" alt="connectKey events"/><br><br>
                        <figcaption>La collection ConnectKey Imagery contient des photos de produits et en studio de haute qualit&eacute;.</figcaption>
                      </figure>
                      <figure>
                        <p><img src="../../../images/products/connectKey-Events-pressRelease.JPG" class="img-responsive center-block" alt="connectKey events" /><br>
                          <figcaption>Mod&egrave;le de communiqu&eacute; de presse</figcaption>
                        </figure>
                      </div>
                    </div>
                    
                    <p>&nbsp;</p>
                    <hr>
                    <div class="row">
                      <div class="col-md-6 title-section">
                        <span class="anchor" id="onSiteEventMaterials"></span>
                        <h2>Supports de l'&eacute;v&eacute;nement sur site</h2>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-8">
                        <p><b>
                          <a href="#backpacklink">Mod&egrave;le de programme <span class='pdf_text'>(PowerPoint Template)</span> </a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825607" LinkText="Agenda Template <span class='pdf_text'>(PowerPoint Template)</span>" />--%>
                          </b><br>
                        Mod&egrave;le personnalisable au format PowerPoint, permettant de fournir aux invit&eacute;s les d&eacute;tails de l'&eacute;v&eacute;nement sur une page.</p>
                        <p><b>
                          <a href="#backpacklink">Guide de l'&eacute;v&eacute;nement <span class='pdf_text'>(Fichiers sources au format InDesign.)</span> </a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825622" LinkText="Show Guide <span class='pdf_text'>(InDesign Source Files)</span>" />--%>
                          </b><br>
                        Produisez un &eacute;l&eacute;gant programme de votre &eacute;v&eacute;nement sous forme de d&eacute;pliant &agrave; trois volets. Personnalisez le contenu en indiquant les intervenants, le programme et d'autres informations utiles.</p>
                        <p><b>
                          <a href="#backpacklink">Mod&egrave;le de badge nominatif <span class='pdf_text'>(Mod&egrave;le Word personnalisable.)</span> </a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825241" LinkText="Name Badge Template <span class='pdf_text'>(Word Template)</span>" />--%>
                        </b></p>
                        <p><b>
                          <a href="#backpacklink">Mod&egrave;le de chevalet <span class='pdf_text'>(Word &amp; Excel Templates)</span> </a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825571" LinkText="Tent Card Template <span class='pdf_text'>(Word &amp; Excel Templates)</span>" />--%>
                          </b><br>
                        Mod&egrave;le Word personnalisable et mod&egrave;le de base de donn&eacute;es Excel.</p>
                        <h3>Pr&eacute;sentations et vid&eacute;os sur site</h3>
                        <p><b>
                          <a href="#backpacklink">Pr&eacute;sentation d'accueil en boucle <span class='pdf_text'>(PowerPoint)</span> </a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825174" LinkText="Walk-In Loop <span class='pdf_text'>(PowerPoint)</span>" />--%>
                          </b><br>
                        Passez ces int&eacute;ressantes statistiques et informations visuelles en boucle avant l'&eacute;v&eacute;nement, pour accueillir les participants par un contenu pertinent.</p>
                        <p><b>
                          <a href="#backpacklink">Pr&eacute;sentation de base The Future of Work <span class='pdf_text'>(PowerPoint)</span> </a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825632" LinkText="Future of Work Base Presentation <span class='pdf_text'>(PowerPoint)</span>" />--%>
                          </b><br>
                          Pr&eacute;sentation d'environ 20 &agrave; 35 minutes avec notes d&eacute;taill&eacute;es<br>
                          <span id="basePresentationCCSSDTP" >Sections : a) Historique de la marque et th&egrave;me b) Pr&eacute;sentation de VersaLink et AltaLink c) &Eacute;l&eacute;ments factuels ConnectKey align&eacute;s sur l'&eacute;cosyst&egrave;me.</span> <span id="basePresentationSLPVOL">Sections : a) Historique de la marque et th&egrave;me b) Pr&eacute;sentation de VersaLink c) &Eacute;l&eacute;ments factuels ConnectKey align&eacute;s sur l'&eacute;cosyst&egrave;me.</span></p>
                          <p><b>
                            <a href="#backpacklink">&Eacute;quipement recommand&eacute;</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825174" LinkText="Equipment Recommendations" />--%>
                            </b><br>
                          Suivez ces recommandations pour d&eacute;terminer les p&eacute;riph&eacute;riques ConnectKey &agrave; pr&eacute;senter et le moyen de vous les procurer.</p>
                          <p><b>D&eacute;monstrations ConnectKey</b><br>
                            <span id="connectKeyDemoCCSSDTP">Principales caract&eacute;ristiques recommand&eacute;es pour la d&eacute;monstration des mod&egrave;les VersaLink et AltaLink.<br>Les notes de pr&eacute;sentation pour une d&eacute;monstration simple sont fournies.</span>
                            <span id="connectKeyDemoSLPVOL">Principales caract&eacute;ristiques recommand&eacute;es pour la d&eacute;monstration des mod&egrave;les VersaLink.<br>
                            Les notes de pr&eacute;sentation pour une d&eacute;monstration simple sont fournies.</span></p>
                            
                            <h3>Ressources vid&eacute;o</h3>
                            <p>Fichiers MP4. Int&eacute;grez ces vid&eacute;os &agrave; votre pr&eacute;sentation The Future of Work pour renforcer vos principaux messages.</p>
                            <p>
                              <a href="#backpacklink">Shingy: Transformation video</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825258" LinkText="Shingy: Transformation video" />--%>
                            </p>
                            <p>
                              <a href="#backpacklink">VersaLink Hat Shop SMB video</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825266" LinkText="VersaLink Hat Shop SMB video" />--%>
                            </p>
                            <p>
                              <a href="#backpacklink">2017 Brother Dominic 'Set the Page Free' video</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825264" LinkText="2017 Brother Dominic 'Set the Page Free' video" />--%>
                              <br>
                            <i>(NOTE: usage rights for this video expire December 31, 2017)</i></p>
                            <p>
                              <a href="#backpacklink">ConnectKey competitor's 15-steps video</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825270" LinkText="ConnectKey competitor's 15-steps video" />--%>
                            </p>
                            <p>
                              <a href="#backpacklink">ConnectKey 3-steps demo video</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825272" LinkText="ConnectKey 3-steps demo video" />--%>
                            </p>
                            <p>
                              <a href="#backpacklink">Shingy: Product Design (Apps) video</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825262" LinkText="Shingy: Product Design (Apps) video" />--%>
                            </p>
                            <p>
                              <a href="#backpacklink">Foxway-xllnc Invoice Automation testimonial video</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825274" LinkText="Foxway-xllnc Invoice Automation testimonial video" />--%>
                            </p>
                            <p>
                              <a href="#backpacklink">Shingy: Context video </a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825247" LinkText="Shingy: Context video <i>(extra)</i>" />--%>
                            </p>
                            <p>
                              <a href="#backpacklink">Shingy: Social Connected video <i>(extra)</i></a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825260" LinkText="Shingy: Social Connected video <i>(extra)</i>" />--%>
                            </p>
                            <h3>Signal&eacute;tique sur site</h3>
                            <h4><b>Signal&eacute;tique/Banni&egrave;res</b></h4>
                            <p><b>Fichiers sources au format InDesign pour les &eacute;l&eacute;ments suivants :</b></p>
                            <ul>
                              <li>
                                <a href="#backpacklink">Banni&egrave;res d'accueil</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825695" LinkText="(2) Welcome banners" />--%>
                              </li>
                              <li>
                                <a href="#backpacklink">(6) Banni&egrave;res d&eacute;crivant les avantages" </a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825610" LinkText="(6) Benefits banners" />--%>
                              </li>
                              <li>
                                <a href="#backpacklink">(15) Banni&egrave;res relatives aux applis</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825609" LinkText="(15) Apps banners" />--%>
                              </li>
                            </ul>
                            <h4><b>Affichage mural<b></h4>
                            <p><b>Fichiers sources personnalisables</b></p>
                            <ul>
                              <li>
                                <a href="#backpacklink">Stand parapluie 10&rsquo; x 8&rsquo; (3,048 m x 2,438 m)</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825573" LinkText="10' x 8' Pop-Up Display" />--%>
                              </li>
                              <li>
                                <a href="#backpacklink">Affichage pour mur arri&egrave;re 20&rsquo; x 8&rsquo; (6,096 m x 2,438 m)</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769825580" LinkText="20' x 8' Back Wall Display" />--%>
                              </li>
                            </ul>
                            <h3>Supports post-&eacute;v&eacute;nement</h3>
                            <p><b>E-mails - Remerciements, enqu&ecirc;te de satisfaction</b><br>
                              Automatis&eacute;s par l'outil
                              <a href="#backpacklink">Event Site Builder</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="Signals" TargetUrl="https://www.xeroxresponse2.com/portal/Account/SignIn" Destination="Event_Site_Builder" LinkText="Event Site Builder" />--%>
                            .</p>
                          </div>
                          <div class="col-md-4 text-center">
                            <p>&nbsp;</p>
                            <p><img src="../../../images/products/connectKey-Events-agendaTemplate.JPG" class="img-responsive center-block" style="border:1px solid #eee;" alt="connectKey events"/><br>
                            <i>Mod&egrave;le de programme</i></p>
                            <p>&nbsp;</p>
                            <p><img src="../../../images/products/connectKey-Events-futureOfWork.JPG" class="img-responsive center-block" style="border:1px solid #eee;" alt="connectKey events"/><br>
                            <i>Pr&eacute;sentation de base The Future of Work</i></p>
                            <p>&nbsp;</p>
                            <p>&nbsp;</p>
                            <p>&nbsp;</p>
                            <p><img src="../../../images/products/connectKey-Events-videoAssets1.jpg" class="img-responsive center-block" style="border:1px solid #eee;" alt="connectKey events"/></p>
                            
                            <p><img src="../../../images/products/connectKey-Events-videoAssets2.jpg" class="img-responsive center-block" style="border:1px solid #eee;" alt="connectKey events"/></p>
                            
                            <p><img src="../../../images/products/connectKey-Events-videoAssets3.jpg" class="img-responsive center-block" style="border:1px solid #eee;" alt="connectKey events"/><br>
                            Ressources vid&eacute;o</p>
                            <p>&nbsp;</p>
                            <p><img src="../../../images/products/connectKey-Events-signageBanners.jpg" class="img-responsive center-block" style="border:1px solid #eee;" alt="connectKey events"/><br>
                            Signal&eacute;tique et banni&egrave;res</p>
                            
                          </div>
                          
                        </div>
                        <p>&nbsp;</p>
                        <hr>
                        <div class="row">
                          <div class="col-md-6 title-section">
                            <span class="anchor" id="connectKey"></span>
                            <h2>Logo ConnectKey</h2>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-md-8">
                            <p>La technologie ConnectKey va au-del&agrave; de la vente d'une simple machine pour inclure des services et des solutions de gestion des processus m&eacute;tiers &laquo; cl&eacute;s en main &raquo;. Pour diff&eacute;rencier l'offre Xerox et &eacute;largir la discussion avec vos clients, utilisez les images associant le logo Technologie ConnectKey sur votre site Web et dans d'autres communications lorsque vous faites la promotion des produits ConnectKey.</p>
                            <ol>
                              <li>Consultez les <a href="#backpacklink">Consignes d'utilisation de la marque et du logo <span class='pdf_text'>(PDF)</span> </a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/templates/AssetDetail.aspx?id=25769826388" LinkText="ConnectKey Badge Branding Guidelines <span class='pdf_text'>(PDF)</span>" />--%> titre d'indication.</li>
                              <li>Acc&eacute;dez &agrave; la s&eacute;rie d' <a href="#backpacklink">images de produit associant le logo ConnectKey</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/CK17/" LinkText="ConnectKey product 'lock-up' images" />--%></li>
                              <li>Reportez-vous &agrave; la <a href="#backpacklink">brochure ConnectKey </a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="SmartCentre" TargetUrl="https://smartcentre.xerox.com/auth/portalauth.aspx" Destination="/Products-and-Services/CK17/" LinkText="ConnectKey brochure" />--%></li>
                            </ol>
                          </div>
                          <div class="col-md-4">
                            <p id="volSLPbadge"><img src="../../../images/products/connectKey-Badge-1.jpg" class="img-responsive center-block"  alt="connectKey badge"/></p>
                            
                          </div>
                        </div>
                        <p>&nbsp;</p>
                        <hr>
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
                          <div class="field-links contact-us-style">(33) 155 856775 <br>
                            ou <a href="../contact/contact.aspx">Nous contacter</a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <h2>Quick Links</h2>
                    <div class="field-links-wrapper">
                      <div class="field-links"> <a href="connectkey-products.aspx"><img src="../../../images/products/connectKey-prod-selector thumbnail.png" style="border:1px solid lightgray;" alt="connectKey products selector">
                      S&eacute;lecteur de produit ConnectKey &ndash; trouvez la machine parfaite pour chaque client</a> </div>
                      <p>&nbsp;</p>
                      <div class="field-links"><a href="connectkey-solutions.aspx#mobilePrint"><img src="../../../images/products/connectKey-solutions-selector-thumbnail.png" style="border:1px solid lightgray;" alt="connectKey solutions selector">
                      S&eacute;lecteur de solutions &ndash; pour ajouter de la valeur.  Trouvez de nouvelles sources de revenus</a> </div>
                      <p>&nbsp;</p>
                      <div class="field-links"> <a href="#backpacklink"><img src='../../../images/products/connectKey-Resources-EventSiteBuilder.jpg' alt="connectKey resources"/><br>Event Site Builder &ndash; Simplifie de nombreuses t&acirc;ches de promotion et d'organisation d'&eacute;v&eacute;nements</a><%--<ResellerViewControls:BackpackLink runat="server" TargetSystem="Signals" TargetUrl="https://www.xeroxresponse2.com/portal/Account/SignIn" Destination="Event_Site_Builder" LinkText="<img src='../../../images/products/connectKey-Resources-EventSiteBuilder.jpg'/><br>Event Site Builder &ndash; Simplifies many of the tasks required to promote and host events" />--%> </div>
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
