<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Tickets.ascx.cs" Inherits="WebE.User.Tickets" %>
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

        </div>
                                      <p style="background: black;color: white;text-align: center;font-size: 50px;">UPCOMING EVENT</p>
                      <% for(int i=0;i<tk.Count;i++)
               {
                    %>
                    <div class="ticket" data-aos="fade-up" data-aos-duration="1500">
                      <div class="stub">
                        <div class="top">
                          <span class="admit">Quantity</span>
                          <span class="line"></span>
                          <span class="num">
                            5:00 - 12:00
                            <span>PM</span>
                          </span>
                        </div>
                        <div style="font-family: 'Libre Barcode 39';display: inline;font-size: 50px; color: black;transform: rotate(90deg);position: absolute;left: 250px;top: 100px;">
                          Allowed
                        </div>
                        <div class="number"><%=tk[i].Quantity %></div>
                        <div class="invite">
                          <%=tk[i].Header %>
                        </div>
                      </div>
                      <div class="check">
                          <img class="product-img" src="Ticket/<%=tk[i].Img %>">
                        <div class="big">
                         <%=tk[i].Header %>
                        </div>
                        <div class="number">#<%=tk[i].IdTicket %></div>
                        <div class="book" ><a href='<%="Cartpage.aspx?IdTicket="+tk[i].IdTicket%>'>BOOK NOW</a> </div>
                        <div class="info">
                          <section>
                            <div class="title">Date</div>
                            <div><%=tk[i].Date %></div>
                          </section>
                          <section>
                            <div class="title">Location</div>
                            <div><%=tk[i].Location %></div>
                          </section>
                          <section>
                            <div class="title">Price</div>
                            <div class="product-price" ><%=tk[i].Price%></div>
                          </section>
                        </div>
                        <div class="qr"><img src="Ticket/qr-code_ticketcheck.vm.jpg"/></div>
                      </div>
                    </div>
                               <%} %>
                      <p style="font-size: 50px;text-align: center;background-color: black;color: white;">NEWS</p>
    <div class="news">
        <div class="news-detail">
            <img src="Other/news2.jpg" style="width:100%;border-radius: 13px;">
            <a href="https://vtv.vn/van-hoa-giai-tri/dan-sao-khung-do-bo-fwd-music-tour-can-tho-20221018134108243.htm" target="_blank">
                Dàn sao khủng đổ bộ ...
            </a>
            <p>Đây là lần đầu tiên sự kiện âm nhạc hoành tráng này được tổ chức tại miền Tây Nam Bộ với sự... </p>
        </div>
        <div class="news-detail">
            <img src="Other/News.jpg" style="width:100%;border-radius: 13px;">
            <a href="https://www.fwd.com.vn/vi/about-us/press/le-hoi-am-nhac-fwd/" target="_blank">
                Lễ hội EDM miền Bắc dậy sóng với sự trở lại của Pepsi...
            </a>
            <p>Kỳ lễ hội thứ 9 hứa hẹn sẽ biến Ravolution Music Festival trở thành điểm đến hấp dẫn mới cho Ravers Of Ravolution ở khu vực và quốc tế. Từ Nam ra B...</p>
        </div>
        <div class="news-detail">
            <img src="Other/news3.jpg" style="width:100%;border-radius: 13px;">
            <a href="https://www.fwd.com.vn/vi/about-us/press/le-hoi-am-nhac-fwd/" target="_blank">
                “YÊN” CONCERT: CHÂN THÀNH, NHẸ NHÀNG NHƯNG...
            </a>
            <p>Ngày cuối tuần vừa qua của tôi đã trở nên đặc biệt hơn nhiều vì những ánh đèn lung linh, ngôi nhà...</p>
        </div>
        <div class="news-detail">
            <img src="Other/news4.jpg" style="width:100%;border-radius: 13px;">
            <a href="https://www.fwd.com.vn/vi/about-us/press/le-hoi-am-nhac-fwd/" target="_blank">
                Met Gala 2023 - Bữa tiệc thời trang xa hoa tưởng...
            </a>
            <p>Met Gala là sự kiện Gala thường niên nhằm gây quỹ cho Viện trang phục của Bảo tàng Nghệ thuật Metropolitan ở ...</p>
        </div>
    </div>
      </div>