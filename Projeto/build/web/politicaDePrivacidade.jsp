<%-- 
    Created on : 06/06/2020, 18:38:01
    Author     : Elisson Vale
--%>

<%@page import="style.Estilo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            String url = null;
            String li1 = null;
            String li2 = null;
            String nome = null;
            String email = null;
                if(session.getAttribute("logado") != null){
                    email = (String) session.getAttribute("email_usuario");
                    String  primeiro = (String) session.getAttribute("nome_usuario");
                    nome = primeiro.substring(0,primeiro.indexOf(" "));
                    url = "logout.jsp";
                    li1 = "Ola, " + nome;
                    li2 = "Sair";
                }else{
                    url = "login.jsp";
                    li1 = "<div id=\"conta\"></div>";
                    li2 = "Entrar";
                }
        %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="Stylesheet" type="text/css" href="css/estilo.css">
        <title>Politica de Privacidade</title>
            <% 
                out.println(Estilo.estiloMenu());
                out.println(Estilo.estiloRodape());
            %>
    </head>
           <div class="menu"><%-- objeto/tag de classe menu--%>
            <ul><%-- objeto/tag que indica lista ordenada --%>
                <li><a href="index.jsp"><img class="logo-menu" src="imagens/ddd.png"></a></li>
                <li><a href="index.jsp">inicio</a></li>                    
                <li><a href="produtos.jsp">Produtos</a></li>
                <li><a href="agendamento.jsp">Agendamento</a></li>
                <li><a href="sobre.jsp">sobre</a></li>
                <li><a href="#">contato</a></li>
                <li><a href="login.jsp"><%out.print(li1);%></a>
                    <ul>
                        <li id="logar"><a href="<%out.print(url);%>"><%out.print(li2);%></a></li>
                    </ul>
                </li>
            </ul>
        </div>
<br/>
                 <br/>
                 <br/>
                 <br/>
                    <div id="titulo">
                        <div><h1><u><font color="black">Politica de Privacidade</font></u></h1></div>
                    </div>
                    <div id="corpo">
                    <div id="sub1">
                        <h3><u>Nós da Barbearia do Zé, nos preocupamos muito com sua segurança</u></h3>                             
                    </div> 
                                <p>
                                     • Quais são as infomarções que coletamos;
                                    <br /> • O que são &quot;cookies&quot;  e qual sua utilidade;
                                    <br /> • Como serão utilizadas informações coletadas;
                                    <br /> • Quem coleta as informações;
                                    <br /> • Com quem suas informações podem ser compartilhadas
                                    <br /> • O que mais você precisa saber sobre sua privacidade em nossa página 
                                </p>
                                <p>&nbsp;</p> 
                                <div id="sub2"><h3><u>Quais são as informações que obtemos</u></h3></div>
                                <p>Nosso site coleta informações básica nome, localização, etc... </p> 
                                <p>Algumas informações pessoais são obtidas quando você se registra. Durante o processo de registro, perguntamos seu nome, endereço de e-mail e outras informações pessoais. Quanto mais informações corretas você fornecer , melhor será a personalização da sua experiência.</p> 
                                <p>não remetam à identidade do registrante e, em geral, contrários à lei, à ordem ou às exigências da moral e dos bons costumes comumente aceitos. Além disso, é terminantemente proibido o uso de nomes de marcas, programas, produtos ou serviços de propriedade ou oferecidos pelo nosso site ou de qualquer uma de suas sociedades controladoras, sociedade controladas ou sociedades sob controle comum. <br /> O assinante e/ou usuário que desobedecer ao estabelecido no paráfrafo supra poderá ter o seu login cancelado</p> 
                                <p>Depois do registro, você estará apto a usufruir e desfrutar de benefícios de um usuário cadastrado, incluindo a participação em promoções, eventos on-line, sorteios e compras <br />possui diversos parceiros e/ou patrocinadores, que também criam sorteios e promoções, oferecendo inúmeros bens e/ou serviços através de sites que são acessados. As informações que você fornece quando visita e/ou completa transações nesses sites são obtidas por esses parceiros, estando assim sujeitas às suas próprias práticas de obtenção e uso de dados, sem que caiba qualquer responsabilidade, pelo manuseio de tais informações.</p> 
                                <p>Para obter informações sobre as políticas e normas de privacidade desses parceiros e/ou patrocinadores, sugerimos que você localize as normas de relacionamento específicas dentro do próprio site do parceiro.</p>
                            <p>&nbsp;</p> 
                            <div id="sub3"><h3><u>O que são &quot;cookies&quot; e qual sua utilidade</u></h3></div>
                                <p>Cookies são pequenos arquivos de texto enviados ao seu computador. Os cookies são armazenados no seu computador. Estes pequenos arquivos servem para reconhecer, acompanhar e armazenar a navegação do usuário na Internet.</p> 
                                <p>O uso de cookies para acompanhar e armazenar informações possibilitará ao site de nossa Barbearia oferecer um serviço mais personalizado (hiperlink para o texto explicativo sobre personalização), de acordo com as características e interesses de seus usuários, possibilitando, inclusive, a oferta de conteúdo e publicidade específicos para cada pessoa, beneficiando a experiência do usuário na Internet.<br /> Em geral, os cookies são utilizados para: Proporcionar serviços diferenciados, lembrando quem você é e quais são os seus hábitos de navegação, além de acessar as informações do seu cadastro em nosso site (armazenadas em nossos servidores);</p>
                                <p>Calcular a dimensão da audiência do site;</p> 
                                <p>Acompanhar o andamento de promoções. Quando uma promoção organizada pelo nosso site usa cookies, as informações gravadas no cookie indicam a pontuação do usuário.<br /> Medir certos padrões de navegação, mapeando quais áreas que você visitou e seus hábitos de visita como um todo. Usamos essa informação para verificar a rotina de navegação dos nossos usuários, e assim oferecer conteúdo e/ou serviços cada vez mais personalizados.</p> 
                                <p>Facilitar e agilizar o preenchimento de formulários. As informações contidas nos cookies de cada usuário podem ser utilizadas para preencher previamente os formulários de coleta de dados existentes na Internet.</p> 
                                <p>Os anunciantes, parceiros e/ou patrocinadores do site poderão utilizar seus próprios cookies, os quais não são cobertos por esta política. Sugerimos que você consulte as políticas de privacidade dessas empresas.</p> 
                                <p>Terceiros, incluindo o Google, usam cookies para veicular anúncios com base em visitas anteriores do usuário a seu website. Com o uso do cookie da DoubleClick, o Google e seus parceiros podem veicular anúncios para seus usuários com base nas visitas feitas a seus sites e/ou a outros sites na Internet. </p> 
                                <p>Sobre as políticas internas dos produtos do Google, leia mais em <a href="http://www.google.com/intl/pt-BR/policies/privacy/">Política de Privacidade do Google</a> </p> 
                            <p>&nbsp;</p> 
                            <div id="sub4"><h3><u>Como serão utilizadas estas informações</u></h3></div>
                                <p>As informações coletadas pelo nosso site serão utilizadas para personalizar o conteúdo e/ou serviços disponibilizados. Isso inclui serviços de personalização, comunicações interativas, compras de produtos on-line e outros tipos de serviços. Sabendo mais sobre você, o site de nossa Barbearia pode fornecer conteúdo e serviços mais relevantes e, conseqüentemente, proporcionar uma melhor experiência on-line.<br /> As informações também poderão ser utilizadas para gerar dados estatísticos gerais com finalidade informativa ou comercial. Informações de uso dos usuários de nossa  poderão ser fornecidas a parceiros, patrocinadores, anunciantes ou outras empresas externas, sem que sejam revelados nomes ou outros dados de navegação.</p> 
                                <p>As informações coletadas poderão ser utilizadas para direcionamento de campanhas publicitárias de uma forma geral, como por exemplo no caso em que um anunciante determina como foco de uma determinada campanha homens com mais de 18 anos. Nesse caso, veiculamos a propaganda aos usuários dentro dessa faixa etária utilizando banners e/ou e-mails promocionais. Os usuários ao se cadastrarem no site Barbearia do Zé terão a opção de receber ou não em sua conta de e-mail ofertas e/ou propaganda, sendo que, a qualquer tempo, essa opção poderá ser alterada pelo usuário.</p>
                                <p>As informações pessoais individuais não serão comercializadas ou fornecidas a terceiros em nenhuma hipótese, salvo em estrito cumprimento de ordens judiciais ou procedimentos jurídicos similares. Todas as informações fornecidas a parceiros, patrocinadores, anunciantes e demais serão apenas de grupos de usuários (segmentos de mercado).</p> 
                                <p>&nbsp;</p>
                                <div id="sub5"><h3><u>Quem coleta as informações</u></h3></div>
                                <p>Quando nosso site solicita informações pessoais a você, essas informações estarão sendo enviadas somente ao nossos sistemas, parceiros e patrocinadores, a não ser que seja indicado de forma diferente. Alguns parceiros, patrocinadores, anunciantes e demais que sejam acessados através de nosso site da Barbearia, poderão solicitar informações pessoais suas.</p> 
                                <p>Num caso como esse essas informações não estarão sendo enviadas ao nosso site, e, sendo assim, o site da Barbearia não terá qualquer responsabilidade pela utilização e manejo dessa informação, não sendo aplicada a presente política.</p> 
                                <p>As promoções realizadas no site de nossa Barearia podem ser patrocinadas por outras empresas ou segundo uma parceria entre nossa Barbearia. Alguns ou todos os dados coletados durante uma promoção podem ser compartilhados com o parceiro e/ou patrocinador. Se os dados forem compartilhados, você será notificado antes da coleta ou transferência dos dados. Assim, poderá decidir não participar da promoção se não desejar que seus dados sejam compartilhados ao nosso site que você acessar anunciantes ou outros Sites da Web através de links presentes no site da barbearia, aqueles poderão coletar informações sobre você. Lembramos que as práticas relativas à privacidade desses parceiros e terceiros não são cobertos pela presente política e podem ser bem diferentes dos padrões de privacidade.</p>
                                <p>&nbsp;</p>
                                <div id="sub6>"><h3><u>Com quem suas informações podem ser compartilhadas</u></h3></div> 
                                <p>O nosso site da Barbearia não tem como prática a divulgação de informações que possam identificá-lo, salvo quando autorizado por você ou em circunstâncias previstas nesta presente política. Em alguns casos, essa identificação será necessária, caso você adquira um determinado produto ou serviço ou ganhe um prêmio cuja entrega, para ser feita, necessite de suas informações pessoais. A identificação também pode ser pedida para que uma determinada transação comercial possa ser efetivada. A revelação dos seus dados poderá ainda acontecer devido a exigências legais. Podemos revelar suas informações pessoais em algumas circunstâncias, listadas nos casos a seguir:</p>
                                <p>Parceiros de negócios e patrocinadores: O nosso site pode divulgar suas informações pessoais a alguns parceiros, patrocinadores, anunciantes e demais. Porém, nesses casos, você será consultado antes mesmo de a coleta ou transferência de dados ser feita. Os detalhes do uso compartilhado podem ser encontrados nos contratos de uso específicos e também nas regras das promoções. Alguns ou todos os dados coletados durante uma promoção do nosso site, podem ser compartilhados com um patrocinador. Se forem compartilhados dados que possam identificá-lo, você será informado antes da coleta ou transferência de dados.</p> 
                                <p>Algumas promoções oferecem oportunidades para solicitação de informações adicionais dos patrocinadores. Solicitando mais informações, você dá ao nosso site permissão para transferir suas informações pessoais para o patrocinador, para que ele possa atender à sua solicitação.</p> 
                                <p>Dados de terceiros e dados agregados: Sob acordos de confidencialidade e demais instrumento contratuais, nosso site pode comparar informações do usuário com dados de terceiros. Além disso, o site de nossa Barbearia pode divulgar estatísticas agregadas para grupos de usuários (por exemplo, com o objetivo de descrever nossos serviços para prováveis parceiros, anunciantes etc., bem como tendo em vista outros objetivos legais.</p> 
                                <p>Outros: A Barbearia do Zé também pode divulgar informações sobre o usuário em casos especiais nos quais temos razão para acreditar que a divulgação dessas informações é necessária para identificar, entrar em contato ou agir legalmente contra alguém que possa estar causando danos ou interferindo (intencional ou não intencionalmente) nos direitos ou na propriedade de nosso site, de outros usuários de nossa Barbearia ou de qualquer pessoa que seja prejudicada por tais atividades. A Barbearia pode divulgar informações sobre o usuário quando exigido por lei e com objetivos administrativos ou outros que considerarmos necessários para manter e aprimorar nossos produtos e serviços.</p> 
                                <p>&nbsp;</p> 
                                <div id="sub7"><h3><u>Quais são as suas opções a respeito da coleta, uso e distribuição de suas informações</u></h3></div>
                                <p>Se, ao se registrar, você indicou que está interessado em receber ofertas ou informações de nossa Barbearia e de nossos parceiros, poderemos ocasionalmente enviar a você mensagens, via e-mail, sobre produtos e serviços que possam interessá-lo. Serão necessárias sua identificação e senha no cadastro no site da Barbearia para acessar suas informações cadastrais.</p> 
                                <p>Para alguns tipos de promoções, solicitaremos seu endereço de e-mail para atualizá-lo sobre a sua pontuação, suas participações e status nas premiações. Ao participar desse tipo de promoção, você automaticamente recebe mensagens relacionadas à promoção, a menos que escolha a opção sem e-mail oferecida por algumas delas. Ocasionalmente, essas mensagens de e-mail relacionadas à promoção podem incluir anúncios direcionados. Se uma determinada promoção não oferecer uma opção de não recebimento de e-mail, você poderá optar por não receber e-mails, mas, conseqüentemente você deixa de participar dessa promoção.</p> 
                                <p>Você também tem opções em relação aos cookies. Modificando suas preferências de navegação, você tem a opção de aceitar todos os cookies, ser notificado quando um cookie for enviado ou rejeitar todos os cookies. Se você optar por rejeitar todos os cookies, não conseguirá usar alguns dos serviços de nosso site que requerem registro para participação. Também não poderá usufruir de todos benefícios e facilidades de uma experiência personalizada na Internet.</p> 
                                <p>A Barbearia do Zé não comercializa informações de usuários para ninguém. Na ocasião da coleta ou transferência dos dados, nós o notificaremos, caso as informações a seu respeito sejam compartilhadas com terceiros. Além disso, você sempre terá a opção de não permitir a transferência desses dados. Se não desejar que eles sejam compartilhados, você poderá optar por não usar um determinado serviço ou não participar de certas promoções ou concursos.</p> 
                                <p>&nbsp;</p> 
                                <div id="sub8"><h3><u>Como a Barbearia do Zé trata suas informações relativas a finanças pessoais e saúde</u></h3></div>
                                <p>A Barbearia do Zé manterá de forma confidencial suas informações relativas a finanças e saúde e nunca comercializará tais informações.<br /> Sabermos qual seu perfil de utilização de serviços e recursos nos ajudará a oferecer um conteúdo personalizado. Porém, como ocorre com todas as informações que podem identificá-lo, não disponibilizamos essas informações para terceiros sem a sua permissão. Quaisquer estatísticas sobre usuários que possamos fornecer a prováveis anunciantes ou parceiros, com relação ao uso de produtos ou serviços financeiros de nosso são fornecidas somente em conjunto e não incluem nenhuma informação que permita identificação pessoal de qualquer usuário individual.</p> 
                                <p>Observe que existem locais na rede de Sites na Barbearia do Zé, nos quais você pode transmitir informações sobre cartão de crédito para concluir uma transação de compra ou com o objetivo de verificação. Sempre que solicitamos um número de cartão de crédito nós transmitimos esse número no formato criptografado. Utilizamos a criptografia padrão da indústria, SSL (Secure Sockets Layer, camada de soquetes de segurança).</p> 
                               <p>&nbsp;</p>
                               <div id="sub9"><h3><u>Precauções de segurança estabelecidas para sua proteção em caso de perda, má utilização ou alteração de suas informações</u></h3></div>
                                <p>As informações sobre a sua conta em nosso site são protegidas por senha, para que somente você tenha acesso a suas informações pessoais.<br /> Sua senha é secreta e recomendamos que não a revele a ninguém. A Barbearia do Zé não irá solicitar, em nenhuma hipótese, seja por e-mail ou telefone, sua senha pessoal. Lembre-se também de desconectar-se da sua conta e fechar a janela do seu navegador quando concluir sua navegação na Internet. Isso garante que outras pessoas não tenham acesso às suas informações pessoais e correspondências, caso você compartilhe um computador com alguém ou esteja usando um computador em local público como uma biblioteca ou local de acesso público à Internet.</p> 
                                <p>Nenhuma transmissão de dados na Internet é 100% segura. Sendo assim, embora o nosso site sempre faça o possível para proteger suas informações pessoais, não é possível garantir a segurança de todas as informações que você venha a nos fornecer. É uma decisão pessoal a utilização do serviço nessas condições.</p> 
                                <p>&nbsp;</p> 
                                <div id="sub10"><h3><u>O que mais você precisa saber sobre sua privacidade on-line</u></h3></div>
                                <p>Em última análise você é o responsável pela manutenção de sua privacidade e pelo sigilo de suas senhas e/ou informações pessoais.</p> 
                                <p>Sendo assim, recomendamos:</p> 
                                <p>
                                    • Informe-se: ao acessar a Internet sempre busque a política/declaração de privacidade do Site que você está acessando.<br/>
                                    • Diga a seus filhos para não falarem sobre sua senha com estranhos. Ensine-os a não fornecerem qualquer informação pessoal, incluindo seus nomes, e diga-lhes para nunca preencherem formulários on-line sem primeiro pedirem sua permissão.<br/> 
                                    • Use senhas complexas. Senhas simples são fáceis de serem quebradas. Use senhas complexas de combinações bastante longas de letras e números que necessitam combinações pouco usuais do teclado.<br/> 
                                    • Nunca forneça sua senha a ninguém on-line. Apenas forneça sua senha ao realizar compras pessoalmente. Se sua senha foi fornecida, mude-a imediatamente.<br/> 
                                    • Anúncios pessoais e salas de bate-papo são de domínio público. Qualquer informação que você torne disponível em salas de bate-papo, em fóruns ou em anúncios pessoais estará disponível qualquer pessoa com acesso a esses locais. Sugerimos que você evite incluir informações que permitam às pessoas encontrá-lo, tais como o número de seu telefone ou seu endereço para correspondência.<br/>
                                </p>  
                    </div>
        <div class="rodape">
                <div class="rodape-center">
                    <div class="ordem">
                    <a id="rodape-link" href="politicaDePrivacidade.jsp">Politica de privacidade</a>
                    <p id="rodape-texto">Projeto 1° semestre de 2020 - alunos uninove campos Vergueiro.</p>
                    </div>
                </div>
            </div>
    </body>
</html>
