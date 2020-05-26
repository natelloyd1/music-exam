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
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script> 
    </body>
</html>