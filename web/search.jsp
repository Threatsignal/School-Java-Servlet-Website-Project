<jsp:include page="headerIncludes.jsp" >
    <jsp:param name="title" value="Search" />
</jsp:include>

    <div class="container-fluid"> 

            <div class="text-center" style="background-color:#BE1418; border-top: #960C0F solid 5px;padding: 0 0 50px 0;width:100%;margin-top: 100px"> 

            </div>

            <div class="text-center" style="background-color:#BE1418;width:100%;border-bottom: #960C0F solid 5px;"> 
                <div style="margin: 0 auto;width:1000px">
                    <br style="clear: left;" />

                    <% if (request.getParameter("q") != null){ %>
                    
                    <jsp:useBean id="playerValues" type="beans.PlayerValues" scope="request" />
                    <h1> Players Name ... <jsp:getProperty name="playerValues" property="playerName" /></h1>
                    <h1> Players Picture ...<jsp:getProperty name="playerValues" property="playerPicture" /></h1>
                    <h1> Players Position ...<jsp:getProperty name="playerValues" property="playerPosition" /></h1>
                    <h1> Players Club ...<jsp:getProperty name="playerValues" property="playerClub" /></h1>
                    <h1> Players Nation ...<jsp:getProperty name="playerValues" property="playerNation" /></h1>
                    
                    <% }else{%>

                    <form id="search" action="Search" method="GET" enctype="text/plain">
                        <input type="text" name="q" id="q" size="20" />
                        <input type="submit"  />
                    </form>
                    
                    <%}%>
                    
                    <br /><br />
                    <br style="clear: left;" />
                    
                </div>
            </div>
            <div class="text-center" style="background-color:#E8E8E8; border-bottom: #BABABA solid 5px;padding: 70px 0 10px 0;"> 
                	
            </div>
            
    </div>



<jsp:include page="footerIncludes.jsp"/>
