<?php if( have_posts() ): while( have_posts() ): the_post();?>

    <?php the_content();?>

    <?php 
        $first_title = get_field("first_title"); 
        $second_title = get_field("second_title"); 
        $second_title_copy = get_field("second_title_copy");
        $find_an_exam = get_field("find_an_exam"); 
        $become_a_partner = get_field("become_a_partner"); 
    ?>

        <h1 class="first-header"><?php echo $first_title?></h1>

        <h2 class="second-header"><?php echo $second_title?><span class="gold-o">o</span><span class="second-header"><?php echo $second_title_copy?></span>

        <div class="two-center-buttons">

            <a href="<?php echo $find_an_exam['url']?>" class="find-exam">
            
            <?php echo $find_an_exam['title'] ?></a>

            <a href="<?php echo $become_a_partner['url']?>" class="become-a-partner">
            
            <?php echo $become_a_partner['title'] ?></a>

        </div>  

        <?php
        
            $creative_united = get_field('creative_united'); 

        ?>

       <div class="courses cf js-flickity" id="featured-courses" >
            <div class="course-item slide">
                <div class="course-summary card">
                    <?php
                        if( !empty( $creative_united ) ): ?>
                        <a href="http://www.sage-exam.test:8888">
                            <img class="creative-united" src="<?php echo esc_url($creative_united['url']); ?>" alt="<?php echo esc_attr($creative_united['alt']); ?>" />
                        </a>
                        <?php endif; ?>
            
            <div class="course-item slide">
                <div class="course-summary card">
                    <div class="course-thumbnail">
                        <img src="img/mspaint-course.jpg" height="277" width="400" alt="MSPaint Image">
                    </div>
                    <div class="course-info">
                        <div class="course-topic webdesign">Web Design</div>
                        <h3 class="course-title">Rapid Prototyping with MSPaint</h3>
                        <div class="course-meta">
                            <time class="course-date">10 Apr 2015</time>
                            <span class="course-duration">2.3 hours</span>
                        </div>
                    </div>
                </div> 
            </div>
            <div class="course-item slide">
                <div class="course-summary card">
                    <div class="course-thumbnail">
                        <img src="img/mspaint-course.jpg" height="277" width="400" alt="MSPaint Image">
                    </div>
                    <div class="course-info">
                        <div class="course-topic webdesign">Web Design</div>
                        <h3 class="course-title">Rapid Prototyping with MSPaint</h3>
                        <div class="course-meta">
                            <time class="course-date">10 Apr 2015</time>
                            <span class="course-duration">2.3 hours</span>
                        </div>
                    </div>
                </div> 
            </div>
            
            <div class="course-item slide">
                <div class="course-summary card">
                    <div class="course-thumbnail">
                        <img src="img/mspaint-course.jpg" height="277" width="400" alt="MSPaint Image">
                    </div>
                    <div class="course-info">
                        <div class="course-topic webdesign">Web Design</div>
                        <h3 class="course-title">Rapid Prototyping with MSPaint</h3>
                        <div class="course-meta">
                            <time class="course-date">10 Apr 2015</time>
                            <span class="course-duration">2.3 hours</span>
                        </div>
                    </div>
                </div> 
            </div>
            <div class="course-item slide">
                <div class="course-summary card">
                    <div class="course-thumbnail">
                        <img src="img/mspaint-course.jpg" height="277" width="400" alt="MSPaint Image">
                    </div>
                    <div class="course-info">
                        <div class="course-topic webdesign">Web Design</div>
                        <h3 class="course-title">Rapid Prototyping with MSPaint</h3>
                        <div class="course-meta">
                            <time class="course-date">10 Apr 2015</time>
                            <span class="course-duration">2.3 hours</span>
                        </div>
                    </div>
                </div> 
            </div>
   

  </div>

    
        


<?php endwhile; else: endif; ?>