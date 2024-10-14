<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Contact.ascx.cs" Inherits="WebE.User.Contact" %>
<div class="Content">
<div class="topsection">
        <section>
            <i class="fa-solid fa-mobile" style="font-size: 40px;color:#996515"></i>
            <h1>Mobile</h1>
            <p>0325 464 642</p>
            <p>0985 432 154</p>
        </section>
        <section>
            <i class="fa-solid fa-location-dot"style="font-size: 40px;color:#996515"></i>
            <h1>Address</h1>
            <p> 209 St.30/4, Xuan Khanh, Ninh Kieu, Can Tho, Viet Nam.</p>
        </section>
        <section>
            <i class="fa-solid fa-envelope" style="font-size: 40px;color:#996515"></i>
            <h1>Mail</h1>
            <p>khoaa1003@gmail.com</p>
            <p>quanap12012@gmail.com</p>
        </section>
    </div>
    <div class="Form">
        <h1 style="text-align: center;font-size: 4rem;">CONTACT US</h1>
    <form >
        <div class="inputwide">
        <input type="text" required />
        <label> Name </label>
        </div>
        <div class="inputcol">
        <div class="inputrow">
        <input type="text" required />
        <label> Email </label>
        </div>
        <div class="inputrow">
        <input type="text" required />
        <label> Phone Numer </label>
        </div>
        </div>
        <label style="font-size:30px"> Choose event you want</label>
        <div class="inputwide">
        <input list="browsers" name="browser" id="browser">
        <datalist id="browsers">
              <option value="Birthday">
              <option value="Wedding">
              <option value="Music Fest">
        </datalist>
        </div>
        <div class="textwide">
        <textarea style="height:200px"></textarea>
        <label> Messages </label>
        </div>
        <input class="sub" type="submit" value="Submit">
      </form>
    </div>
    <div style="width: 650px;margin: auto;padding-top: 20px;">
    </div>
</div>
<script>
    const SubBtn = document.getElementsByClassName('sub');
    SubBtn.addEventListener('click', purchaseBtnClicked)

    function SubBtnClicked() {
        alert('Thank you for your Submit.WE WILL CALL YOU LATER FOR YOUR BOOKING EVENT!!!!!!!!!');
    }
</script>