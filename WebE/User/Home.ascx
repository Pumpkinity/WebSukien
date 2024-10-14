<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Home.ascx.cs" Inherits="WebE.User.Home" %>
<div class="Content">
        <div class="Timer">
            <h4>hurry up!</h4>
            <h1>The next music festival is coming up.</h1>
        <div id="countdown">
            <ul>
              <li><span id="days"></span>days</li>
              <li><span id="hours"></span>Hours</li>
              <li><span id="minutes"></span>Minutes</li>
              <li><span id="seconds"></span>Seconds</li>
            </ul>
        </div>
        <h4><i class="fa-solid fa-location-dot"></i> 84 St.Mau Than, Ninh Kieu, Can Tho, Viet Nam.</h4>
        <div class="btn-holder">
            <button class="btn btn-1 hover-filled-opacity">
                <a href="Ticketpage.aspx"><span>Buy Ticket</span></a>
              </button>
        </div>

        </div>
        <div class="Categories">
            <% for(int i=0;i<listCa.Count;i++)
               {
                    %>
            
         <%} %>
            <div id="box1"><h1>Music Fest</h1><div><a href='<%="Detailpage.aspx?IdCate="+listCa[0].IdCate %>'><%= listCa[0].Viewdetail%></a></div></div>
            <div id="box2"><h1>Wedding</h1><div><a href='<%="Detailpage.aspx?IdCate="+listCa[1].IdCate %>'><%= listCa[1].Viewdetail%></a></div></div>
            <div id="box3"><h1>BirthDay</h1><div><a href='<%="Detailpage.aspx?IdCate="+listCa[2].IdCate %>'><%= listCa[2].Viewdetail%></a></div></div>
            <div id="box4"><h1>Outside</h1><div><a href='<%="Detailpage.aspx?IdCate="+listCa[3].IdCate %>'><%= listCa[3].Viewdetail%></a></div></div>
    </div>
    <p style="font-size: 50px;text-align: center;background-color: black;color: white;">ABOUT US</p>
        <div class="Container">
        <div id="Detail-left">
            <div id="Board-left" style="background-image: url(Other/Pic/a.jpg);"></div>
            <h1>WE CAN HELP YOU</h1>
            <p>
            <span style="color: black;font-size: 80px;">W</span>hatever you need from your event, our experience, creative ideas and innovative approach ensure the results will be sensational.
            </p>
        </div>
        <div id="Detail-right">
             <div id="Board-right" style="background-image: url(Other/Pic/q.jpg);"></div>
             <h1>WHAT WE DO</h1>
             <p>Ideas are the soul of the event, with new and interesting ideas
                we plan and realize your ideas.</p>
        </div>
        <div id="Detail-left1">
            <div id="Board-left1" style="background-image: url(Other/Pic/r.jpg);"></div>
            <h1>ENJOY OUR SERVICE</h1>
            <p>Engaging events can inspire your people to great things. We know how to motivate minds and launch messages for ultimate impact.
            </p>
        </div>
        </div>
        <div class="Organ">
            <h1>WHAT YOU NEED</h1>
            <div class="Card">
                <div>
                <p>BirthDay<br>Happy anniversary<br>Outdoor Party</p>
                <br>
                <p style="text-align:start;">-Food & Beverage<br>-Sound Music<br>-Decorate<br>-Birthday Cake</p>
                <br>
                <p>Price:10.000.000+ VND</p>
                </div>
                <div>
                <p>Wedding</p>
                <br>
                <p  style="text-align:start">-Food & Beverage<br>-Decorate<br>-Bridegroom Suit<br>-Wedding Cake<br>-Stage<br>-Music Sound<br>-MC</p>.
                <br><p>Price:70.000.000+ VND</p>
                </div>
                <div>
                <p>Music Fest <br> Music Show<br>Concert</p>
                <br>
                <p>-Stage<br>-Ticket<br>-Professional Staff<br>-As your request</p>
                <br>
                <p>Price:200.000.000+ VND</p>
                </div>
            </div>
        </div>
        <div class="Thanks">
            <div></div>
            <h1>THANK YOU <br>FOR <br>YOUR ATTENTION</h1>
        </div>
    </div>