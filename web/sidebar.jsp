<div class="sidebar-menu">
    <div class="logo"> <a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="#"> <span id="logo" ></span> 
            <!--<img id="logo" src="" alt="Logo"/>--> 
        </a> </div>		  
    <div class="menu">
        <%if (urole.equals("mgmt")) {%>
        <ul id="menu">
            <li id="menu-home" ><a href="index.jsp"><i class="fa fa-tachometer"></i><span>Dashboard</span></a></li>

            <li id="menu-comunicacao" ><a href="#"><i class="fa fa-book nav_icon"></i><span>Education</span><span class="fa fa-angle-right" style="float: right"></span></a>
                <ul id="menu-comunicacao-sub">
                    <li id="menu-mensagens" ><a href="batchCreation.jsp">Batch creation</a>		              
                    </li>
                    <li id="menu-arquivos" ><a href="batchSchedule.jsp">Batch Scheduling</a></li>
                    <li id="menu-arquivos" ><a href="batchStatusByBatch.jsp">Batch Status (by Batch)</a></li>
                    <li id="menu-arquivos" ><a href="batchStatusByStudent.jsp">Batch Status (by Student)</a></li>
                </ul>
            </li>
            <li id="menu-academico" ><a href="#"><i class="fa fa-file-text"></i><span>Student<br>Management</span><span class="fa fa-angle-right" style="float: right"></span></a>
                <ul id="menu-academico-sub" >
                    <li id="menu-academico-boletim" ><a href="AddStudentPage.jsp">Add Student</a></li>
                    <li id="menu-academico-avaliacoes" ><a href="searchStudent.jsp">Student Details</a></li>		           
                </ul>
            </li>
            <li id="menu-academico" ><a href="#"><i class="fa fa-file-text"></i><span>Faculty<br>Management</span><span class="fa fa-angle-right" style="float: right"></span></a>
                <ul id="menu-academico-sub" >
                    <li id="menu-academico-boletim" ><a href=".jsp">Add Faculty</a></li>
                    <li id="menu-academico-avaliacoes" ><a href="searchStudent.jsp">View &amp; Update</a></li>		           
                </ul>
            </li>
        </ul>
        <%}%>
        <%if (urole.equals("faculty")) {%>
        <ul id="menu">
            <li id="menu-home" ><a href="index.jsp"><i class="fa fa-tachometer"></i><span>Dashboard</span></a></li>

            <li id="menu-comunicacao" ><a href="#"><i class="fa fa-book nav_icon"></i><span>Education</span><span class="fa fa-angle-right" style="float: right"></span></a>
                <ul id="menu-comunicacao-sub" >
                    <li id="menu-mensagens" ><a href="">Batches</a>		              
                    </li>
                    
                </ul>
            </li>
        </ul>
        <%}%>
    </div>
</div>

<!--slide bar menu end here-->
<script>
    var toggle = true;

    $(".sidebar-icon").click(function () {
        if (toggle)
        {
            $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
            $("#menu span").css({"position": "absolute"});
        } else
        {
            $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
            setTimeout(function () {
                $("#menu span").css({"position": "relative"});
            }, 400);
        }
        toggle = !toggle;
    });
</script>
