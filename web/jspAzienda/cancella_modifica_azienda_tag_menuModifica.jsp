<%-- 
    Document   : cancella_modifica_articolo_tag_menuModifica
    Created on : 4-mag-2012, 17.26.24
    Author     : sgh
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        
        <jsp:useBean id="azienda" scope="session" class="database.Azienda" />
        
       
    </head>    
    <body>   
       <jsp:setProperty name="azienda" property="*" />    
       <jsp:setProperty name="azienda" property="partita_iva" param="partita_iva" />
       
       <div id="banner"></div>
       <div id="content">
           
           <form action="" method="post"> 
                   <h1>MODIFICA I DATI DEL PRODOTTO</h1>
                     <fieldset>
                            <div>
                                <label > Partita Iva: </label>     
                                <label class ='txt'><jsp:getProperty name="azienda" property="partita_iva"/></label>
                            </div>
                            <div>
                                
                                <label for='nome1'> Nome1:</label>
                                <input type='text' name='nome1' class ='txt' value='<jsp:getProperty name="azienda" property="nome1"/>'/>
                            </div>
                            <div>
                                <label for='nome2'> Nome2:</label>
                                <input type='text' name='nome2' class ='txt' value='<jsp:getProperty name="azienda" property="nome2"/>'/>
                            </div> 
                            <div>
                                <label for='nome3'> Nome3:</label>
                                <input type='text' name='nome3' class ='txt' value='<jsp:getProperty name="azienda" property="nome3"/>'/>
                            </div>
                            
                             <div>
                                <label for='indirizzo'> Indirizzo:</label>
                                <input type='text' name='indirizzo' class ='txt' value='<jsp:getProperty name="azienda" property="indirizzo"/>'/>
                            </div>
                            <div>
                                <label for='citta'> Citta:</label>
                                <input type='text' name='citta' class ='txt' value='<jsp:getProperty name="azienda" property="citta"/>'/>
                            </div>
                            <div>
                                <label for='provincia'> Provincia:</label>
                                <input type='text' name='provincia' class ='txt' value='<jsp:getProperty name="azienda" property="provincia"/>'/>
                            </div>
                            <div>
                                <label for='telefono'> Telefono:</label>
                                <input type='text' name='telefono' class ='txt' value='<jsp:getProperty name="azienda" property="telefono"/>'/>
                            </div>
                            <div>
                                <label for='fax'> Fax:</label>
                                <input type='text' name='fax' class ='txt' value='<jsp:getProperty name="azienda" property="fax"/>'/>
                            </div>
                            <div>
                                <label for='email'> Email:</label>
                                <input type='text' name='email' class ='txt' value='<jsp:getProperty name="azienda" property="email"/>'/>
                            </div>
                            <div>
                                <label for='cap'> CAP:</label>
                                <input type='text' name='cap' class ='txt' value='<jsp:getProperty name="azienda" property="cap"/>'/>
                            </div>
                            <div>
                                <label for='tipo_di_azienda'> Tipo di azienda:</label>
                                <input type='text' name='tipo_di_azienda' class ='txt' value='<jsp:getProperty name="azienda" property="tipo_di_azienda"/>'/>
                            </div>
                            
                            <div>
                                
                                <input type="submit" id="idButton" name="modificaDati" value="Modifica dati" class="btn" />
                            </div>
                     </fieldset>
                     <% azienda.modificaDati(); %>
                  <%--   <% azienda.resetVariabili(); %>  --%>
                     <c:if test="${param.modificaDati!=null}">
                          <c:redirect url="cancella_modifica_azienda_tag.jsp"/>
                          
                     </c:if>
           </form>   
           <p><a href="cancella_modifica_azienda_tag.jsp"> Torna alla tabella </a> 
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

</html>
