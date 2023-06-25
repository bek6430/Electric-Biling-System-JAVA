<%@page import="com.servlet.registration.Customer"%>
<% Customer cus = (Customer) session.getAttribute("user");%>
<section class="nav">
    <div class="wrapp">
        <div class="logo">
            <h1><%= cus.fullName%></h1>
        </div>
        <div style="display: flex">
            <div class="search-container">
                <% if (request.getAttribute("hasSearch") != null && (boolean) request.getAttribute("hasSearch") != false) { %>
                <form action="" method="get">
                    <div class="eski">
                        <label for="search"></label>
                        <input type="text" placeholder="Month" name="search" id="search" value="${param["search"]}" />
                               <button type="submit">
                        <i class="zmdi zmdi-search"></i>
                        </button>
                    </div>
                </form>
                <% }%>
            </div>
            <div class="nav-links">
                <label for="displayer"
                       ><font size="7px"><i class="zmdi zmdi-menu"></i></font
                    ></label>
                <input type="checkbox" id="displayer" />
                <div class="nav-container" >
                    <ul >
                        <form action="profile" method="post">
                            <li><button type="submit" class="nav-button">Profile</button></li>
                        </form>
                        <form action="viewBill" method="post">
                            <li><button type="submit" class="nav-button">View bill</button></li>
                        </form>
                        <form action="paymentHistoryUser" method="post">
                            <li><button type="submit" class="nav-button">Payment history</button></li>
                        </form>
                        <form action="index.jsp" method="post">
                            <li><button type="submit" class="nav-button">Log out</button></li>
                        </form>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>