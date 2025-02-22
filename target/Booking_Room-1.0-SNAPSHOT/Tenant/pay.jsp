<%-- 
    Document   : pay
    Created on : 7 Oct 2024, 10:39:20 pm
    Author     : win 10
--%>

    <%@page import="dbpack.DbManager"%>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
            <!DOCTYPE html>
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Payment page</title>
<script
  src="https://code.jquery.com/jquery-3.7.1.min.js"
  integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
  crossorigin="anonymous"></script>
            </head>

            <body>



                <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
                <script>
                    let or = <%=request.getAttribute("order")%>;
<%String id = request.getParameter("id").toString();%>
let id="<%=id%>";
                    var options = {
                        "key": "rzp_test_eaYPsyGzbeur7p", // Enter the Key ID generated from the Dashboard
                        "amount": or.amount, // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
                        "currency": "INR",
                        "name": "Book MY Room",
                        "image": "https://www.google.com/url?sa=i&url=https%3A%2F%2Fstock.adobe.com%2Fsearch%3Fk%3Dbmr&psig=AOvVaw07gK4qGeUALnbRsiSU-3nk&ust=1728474114921000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCJjx2P3Z_ogDFQAAAAAdAAAAABAE",

                        "order_id": or.id, //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
                        "handler": function(response) {
                            console.log(response.razorpay_payment_id);
                            console.log(response.razorpay_order_id);
                            console.log(response.razorpay_signature);
//redirect value in another page to store a data in data base

                        $.ajax({
                            url: "up_or.jsp",
                            data:
                                "rezid="+response.razorpay_payment_id+
                                "&id="+id+
                                "&orid="+response.razorpay_order_id,
                            method: "post",
                           
                            error: function (error)
                            {
                             console.log(error);
                             alert('your payment pending ! please contact us');
                            },

                        });

                        window.location.href = 'Tenant/booking.jsp';
                        },
                        "prefill": {
                            "name": "",

                            "contact": ""
                        },
                        "notes": {
                            "address": "Booking room office"
                        },
                        "theme": {
                            "color": "#3399cc"
                        }
                    };
                    var rzp1 = new Razorpay(options);
                    rzp1.on('payment.failed', function(response) {
                        console.log(response.error.code);
                        console.log(response.error.description);
                        console.log(response.error.source);
                        console.log(response.error.step);
                        console.log(response.error.reason);
                        console.log(response.error.metadata.order_id);
                        console.log(response.error.metadata.payment_id);
                        alert('payment failed!!');
                        window.location.href = 'Tenant/booking.jsp';
                    });
                    rzp1.open();
                </script>




                <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
            </body>

            </html>