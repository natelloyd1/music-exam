<?php if( have_posts() ): while( have_posts() ): the_post();?>

    <?php the_content();?>

    <?php $first_title = get_field("first_title");  
        
        ?>

        <h1 class="header-text"><?php echo $first_title?></h1>


<?php endwhile; else: endif; ?>