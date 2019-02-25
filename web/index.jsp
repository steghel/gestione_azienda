<%-- 
    Document   : index
    Created on : 27-dic-2011, 11.57.15
    Author     : sgh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="database.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US">


<head>
    
    <meta http-equiv="content-type"
        content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="CSS/layout.css" title="default" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>WebEsempioAutenticazioneBean - Pagina per effettuare il login</title>
    <link rel="stylesheet" type="text/css" href="CSS/form.css" />
    <link rel="stylesheet" type="text/css" href="CSS/layout.css" />
    <link rel="stylesheet" type="text/css" href="CSS/tabella.css" /> 
    <link rel="javascriptsheet" type="text/javascript" href="javaScript/javascript.js" />
    <style type="text/css">
           
            .etich{
                font: bold 1.0em Arial, Helvetica, sans-serif;
            }
           
          
        </style>
</head>
<body>
    <div id="banner"></div>
    <div id="content">

        
        <fieldset>
            <legend>Modulo di Login</legend>
            <div class="etich">Inserire Nome Account & Password (pippo,pippo): </div>
        
            <FORM name=form_login method=POST action="enter.jsp">
                <TABLE  WIDTH="80%">
                        <TR>
                            <TD WIDTH="50%" align="right">
                                Nome Account:</TD>
                            <TD WIDTH="50%" align="left">
                                <INPUT name="userID" MAXLENGTH="12" >
                            </TD>
                        </TR>
                        <TR>
                            <TD align="right">
                                Password:</TD>
                            <TD align="left">
                                <INPUT TYPE="password" name="password" MAXLENGTH="12" >
                            </TD>
                        <TR>
                            <TD></TD>
                            <TD align="left">
                                <INPUT id="b_submit" name="cmdSubmit" TYPE="submit" VALUE="Accedi">
                                <INPUT id="b_reset" name="cmdReset" TYPE="reset" VALUE="Cancella">
                        </TR>
                </TABLE>
                    
            </FORM>
        
        </fieldset>
        
    
    </div>
    <div id="navigation">
        <li class="titolo">CLIENTE</li>
          <li><a href="jspCliente/inserimento_dati_cliente.jsp">Inserimento dati cliente</a></li>
          <li><a href="jspCliente/cancella_modifica_cliente_tag.jsp">cancella/modifica dati cliente</a></li>           
          <li class="titolo">ARTICOLO</li>
              <li><a href="jspArticolo/inserimento_dati_articolo.jsp">Inserimento dati articolo</a></li>
              <li><a href="jspArticolo/cancella_modifica_articolo_tag_1.jsp">cancella/modifica dati articolo</a></li>
          <li class="titolo">AZIENDA</li>    
              <li><a href="jspAzienda/inserimento_dati_azienda.jsp">Inserimento dati azienda</a></li>
              <li><a href="jspAzienda/cancella_modifica_azienda_tag.jsp">cancella/modifica dati azienda</a></li>
          <li class="titolo">ORDINE</li>   
              <li><a href="jspOrdine1/crea_ordine.jsp">Effettua ordine</a></li>
              <li><a href="jspOrdine1/visualizza_ordini.jsp">Visualizza ordini</a></li>
    </div>
</body>
</html>   
