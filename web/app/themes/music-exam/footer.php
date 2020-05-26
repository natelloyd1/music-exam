<?php 
    
    $footer_background = get_field('footer_img'); 

    if( !empty( $footer_background ) ): ?>

<footer>
    <div class="container" class="footer-img" style="background-image: url("<?php echo esc_url($footer_background['url']) ?>");>
        <?php endif; ?>

            <?php 
                wp_nav_menu(

                    array(
                        'theme_location' => 'footer-menu',
                        'menu_class' => 'footer-bar'
                    )
                )
            ?>
    </div>
</footer>

    <?php wp_footer(); ?>

</body>
</html>