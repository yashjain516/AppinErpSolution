<%-- 
    Document   : index
    Created on : Sep 22, 2018, 11:15:38 PM
    Author     : YASH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Atlas - Add Student</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
        <!-- Custom Theme files -->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
        <!--js-->
        <script src="js/jquery-2.1.1.min.js"></script> 
        <!--icons-css-->
        <link href="css/font-awesome.css" rel="stylesheet"> 
        <!--Google Fonts-->
        <link href='//fonts.googleapis.com/css?family=Carrois+Gothic' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Work+Sans:400,500,600' rel='stylesheet' type='text/css'>
        <!--static chart-->
        <script src="js/Chart.min.js"></script>
        <!--//charts-->
        <!-- geo chart -->
        <script src="//cdn.jsdelivr.net/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
        <script>window.modernizr || document.write('<script src="lib/modernizr/modernizr-custom.js"><\/script>')</script>
        <!--<script src="lib/html5shiv/html5shiv.js"></script>-->
        <!-- Chartinator  -->
        <script src="js/chartinator.js" ></script>


        <!--skycons-icons-->
        <script src="js/skycons.js"></script>
        <!--//skycons-icons-->
        <script language="javascript" type="text/javascript">
                    
function populate(s1,s2){
	var s1 = document.getElementById(s1);
	var s2 = document.getElementById(s2);
	s2.innerHTML = "";
	if(s1.value == "NT"){
		var optionArray = ["7|7 Months","11|11 Months","13|13 Months","15|15 Months","17|17 Months","21|21 Months","23|23 Months"];
	} else if(s1.value == "T"){
		var optionArray = ["FT|F/T","10|10 Months","16|16 Months","18|18 Months"];
	} else if(s1.value == "Ford"){
		var optionArray = ["mustang|Mustang","shelby|Shelby"];
	}
	for(var option in optionArray){
		var pair = optionArray[option].split("|");
		var newOption = document.createElement("option");
		newOption.value = pair[0];
		newOption.innerHTML = pair[1];
		s2.options.add(newOption);
	}
}
</script>
    </head>
    <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

        String name = (String) session.getAttribute("currentID");
        String uname = name.toUpperCase();
        if (uname == null) {
            response.sendRedirect("signin");
        }
        String urole = (String) session.getAttribute("userRole");
    %>
    <body>	
        <div class="page-container">	
            <div class="left-content">
                <div class="mother-grid-inner">
                    <!--header start here-->
                    <%@include file="header.jsp" %>
                    <!-- /script-for sticky-nav -->
                    <!--inner block start here-->
                    <div class="inner-block">
                        <h1 style="text-align: center;">Registration/Admission Form</h1>
                        <form method="post" action="AddStudent" enctype="multipart/form-data" class="StudForm">
                    <div class="col-1">
                        <label class="labelClassHead">Basic Information
                        </label>
                    </div>
                    <!--
                    <div class="col-4">
                        <label>
                            Student ID:
                            <input placeholder="What is your ID?" id="name" name="stud_id" tabindex="1">
                        </label>
                    </div>
                    <div class="col-4">
                        <label>
                            Application Form No.
                            <input placeholder="What is your form no.?" id="company" name="stud_form_number" tabindex="2" required>
                        </label>
                    </div>-->
                    <div class="col-3">
                        <label>
                            Course Type: 
                            <select id="slct1" name="stud_course_type" onchange="populate(this.id, 'slct2')"  tabindex="1" required>
                                <option value="">--Select Course Type--</option>
                                <option value="NT">Non-tech</option>
                                <option value="T">Tech</option>
                            </select>
                        </label>
                    </div>
                    <div class="col-3">
                        <label>
                            Course (in Months): 

                            <select id="slct2" name="stud_course_months" tabindex="1" required>
                                <option value="">--Select Course--</option>
                            </select>
                            <!--<select name="dateselector_child_1" id="dateselector_child_1">

                                <option value="7">7 Months</option>
                                <option value="11">11 Months</option>
                                <option value="13">13 Months</option>
                                <option value="15">15 Months</option>
                                <option value="17">17 Months</option>
                                <option value="21">21 Months</option>
                                <option value="23">23 Months</option>
                            </select>

                            <select name="dateselector_child_2" id="dateselector_child_2">

                                <option value="FT">F/T</option>
                                <option value="10">10 Months</option>
                                <option value="16">16 Months</option>
                                <option value="18">18 Months</option>
                            </select>-->
                        </label>
                    </div>
                    <div class="col-3">
                        <label>
                            Registration Date: 
                            <input placeholder="Registration Date" type="Date" id="email" name="stud_regis_date" tabindex="3" required>
                        </label>
                    </div>
                    <div class="col-3">
                        <label>
                            Admission Date:
                            <input placeholder="Admission Date" type="Date" id="email" name="stud_addmission_date" tabindex="4" required>
                        </label>
                    </div>
                    <div class="col-3">
                        <label>
                            Batch Timing:
                            <input placeholder="Batch Timing" id="email" name="stud_batch_timing" tabindex="5">
                        </label>
                    </div>
                    <div class="col-3">
                        <label>
                            Batch Intake date:
                            <input placeholder="Batch Intake Date" type="Date" id="email" name="batch_intake_date" tabindex="6" required>
                        </label>
                    </div>

                    <!--<div class="col-3">
                      <label>
                        Availability
                        <select tabindex="5">
                          <option>5-15 hrs per week</option>
                          <option>15-30 hrs per week</option>
                          <option>30-40 hrs per week</option>
                        </select>
                      </label>
                    </div>-->
                    <!--<h4>Applicant's Information</h4>-->
                    <div class="col-1">
                        <label class="labelClassHead">Applicant's Information
                        </label>
                    </div>
                    <div class="col-3">
                        <label>
                            Name: 
                            <input placeholder="Name" id="skills" name="stud_name" tabindex="7" required>
                        </label>
                    </div>
                    <div class="col-3">
                        <label>
                            Gender: 
                            <select tabindex="8" name="stud_gender" required>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>
                        </label>
                    </div>
                    <div class="col-3">
                        <label>
                            Date of Birth:  
                            <input placeholder="Date of Birth" type="Date" id="experience" name="stud_dob" tabindex="9" required>
                        </label>
                    </div>

                    <div class="col-1">
                        <label class="labelClassHead">Applicant's Contact Details for Correspondence
                        </label>
                    </div>

                    <div class="col-3">
                        <label>Residential Address: 
                            <input placeholder="Residential Address" id="skills" name="stud_address" tabindex="10" required>
                        </label>  
                    </div>
                    <div class="col-3">
                        <label>Pin Code: 
                            <input placeholder="Pin Code" id="skills" name="stud_pincode" tabindex="11" required>
                        </label>
                    </div>

                    <div class="col-3">
                        <label>UID (Aadhaar Number): 
                            <input placeholder="Aadhaar Number" id="skills" name="stud_uid" tabindex="12" required>
                        </label>
                    </div>

                    <div class="col-3">
                        <label>State:  
                            <input placeholder="State" id="skills" name="stud_state" tabindex="13" required>
                        </label>
                    </div>

                    <div class="col-3">
                        <label>Country: 
                            <input placeholder="Country" id="skills" name="stud_country" tabindex="14" required>
                        </label>
                    </div>

                    <div class="col-3">
                        <label>Mobile:  
                            <input placeholder="Mobile" id="skills" name="stud_mobile" tabindex="15" required>
                        </label>
                    </div>

                    <div class="col-3">
                        <label>Email: 
                            <input placeholder="Email" id="skills" name="stud_email" tabindex="16" required>
                        </label>
                    </div>

                    <div class="col-3">
                        <label>Alternate Email: 
                            <input placeholder="Alternate Email" id="skills" name="stud_alter_email" tabindex="17" required>
                        </label>
                    </div>

                    <div class="col-1">
                        <label class="labelClassHead">Parent's Contact Details
                        </label>
                    </div>

                    <div class="col-3">
                        <label>Parent's Name:  
                            <input placeholder="Parent's Name" id="skills" name="stud_father_name" tabindex="18" required>
                        </label>
                    </div>

                    <div class="col-3">
                        <label>Occupation: 
                            <select tabindex="19" name="stud_father_occupation" required>
                                <option value="Government">Government</option>
                                <option value="Self employed">Self employed</option>
                                <option value="Professional">Professional</option>
                                <option value="Others">Others</option>
                            </select>
                        </label>
                    </div>

                    <div class="col-3">
                        <label>Mobile: 
                            <input placeholder="Mobile" id="skills" name="stud_father_mobile" tabindex="20" required>
                        </label>
                    </div>

                    <div class="col-3">
                        <label>Parent's Aadhaar Number: 
                            <input placeholder="Parent's UID" id="skills" name="stud_father_uid" tabindex="21" required>
                        </label>
                    </div>

                    <div class="col-3">
                        <label>Result Dispatch Mode: 
                            <select tabindex="22" id="stud_result_mode" name="stud_result_mode" required>
                                <option value="email">Email address</option>
                                <option value="postal">Postal address</option>
                                <option value="whatsapp">WhatsApp number</option>
                                <option value="others">Others</option>
                            </select>
                        </label>
                    </div>

                    <div class="col-3">
                        <label>Enter details:
                            <input placeholder="Enter details" id="enterDetails" type="text" name="stud_result_mode_details" tabindex="23" required>
                        </label>
                    </div>

                    <div class="col-1">
                        <label class="labelClassHead">Educational Qualifications
                        </label>
                    </div>

                    <div class="col-4">
                        <label>Course:  
                            <input placeholder="Course" id="skills" name="stud_college_course" tabindex="24">
                        </label>
                    </div>

                    <div class="col-4">
                        <label>Branch: 
                            <input placeholder="Branch" id="skills" name="stud_college_branch" tabindex="25">
                        </label>
                    </div>

                    <div class="col-4">
                        <label>Passing Year: 
                            <input placeholder="Passing Year" id="skills" name="stud_college_sem" tabindex="26">
                        </label>
                    </div>

                    <div class="col-4">
                        <label>College/Institute:  
                            <input placeholder="College/Institute" id="skills" name="stud_college_name" tabindex="27">
                        </label>
                    </div>

                    <div class="col-1">
                        <label class="labelClassHead">For Office Use Only
                        </label>
                    </div>

                    <div class="col-4">
                        <label>Counselor:  
                            <input placeholder="Counselor" id="skills" name="office_counselor" tabindex="28">
                        </label>
                    </div>

                    <div class="col-4">
                        <label>Tele-Counselor:
                            <input placeholder="Tele-Counselor" id="skills" name="office_tele_counselor" tabindex="29">
                        </label>
                    </div>

                    <div class="col-4">
                        <label>Kiosk/ME:
                            <input placeholder="Kiosk/ME" id="skills" name="office_kiosk" tabindex="30">
                        </label>
                    </div>

                    <div class="col-4">
                        <label>Source:  
                            <input placeholder="Source" id="skills" name="office_source" tabindex="31">
                        </label>
                    </div>

                    <div class="col-submit">
                        <button class="submitbtn" tabindex="32">Submit Form & Next</button>
                    </div>

                </form>
                    </div>
                    <!--inner block end here-->
                    <!--copy rights start here-->
                    <div class="copyrights">
                        <p>© 2018 ATLAS. All Rights Reserved</p>
                    </div>	
                    <!--COPY rights end here-->
                </div>
            </div>
            <!--slider menu-->
            <%@include file="sidebar.jsp" %>
            <div class="clearfix"> </div>
        </div>
        
        <!--scrolling js-->
        <script src="js/jquery.nicescroll.js"></script>
        <script src="js/scripts.js"></script>
        <!--//scrolling js-->
        <script src="js/bootstrap.js"></script>
        <!-- mother grid end here-->
    </body>
</html>                     
