<%-- 
    Document   : cancella_modifica_articolo_tag_menuModifica
    Created on : 4-mag-2012, 17.26.24
    Author     : sgh
--%>
<%@include file="/WEB-INF/jspf/preamboloAutenticazione.jspf" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
        
        <jsp:useBean id="cliente" scope="session" class="database.Cliente" />
        
       
    </head>    
    <body>   
       <jsp:setProperty name="cliente" property="*" />    
       <%--<jsp:setProperty name="cliente" property="codice_fiscale" param="codice_fiscale" />--%>
       
       <div id="banner"></div>
       <div id="content">
           
           <form action="" method="post">
               
                   <h1>MODIFICA I DATI DEL PRODOTTO</h1>
                     <fieldset>
                            <div>
                                <label > Partita Iva: </label>     
                                <label class ='txt'><jsp:getProperty name="cliente" property="codice_fiscale"/></label>
                            </div>
                            <div>
                                
                                <label for='nome1'> Nome1:</label>
                                <input type='text' name='nome1' class ='txt' value='<jsp:getProperty name="cliente" property="nome1"/>'/>
                            </div>
                            <div>
                                <label for='nome2'> Nome2:</label>
                                <input type='text' name='nome2' class ='txt' value='<jsp:getProperty name="cliente" property="nome2"/>'/>
                            </div> 
                            <div>
                                <label for='nome3'> Nome3:</label>
                                <input type='text' name='nome3' class ='txt' value='<jsp:getProperty name="cliente" property="nome3"/>'/>
                            </div>
                            
                             <div>
                                <label for='indirizzo'> Indirizzo:</label>
                                <input type='text' name='indirizzo' class ='txt' value='<jsp:getProperty name="cliente" property="indirizzo"/>'/>
                            </div>
                            <div>
                                <label for='citta'> Citta:</label>
                                <input type='text' name='citta' class ='txt' value='<jsp:getProperty name="cliente" property="citta"/>'/>
                            </div>
                            <div>
                                <label for='provincia'> Provincia:</label>
                                <input type='text' name='provincia' class ='txt' value='<jsp:getProperty name="cliente" property="provincia"/>'/>
                            </div>
                            <div>
                                <label for='telefono'> Telefono:</label>
                                <input type='text' name='telefono' class ='txt' value='<jsp:getProperty name="cliente" property="telefono"/>'/>
                            </div>
                            <div>
                                <label for='fax'> Fax:</label>
                                <input type='text' name='fax' class ='txt' value='<jsp:getProperty name="cliente" property="fax"/>'/>
                            </div>
                            <div>
                                <label for='email'> Email:</label>
                                <input type='text' name='email' class ='txt' value='<jsp:getProperty name="cliente" property="email"/>'/>
                            </div>
                            <div>
                                <label for='cap'> CAP:</label>
                                <input type='text' name='cap' class ='txt' value='<jsp:getProperty name="cliente" property="cap"/>'/>
                            </div>
                            
                            
                            <div>
                                
                                <input type="submit" id="idButton" name="modificaDati" value="Modifica dati" class="btn" />
                            </div>
                     </fieldset>
                     <% cliente.modificaDati(); %>       
                     <c:if test="${param.modificaDati!=null}">
                          <c:redirect url="cancella_modifica_cliente_tag.jsp"/>
                     </c:if>
                  
           </form>   
           <p><a href="cancella_modifica_cliente_tag.jsp"> Torna alla tabella </a> 
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
