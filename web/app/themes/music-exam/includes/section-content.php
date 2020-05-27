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
            $icmp = get_field('icmp'); 
            $orange = get_field('orange'); 
            $orange_amp = get_field('orange_amp');
            $youth_music = get_field('youth_music');
        ?>

    <div class="carousel-wrap">
        <div class="carousel" data-flickity='{ "fullscreen": true, "lazyLoad": 2, "contain": true, "pageDots": false }'>
            <div class="gallery-cell">
                <img class="carousel-image" src="<?php echo esc_url($creative_united['url']); ?>" alt="<?php echo esc_attr($creative_united['alt']); ?>" />
            </div>
            <div class="gallery-cell">
                <img class="carousel-image" src="<?php echo esc_url($icmp['url']); ?>" alt="<?php echo esc_attr($icmp['alt']); ?>" />
            </div>
            <div class="gallery-cell">
                <img class="carousel-image" src="<?php echo esc_url($orange['url']); ?>" alt="<?php echo esc_attr($orange['alt']); ?>" />
            </div>
            <div class="gallery-cell">
                <img class="carousel-image" src="<?php echo esc_url($orange_amp['url']); ?>" alt="<?php echo esc_attr($orange_amp['alt']); ?>" />
            </div>
            <div class="gallery-cell">
                <img class="carousel-image" src="<?php echo esc_url($youth_music['url']); ?>" alt="<?php echo esc_attr($youth_music['alt']); ?>" />
            </div>
        </div>
    </div>    

    <!-- <img class="creative-united" src="<?php echo esc_url($creative_united['url']); ?>" alt="<?php echo esc_attr($creative_united['alt']); ?>" /> -->


<?php endwhile; else: endif; ?>