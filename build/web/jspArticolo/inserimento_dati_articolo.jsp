<%-- 
    Document   : inserimento_dati_cliente
    Created on : 27-dic-2011, 11.58.18
    Author     : sgh
--%>
<%@include file="/WEB-INF/jspf/preamboloAutenticazione.jspf" %>
<%@page errorPage = "../jspErrore/errore.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="../CSS/form.css" />
        <link rel="stylesheet" type="text/css" href="../CSS/layout.css" />
        <link rel="stylesheet" type="text/css" href="../CSS/tabella.css" /> 
        
        <jsp:useBean id="articolo" scope="session" class="database.Articolo" />
        
       
    </head>    
    <body>
       <%articolo.resetVariabili(); %> 
       <jsp:setProperty name="articolo" property="*" />    
       <jsp:setProperty name="articolo" property="id" param="id" />
       <jsp:setProperty name="articolo" property="azienda_produttrice" param="azienda_produttrice" />
       <div id="banner"></div>
       <div id="content">
               <form action="inserimento_dati_articolo.jsp" method="post"> 
                   <h1>REGISTRAZIONE DATI PRODOTTO</h1>
                     <fieldset>
                         
                            <div>
                                <label for="id"> Codice del prodotto:</label>
                                <input type="text" name="id" class ="txt"/>
                            </div>
                            <div>
                                <label for="azienda_produttrice"> Azienda che lo produce:</label>
                                <input type="text" name="azienda_produttrice" class ="txt"/>
                            </div>
                             <div>
                                <label for="nome_prodotto"> Nome del prodotto:</label>
                                <input type="text" name="nome_prodotto" class ="txt"/>
                            </div>
                            
                            
                     
                            <div>
                                <label for="informazione_prodotto"> Informazioni sul prodotto:</label>
                                <input type="text" name="informazione_prodotto" class ="txt" />
                            </div>
                      
                            <div>
                                <label for="costo"> Costo in euro:</label>
                                <input type="text" name="costo" class ="txt"/>
                            </div>
                            <div>
                                <input type="submit" name="Invia" value="Invia" class="btn" />
                            </div>
                         
                            <c:if test="${param.Invia!=null}">
                                <% articolo.inserisciDati(); %>
                                <% articolo.resetVariabili();%>
                                <c:redirect url="cancella_modifica_articolo_tag_1.jsp"/>                                     
                            </c:if>
                     </fieldset>
                    </form>
               <p><a href="cancella_modifica_articolo_tag_1.jsp"> Accedi alla pagina per controllare i dati di un articolo </a> 
      </div>
      <div id="navigation">
         <li class="titolo">CLIENTE</li>
          <li><a href="../jspCliente/inserimento_dati_cliente.jsp">Inserimento dati cliente</a></li>
          <li><a href="../jspCliente/cancella_modifica_cliente_tag.jsp">cancella/modifica dati cliente</a></li>           
          <li class="titolo">ARTICOLO</li>
              <li><a href="../jspArticolo/inserimento_dati_articolo.jsp">Inserimento dati articolo</a></li>
              <li><a href="../jspArticolo/cancella_modifica_articolo_tag_1.jsp">cancella/modifica dati articolo</a></li>
          <li class="titolo">AZIENDA</li>    
              <li><a href="../jspAzienda/inserimento_dati_azienda.jsp">Inserimento dati azienda</a></li>
              <li><a href="../jspAzienda/cancella_modifica_azienda_tag.jsp">cancella/modifica dati azienda</a></li>
          <li class="titolo">ORDINE</li>   
              <li><a href="../jspOrdine1/crea_ordine.jsp">Effettua ordine</a></li>
              <li><a href="../jspOrdine1/visualizza_ordini.jsp">Visualizza ordini</a></li>
      </div>       
           
               
    </body>
</html>
