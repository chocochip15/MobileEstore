 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Footer</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<style> 
/* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2; 
      padding: 25px;
    }
    </style>
<body>
 <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-2">
                        <h6>Copyright &copy; 2016 Niit Tranning</h6>
                        
                       
    
    <h2 class="text-center"><a href="#myModal" role="button" class="btn btn-primary btn-sm" data-toggle="modal">Contact Us</a></h2>
    

<!--Contact Us Button Using Bootstrap Modal -->
<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">We'd Love to Hear From You</h3>
      </div>
      <div class="modal-body">
        <form class="form-horizontal col-sm-12">
          <div class="form-group"><label>Name</label><input class="form-control required" placeholder="Your name" data-placement="top" data-trigger="manual" data-content="Must be at least 3 characters long, and must only contain letters." type="text"></div>
          <div class="form-group"><label>Message</label><textarea class="form-control" placeholder="Your message here.." data-placement="top" data-trigger="manual"></textarea></div>
          <div class="form-group"><label>E-Mail</label><input class="form-control email" placeholder="email@you.com (so that we can contact you)" data-placement="top" data-trigger="manual" data-content="Must be a valid e-mail address (user@gmail.com)" type="text"></div>
          <div class="form-group"><label>Phone</label><input class="form-control phone" placeholder="999-999-9999" data-placement="top" data-trigger="manual" data-content="Must be a valid 10 digit phone number (999-999-9999)" type="text"></div>
          <div class="form-group"><button type="submit" class="btn btn-success pull-right">Send It!</button> <p class="help-block pull-left text-danger hide" id="form-error">&nbsp; The form is not valid. </p></div>
        </form>
      </div>
      <div class="modal-footer">
        <button  class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
      </div>
    </div>
  </div>
</div>
       
                        
                    </div>  
                    <div class="col-sm-4">
                        <h6>About Us</h6>
                        <p>An E-commerce site for selling mobile devices and accessories.</p>
                    </div>
                    <div class="col-sm-2">
                        <h6>Follow Us on</h6>
                        <ul class="list-unstyled">
                        <li>Facebook<a href="www.facebook.com" class="fa fa-facebook-official"></a></li>
                        <li>Twitter<a href="www.twitter.com" class="fa fa-twitter-square"></a></li>
                        <li>Google+<a href="https://plus.google.com/" class="fa fa-google-plus-square"></a></li>
                        </ul> 
                    </div>
                    <div class="col-sm-4">
                        <h5>Diffrent Mobile Devices For you with our <span class="glyphicon glyphicon-heart"></span></h5>
                        
                    </div>
                   
                </div>
                
            </div>
        </footer>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>