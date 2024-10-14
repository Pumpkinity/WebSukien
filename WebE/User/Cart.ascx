<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cart.ascx.cs" Inherits="WebE.User.Cart" %>
 <% { %>
<div class="cart-modal-overlay">
    <div class="cart-modal">
        <h1 class="cart-is-empty">Cart is empty</h1>
                <div class="product-row">
          <div class="cart-stub">
          <div class="cart-number" style="font-size:60px;">#<%=isp.IdTicket %></div>
          </div>
          <div class="cart-check"  style="background-image: url(Ticket/<%=isp.Img%>);">
            </div>
        <div style="display:flex;position:absolute;right:0;">
        <input class="product-quantity" type="number" min="1" value="1" style="padding:0" />
        <div class="cart-price"><%=isp.Price %></div>
        <button class="remove-btn">Remove</button>
        </div>
          </div>
          <div class="cart-big">
        <%=isp.Header %>
    </div>
        <div class="product-rows">       
             <div class="total">
          <h1 class="cart-total">TOTAL</h1>
            <span class="total-price"><%=isp.Price %></span>
                 <div class="checkout" style="width:300px;"> 
                     <input type="email"placeholder="Email" id="email" />
                     <input type="text" placeholder="Number phone" maxlength="11" />
                     <input type="text" placeholder="Card Number" maxlength="12" />
                 </div>
                 <div class="payment">
            <div class="paypal">
    <input type="radio" name="size"/>
    <label><span style="color:#00457C;">Pay</span><span style="color:#0079C1 ;">Pal</span></label>
    <div class="credit">
    <input type="radio" name="size"/>
    <label>Debit or Credit card</label></div></div>
              <button class="purchase-btn" onclick="sendEmail(); return false;">PURCHASE</button>          
                     <!--SAU KHI ĐĂNG NHẬP MAIL SẼ GỬI VỀ THƯ RÁC. -->
        </div>
        </div>
      </div>
</div>
<% } %>
<script>
    const removeBtn = document.getElementsByClassName('remove-btn');
    for (var i = 0; i < removeBtn.length; i++) {
        button = removeBtn[i]
        button.addEventListener('click', removeItem)
    }

    function removeItem (event) {
        btnClicked = event.target
        btnClicked.parentElement.parentElement.remove()
        updateCartPrice()
    }
    const price =document.getElementsByClassName("cart-price");
    const name =document.getElementsByClassName("cart-big");
    const id = document.getElementsByClassName("cart-number");
    function sendEmail(){
        Email.send({
            Host : "smtp.elasticemail.com",
            Username : "khoaa1@gmail.com",
            Password : "1AABBF70B405CE5D340C36EABFDD74D660CB",
            To : document.getElementById("email").value,
            From : "khoaa1003@gmail.com",
            Subject : "OURCHASING PROCESS",
            Body : "THANKS FOR YOUR PURCHASE!!! Admited:201202"
        }).then(
message => alert(message)
);
    }
    
</script>
    <script src="https://smtpjs.com/v3/smtp.js">
    </script>