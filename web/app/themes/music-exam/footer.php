<footer>
    <div class="container">
            <?php 

                wp_nav_menu(

                    array(
                        'theme_location' => 'footer-menu',
                        'menu_class' => 'footer-bar'
                    )
                )
            ?>
            
            <?php wp_footer(); ?>
    </div>
</footer>

    </body>

</html>