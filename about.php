<?php
include_once("includes/header.php");
?>

<!-- start of page content -->
    
<h1 class="entryTitle">About</h1>

	<section class="AboutHOCGSection">
    	<section class="entryMast">
        	<h2 class="HOCGtitle"> About the History of CG </h2>
		</section>
    	<section class="aboutHOCG">
    		<div class="pLogo"></div>
        	<div class="columns">
   				<div class="left column">
        			<p>This site aims to be the first comprehensive source of Computer 
        			Graphics history and information. Our goal is to catalog original stories about the 
        			projects, people, events, and organizations that make up the collective history 
        			of the field. To do so, we’ve reached out to key players who have contributed to the 
        			development of computer graphics over the last 50 years, to share their experiences and 
        			knowledge of the events and developments that have brought computer graphics to where 
        			they are today.
        				<br></br> 
        			In such a rapidly developing field, we believe that this history will be best told by 
        			the people that participate in it. The History of CG database allows users to freely 
        			explore and add to the content of our site, capturing the rich and diverse history of 
        			this exciting field. </p>
   				</div>
   			<div class="right column">
       				<p>Our content is regularly reviewed by SIGGRAPH Pioneers, to ensure accuracy and 
       				encourage relevant and complete entries.
        				<br></br>
        			The available online sources about compter graphics history are fragmented, incomplete 
        			and deal with basic facts. Our project focuses on the personal stories and connections 
        			between the people behind the pixels.</p>
    			</div>
			</div>
        </section>
	</section>
	
	<section class="AboutUsSection">
		<h3 class="USsectionTitle"> About the Creators </h3>
		<section>
			<section class="aboutCreators">
        		<div class="groupPhoto"></div>
        			<a href="#" id="connie">Test Connie</a>
        			<a href="#" id="michelle">Test Michelle</a>
        			<a href="#" id="stefano">Test Stefano</a>
        			<a href="#" id="amy">Test Amy</a>
        			<a href="#" id="james">Test James</a>
        			<a href="#" id="terrence">Test Terrence</a>
        			<a href="#" id="brian">Test Brian</a>
        		<div class="groupPhotoArrow"></div>
        		<section>
        			<section class="moreInfo">
        				<div id="MAG"></div>
        					<div class="picture_MAG"></div>
        					<div id="name_MAG"><p> Michelle <br> Gayowski </p></div>
        					<div id="role_MAG"><p> Designer <br> Developer </p></div>
        					<div id="info_MAG"><p> Lorem ipsum dolor sit amet, coctetur adipisicing 
        						elit, sed do esmod tempor inciunt ut labore et dolore magna aliqua. 
        						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
        						nisi ut aliquip ex ea comodo consuat. Duis aute irure dolor in 
        						reprehenderit in volupe velit esse cillum dolore eu fugiat nulla 
        						pariatur. Excer sint occaecat cupidatat non proident, sunt in culpa 
        						qui officia deserunt mollit anim id est laborum. </p></div>
        				<div class="moreInfo" id="connie_info"></div>
        					<div class="picture_CYC"></div>
        					<div id="name_CYC"><p> Connie <br> Chan </p></div>
        					<div id="role_CYC"><p> Designer <br> Developer</p></div>
        					<div id="info_CYC"><p> Lorem ipsum dolor sit amet, coctetur adipisicing 
        						elit, sed do esmod tempor inciunt ut labore et dolore magna aliqua. 
        						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
        						nisi ut aliquip ex ea comodo consuat. Duis aute irure dolor in 
        						reprehenderit in volupe velit esse cillum dolore eu fugiat nulla 
        						pariatur. Excer sint occaecat cupidatat non proident, sunt in culpa 
        						qui officia deserunt mollit anim id est laborum. </p></div>
        				<div class="moreInfo_SKD"></div>
        				<div class="moreInfo_AS"></div>
        				<div class="moreInfo_JS"></div>
        				<div class="moreInfo_TM"></div>
        				<div class="moreInfo_BS"</div>
        			</section>
        		</section>
        	</section>
		</section>
	</section>

    <section class="entryInfo" style="display: none;">
        <input type="hidden" class="entryName" value="<?php echo $data['main']['name'];?>" />
        <input type="hidden" class="entryId" value="<?php echo $data['main']['id']; ?>" />
        <input type="hidden" class="entryCategory" value="<?php echo $category; ?>" />
        <div class="entryDescription"><p><?php echo $data['main']['description']; ?></p></div>
    </section>

<!-- end of page content -->



<?php 
    include_once("includes/footer.php");
?>
