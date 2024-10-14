<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Detail.ascx.cs" Inherits="WebE.User.Detail" %>
<div class="Content">
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
        <div class="slider">
            <div class="item">
                <video   width="520px" height="370px" controls>
                    <source src="Other/Videos/short1.mp4" type="video/mp4">
                </video>
            </div>
            <div class="item">
                <video width="520px" height="370px" controls>
                    <source src="Other/Videos/short2.mp4" type="video/mp4">
                </video>
            </div>
            <div class="item">
                <video width="520px" height="370px" controls>
                    <source src="Other/Videos/short3.mp4" type="video/mp4">
                </video>
            </div>
            <div class="item">
                <video width="520px" height="370px" controls>
                    <source src="Other/Videos/short4.mp4" type="video/mp4">
                </video>
            </div>
            <div class="item">
                <video width="520px" height="370px" controls>
                    <source src="Other/Videos/short5.mp4" type="video/mp4">
                </video>
            </div>
            <div class="item">
                <video width="520px" height="370px" controls>
                    <source src="Other/Videos/short6.mp4" type="video/mp4">
                </video>
            </div>
            <div class="item">
                <video width="520px" height="370px" controls>
                    <source src="Other/Videos/short7.mp4" type="video/mp4">
                </video>
            </div>
            <div class="item">
                <video width="520px" height="370px" controls>
                    <source src="Other/Videos/short8.mp4" type="video/mp4">
                </video>
            </div>
            <button id="next">></button>
            <button id="prev"><</button>
        </div>
        <p style="font-size: xx-large;background: black;text-align: center;color: white;">SEE WHAT WE DO</p>
        <div class="Container">
            <% foreach(var item in listdt)
           { %>
        <div id="Detail-left">
            <div id="Board-left" style="background-image: url(Other/Detail/<%=item.Img%>);"></div>
            <h1><%=item.Tt %></h1>
            <p>
            <%=item.Dt1 %>
            </p>
        </div>
        <div id="Detail-right">
             <div id="Board-right" style="background-image: url(Other/Detail/<%=item.Img2%>);"></div>
             <h1><%=item.Tt2 %></h1>
             <p>
            <%=item.Dt2 %>.
            </p>
        </div>
        <div id="Detail-left1">
            <div id="Board-left1" style="background-image: url(Other/Detail/<%=item.Img3%>);"></div>
            <h1><%=item.Tt3 %></h1>
            <p>
           <%=item.Dt3 %>
            </p>
        </div>
            <% } %>
        </div>
        <div class="Thanks">
            <div></div>
            <h1>LIGHT <br>YOUR NIGHT</h1>
            <div><a href="contactpage.aspx">Talk to us</a></div>
        </div>
    </div>