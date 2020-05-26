<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Music Exams</title>

    <?php wp_head();?>

</head>
<body>

<header>

<div class="container">

        <!-- <img src="<?php echo get_site_icon_url() ?>" class="header-logo" /> -->

        <?php

        $site_logo = get_field('site_logo');
        if( !empty( $site_logo ) ): ?>
        <img class="site-logo" src="<?php echo esc_url($site_logo['url']); ?>" alt="<?php echo esc_attr($site_logo['alt']); ?>" />
        <?php endif; ?>


        <?php 

        wp_nav_menu(

            array(
                'theme_location' => 'top-menu',
                'menu_class' => 'top-bar'
            )
            );


            $facebook_link = get_field('facebook_link');

            // var_dump($facebook_link); 

            $header_link = get_field('header_link');

            // var_dump($header_link); 

            $insta_link = get_field('instagram_link'); 



        ?>

    <a href="<?php echo $header_link['url']?>" class="get-started">
    <?php echo $header_link['title'] ?></a>

    <?php
    if( !empty( $facebook_link ) ): ?>
    <img class="facebook-icon" src="<?php echo esc_url($facebook_link['url']); ?>" alt="<?php echo esc_attr($facebook_link['alt']); ?>" />
    <?php endif; ?>

    <?php
    if( !empty( $insta_link ) ): ?>
    <img class="insta-icon" src="<?php echo esc_url($insta_link['url']); ?>" alt="<?php echo esc_attr($insta_link['alt']); ?>" />
    <?php endif; ?>

    </div>

</header>
    
