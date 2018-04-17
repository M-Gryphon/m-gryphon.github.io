[1mdiff --git a/source/layouts/layout.erb b/source/layouts/layout.erb[m
[1mindex 0bc0689..b81a0e8 100644[m
[1m--- a/source/layouts/layout.erb[m
[1m+++ b/source/layouts/layout.erb[m
[36m@@ -12,6 +12,8 @@[m
 [m
     <!-- Use title if it's in the page YAML frontmatter -->[m
     <title><%= current_page.data.title || "The Middleman" %></title>[m
[32m+[m[32m    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"[m
[32m+[m[32m      rel="stylesheet">[m
 [m
     <%= stylesheet_link_tag "all" %>[m
     <%= javascript_include_tag  "all" %>[m
[1mdiff --git a/source/portfolio.html.erb b/source/portfolio.html.erb[m
[1mindex 8d7418c..2fb81da 100644[m
[1m--- a/source/portfolio.html.erb[m
[1m+++ b/source/portfolio.html.erb[m
[36m@@ -1,86 +1,31 @@[m
[31m-<div class="padded">[m
[31m-  <div class="container">[m
[31m-    <div class="row">[m
[31m-      <div class="col-xs-12 col-sm-6">[m
[31m-        <div class="card-portfolio img-rounded">[m
[31m-          <a href="http://www.bookaround.org/" target="_blank">[m
[31m-            <figure>[m
[31m-              <img class="img-responsive" src="https://unsplash.it/1000/?random[m
[31m-              " alt="Lights">[m
[31m-            </figure>[m
[31m-            <figcaption>[m
[31m-              <h2>BookAround</h2>[m
[31m-              <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>[m
[31m-            </figcaption>[m
[31m-          </a>[m
[32m+[m[32m  <div class="padding-portfolio">[m
[32m+[m[32m    <div class="container">[m
[32m+[m[32m      <h2>Realizations</h2>[m
[32m+[m[32m      <div class="row">[m
[32m+[m[32m        <div class="col-xs-12 col-sm-6">[m
[32m+[m[32m          <% link_to "http://www.bookaround.org/", class: "card-portfolio" do %>[m
[32m+[m[32m          <%= image_tag "bookaround-small.png", class: "img-responsive img-rounded" %>[m
[32m+[m[32m          <% end %>[m
         </div>[m
[31m-      </div>[m
[31m-      <div class="col-xs-12 col-sm-6">[m
[31m-        <div class="card-portfolio img-rounded">[m
[31m-          <a href="gregoryvangriffin.com" target="_blank">[m
[31m-            <figure>[m
[31m-              <img class="img-responsive" src="https://unsplash.it/1000/?random[m
[31m-              " alt="Nature">[m
[31m-            </figure>[m
[31m-            <figcaption>[m
[31m-              <h2>Portfolio2017</h2>[m
[31m-              <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>[m
[31m-            </figcaption>[m
[31m-          </a>[m
[31m-        </div>[m
[31m-      </div>[m
[31m-      <div class="col-xs-12 col-sm-6">[m
[31m-        <div class="card-portfolio img-rounded">[m
[31m-          <a href="#" target="_blank">[m
[31m-            <figure>[m
[31m-              <img class="img-responsive" src="https://unsplash.it/1000/?random" alt="Fjords">[m
[31m-            </figure>[m
[31m-            <figcaption>[m
[31m-              <h2>Code2017</h2>[m
[31m-              <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>[m
[31m-            </figcaption>[m
[31m-          </a>[m
[31m-        </div>[m
[31m-      </div>[m
[31m-      <div class="col-xs-12 col-sm-6">[m
[31m-        <div class="card-portfolio img-rounded">[m
[31m-          <a href="#" target="_blank">[m
[31m-            <figure>[m
[31m-              <img class="img-responsive" src="https://unsplash.it/1000/?random" alt="Fjords">[m
[31m-            </figure>[m
[31m-            <figcaption>[m
[31m-              <h2>Project Four</h2>[m
[31m-              <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>[m
[31m-            </figcaption>[m
[31m-          </a>[m
[31m-        </div>[m
[31m-      </div>[m
[31m-      <div class="col-xs-12 col-sm-6">[m
[31m-        <div class="card-portfolio img-rounded">[m
[31m-          <a href="#" target="_blank">[m
[31m-            <figure>[m
[31m-              <img class="img-responsive" src="https://unsplash.it/1000/?random" alt="Fjords">[m
[31m-            </figure>[m
[31m-            <figcaption>[m
[31m-              <h2>Project Five</h2>[m
[31m-              <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>[m
[31m-            </figcaption>[m
[31m-          </a>[m
[32m+[m[32m        <div class="col-xs-12 col-sm-6">[m
[32m+[m[32m          <% link_to "http://www.gregoryvangriffin.com/", class: "card-portfolio" do %>[m
[32m+[m[32m          <%= image_tag "sky-banner-screen-shot.png", class: "img-responsive img-rounded" %>[m
[32m+[m[32m          <% end %>[m
         </div>[m
[31m-      </div>[m
[31m-      <div class="col-xs-12 col-sm-6">[m
[31m-        <div class="card-portfolio img-rounded">[m
[31m-          <a href="#" target="_blank">[m
[31m-            <figure>[m
[31m-              <img class="img-responsive" src="https://unsplash.it/1000/?random" alt="Fjords">[m
[31m-            </figure>[m
[31m-            <figcaption>[m
[31m-              <h2>Project Six</h2>[m
[31m-              <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>[m
[31m-            </figcaption>[m
[31m-          </a>[m
[32m+[m[32m        <!-- <div class="col-xs-12 col-sm-6 col-md-4">[m
[32m+[m[32m          <div class="card-portfolio img-rounded">[m
[32m+[m[32m            <% link_to "http://www.bookaround.org/" do %>[m
[32m+[m[32m            <%= image_tag "laboratory-small.jpeg", class: "img-responsive" %>[m
[32m+[m[32m            <% end %>[m
[32m+[m[32m          </div>[m
         </div>[m
[32m+[m[32m        <div class="col-xs-12 col-sm-6 col-md-4">[m
[32m+[m[32m          <div class="card-portfolio img-rounded">[m
[32m+[m[32m            <% link_to "http://www.bookaround.org/" do %>[m
[32m+[m[32m            <%= image_tag "construction-small.jpeg", class: "img-responsive" %>[m
[32m+[m[32m            <% end %>[m
[32m+[m[32m          </div>[m
[32m+[m[32m        </div> -->[m
       </div>[m
     </div>[m
   </div>[m
[31m-</div>[m
[1mdiff --git a/source/stylesheets/components/_avatar.scss b/source/stylesheets/components/_avatar.scss[m
[1mdeleted file mode 100644[m
[1mindex a7ce0b3..0000000[m
[1m--- a/source/stylesheets/components/_avatar.scss[m
[1m+++ /dev/null[m
[36m@@ -1,20 +0,0 @@[m
[31m-.avatar {[m
[31m-  width: 30px;[m
[31m-  border-radius: 50%;[m
[31m-}[m
[31m-.avatar-large {[m
[31m-  width: 50px;[m
[31m-  border-radius: 50%;[m
[31m-}[m
[31m-.avatar-bordered {[m
[31m-  width: 30px;[m
[31m-  border-radius: 50%;[m
[31m-  box-shadow: 0 1px 2px rgba(0,0,0,0.2);[m
[31m-  border: white 1px solid;[m
[31m-}[m
[31m-.avatar-square {[m
[31m-  width: 30px;[m
[31m-  border-radius: 0px;[m
[31m-  box-shadow: 0 1px 2px rgba(0,0,0,0.2);[m
[31m-  border: white 1px solid;[m
[31m-}[m
[1mdiff --git a/source/stylesheets/components/_badge.scss b/source/stylesheets/components/_badge.scss[m
[1mdeleted file mode 100644[m
[1mindex 695c72a..0000000[m
[1m--- a/source/stylesheets/components/_badge.scss[m
[1m+++ /dev/null[m
[36m@@ -1,38 +0,0 @@[m
[31m-.badge-container {[m
[31m-  position: relative;[m
[31m-  font-size: 25px;[m
[31m-  line-height: 30px;[m
[31m-  width: 30px;[m
[31m-  color: grey;[m
[31m-}[m
[31m-.badge {[m
[31m-  position: absolute;[m
[31m-  top: -5px;[m
[31m-  right: -5px;[m
[31m-  font-size: 10px;[m
[31m-  color: white;[m
[31m-  display: flex;[m
[31m-  align-items: center;[m
[31m-  justify-content: center;[m
[31m-  height: 18px;[m
[31m-  width: 18px;[m
[31m-  text-align: center;[m
[31m-  box-shadow: 0px 0px 2px rgba(0, 0, 0, 0.1);[m
[31m-  border-radius: 50%;[m
[31m-}[m
[31m-.badge-red {[m
[31m-  background: #EE5F5B;[m
[31m-}[m
[31m-.badge-green {[m
[31m-  background: #32B796;[m
[31m-}[m
[31m-.badge-blue {[m
[31m-  background: #469AE0;[m
[31m-}[m
[31m-.badge-black {[m
[31m-  background: black;[m
[31m-}[m
[31m-.badge-bordered {[m
[31m-  box-shadow: 0 1px 2px rgba(0,0,0,0.2);[m
[31m-  border: white 1px solid;[m
[31m-}[m
[1mdiff --git a/source/stylesheets/components/_banner.scss b/source/stylesheets/components/_banner.scss[m
[1mindex 16df9d3..535715c 100644[m
[1m--- a/source/stylesheets/components/_banner.scss[m
[1m+++ b/source/stylesheets/components/_banner.scss[m
[36m@@ -22,3 +22,87 @@[m
   margin-bottom: 20px;[m
 }[m
  */[m
[32m+[m[32m /*[m
[32m+[m[32mExtra small devices (phones, less than 768px)[m
[32m+[m[32mNo media query since this is the default in Bootstrap[m
[32m+[m[32m */[m
[32m+[m[32m/* Small devices (tablets, 768px and up) */[m
[32m+[m[32m.banner {[m
[32m+[m[32m  @media (min-width: $screen-sm-min) {[m
[32m+[m[32m    color: $brand-primary;[m
[32m+[m[32m    text-align: center;[m
[32m+[m[32m    height: calc(100vh - #{$navbar-height});[m
[32m+[m[32m    /* if you have a 70px navbar => height: calc(100vh - 70px); */[m
[32m+[m
[32m+[m[32m    background-size: cover !important;[m
[32m+[m[32m    display: flex;[m
[32m+[m[32m    align-items: center;[m
[32m+[m[32m    justify-content: center;[m
[32m+[m[32m    background-image: linear-gradient(-225deg, rgba(0,0,0,0.6) 0%, rgba(0,0,0,0.4) 50%),[m
[32m+[m[32m    image-url("background_earth.jpg");[m
[32m+[m
[32m+[m[32m    h1 {[m
[32m+[m[32m      font-size: 75px;[m
[32m+[m[32m      font-weight: bold;[m
[32m+[m[32m      text-shadow: 0px 1px rgba(0, 0, 0, 0.2);[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    p,[m
[32m+[m[32m    h2 {[m
[32m+[m[32m      font-size: 50px;[m
[32m+[m[32m      font-weight: lighter;[m
[32m+[m[32m      margin-bottom: 20px;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    .btn-home {[m
[32m+[m[32m      color: $gray-lighter;[m
[32m+[m[32m      opacity: 0.6;[m
[32m+[m[32m      font-size: 50px;[m
[32m+[m[32m      font-weight: lighter;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    .btn-home:hover {[m
[32m+[m[32m      opacity: 1;[m
[32m+[m[32m      text-decoration: none;[m
[32m+[m[32m      color: $gray-lighter;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m  }[m
[32m+[m
[32m+[m[32m  // Medium devices (desktops, 992px and up)[m
[32m+[m[32m  @media (min-width: $screen-md-min) {[m
[32m+[m[32m    background-image: linear-gradient(-225deg, rgba(0,0,0,0.6) 0%, rgba(0,0,0,0.4) 50%),[m
[32m+[m[32m    image-url("background_earth.jpg");[m
[32m+[m
[32m+[m[32m    h1 {[m
[32m+[m[32m      font-size: 100px;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    p,[m
[32m+[m[32m    h2 {[m
[32m+[m[32m      font-size: 75px;[m
[32m+[m
[32m+[m[32m      .btn-home {[m
[32m+[m[32m        color: $gray-lighter;[m
[32m+[m[32m        opacity: 0.6;[m
[32m+[m[32m        font-size: 75px;[m
[32m+[m[32m        font-weight: lighter;[m
[32m+[m[32m      }[m
[32m+[m
[32m+[m[32m      .btn-home:hover {[m
[32m+[m[32m        opacity: 1;[m
[32m+[m[32m        text-decoration: none;[m
[32m+[m[32m        color: $gray-lighter;[m
[32m+[m[32m      }[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m  }[m
[32m+[m[32m  // Large devices (large desktops, 1200px and up)[m
[32m+[m[32m  @media (min-width: $screen-lg-min) {[m
[32m+[m[32m    background-image: linear-gradient(-225deg, rgba(0,0,0,0.6) 0%, rgba(0,0,0,0.4) 50%),[m
[32m+[m[32m    image-url("background_earth.jpg");[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[41m+[m
[41m+[m
[41m+[m
[1mdiff --git a/source/stylesheets/components/_card.scss b/source/stylesheets/components/_card.scss[m
[1mindex 47107aa..cd57300 100644[m
[1m--- a/source/stylesheets/components/_card.scss[m
[1m+++ b/source/stylesheets/components/_card.scss[m
[36m@@ -1,5 +1,66 @@[m
[32m+[m[32m/* -------------------------------------[m
[32m+[m[32m * Media Queries[m
[32m+[m[32m * ------------------------------------- */[m
[32m+[m
[32m+[m[32m /* Extra small devices (phones, less than 768px) */[m
[32m+[m[32m/* No media query since this is the default in Bootstrap */[m
[32m+[m[32m/* .card-portfolio {[m
[32m+[m[32m  heigth: 275px;[m
[32m+[m[32m  border: 2px solid $gray-darker;[m
[32m+[m[32m  background-size: cover !important;[m
[32m+[m[32m  color: white; */[m
[32m+[m[32m  /* box-shadow: 2px 2px 3px rgba(0,0,0,0.07),0 1px 0 0 rgba(0,0,0,0.03); */[m
[32m+[m
[32m+[m
 .card-portfolio {[m
[31m-  border: 1px solid $gray-darker;[m
[31m-  box-shadow: 0 1px 5px 0 rgba(0,0,0,0.07),0 1px 0 0 rgba(0,0,0,0.03);[m
[31m-  margin: 5px -10px;[m
[32m+[m[32m  height: 300px;[m
[32m+[m[32m  width: 100%;[m
[32m+[m[32m  background-size: cover;[m
[32m+[m[32m  background-color: #EFEFEF;[m
[32m+[m[32m  border-radius: 2px;[m
[32m+[m[32m  margin-bottom: 5px;[m
 }[m
[32m+[m[32m.card-portfolio:first-child {[m
[32m+[m[32m  margin-top: 5px;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.img.img-responsive:hover {[m
[32m+[m[32m    background-color: #EFEFEF !important;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m[32m.card-description h2 {[m
[32m+[m[32m  font-size: 24px;[m
[32m+[m[32m}[m
[32m+[m[32m.card-description p {[m
[32m+[m[32m  font-size: 13px;[m
[32m+[m[32m  }[m
[32m+[m[32m/* .card-link {[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  top: 0;[m
[32m+[m[32m  bottom: 0;[m
[32m+[m[32m  right: 0;[m
[32m+[m[32m  width: 100%;[m
[32m+[m[32m  z-index:2;[m
[32m+[m[32m  background: black;[m
[32m+[m[32m  opacity: 0;[m
[32m+[m[32m} */[m
[32m+[m[32m.card-link:hover{[m
[32m+[m[32m  opacity: 0.1;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32ma:hover {[m
[32m+[m[32m  text-decoration: none;[m
[32m+[m[32m  color: $body-bg;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32ma:visited {[m
[32m+[m[32mtext-decoration: none;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m/* Medium devices (desktops, 992px and up) */[m
[32m+[m[32m$screen-md-min: 992px;[m
[32m+[m
[32m+[m[32m/* Large devices (large desktops, 1200px and up) */[m
[32m+[m[32m$screen-lg-min: 1200px;[m
[1mdiff --git a/source/stylesheets/config/_bootstrap_variables.css.scss b/source/stylesheets/config/_bootstrap_variables.css.scss[m
[1mindex 676a992..28f21ec 100644[m
[1m--- a/source/stylesheets/config/_bootstrap_variables.css.scss[m
[1m+++ b/source/stylesheets/config/_bootstrap_variables.css.scss[m
[36m@@ -5,7 +5,7 @@[m
 [m
 // General style[m
 $font-family-sans-serif:  $base-font;[m
[31m-$body-bg:                 #0099c1;[m
[32m+[m[32m$body-bg:                 #fff !default;[m
 $font-size-base:          $base-size;[m
 $line-height-base:        $base-height;[m
 $headings-font-family:    $header-font;[m
[1mdiff --git a/source/stylesheets/config/_variables.css.scss b/source/stylesheets/config/_variables.css.scss[m
[1mindex def7992..8593271 100644[m
[1m--- a/source/stylesheets/config/_variables.css.scss[m
[1m+++ b/source/stylesheets/config/_variables.css.scss[m
[36m@@ -2,9 +2,12 @@[m
  * Fonts[m
  * ------------------------------------- */[m
 // Google fonts[m
[31m-@import url("http://fonts.googleapis.com/css?family=Open+Sans:400,300,700|Raleway:400,100,300,700,500");[m
[31m-$base-font: "Open Sans", "Helvetica", "sans-serif";[m
[31m-$header-font: "Raleway", "Helvetica", "sans-serif";[m
[32m+[m[32m@import url('https://fonts.googleapis.com/css?family=Crimson+Text|Roboto:300,400,500');[m
[32m+[m[32m$base-font: "Roboto", "Helvetica", "sans-serif";[m
[32m+[m[32m$header-font: "Crimson Text", "serif";[m
[32m+[m
[32m+[m[32m/* font-family: 'Roboto', sans-serif;[m
[32m+[m[32mfont-family: 'Crimson Text', serif; */[m
 [m
 // Local fonts (uncomment following lines)[m
 // @font-face {[m
[36m@@ -18,13 +21,13 @@[m [m$header-font: "Raleway", "Helvetica", "sans-serif";[m
 [m
 // Font-size and line-height[m
 $base-size: 16px;[m
[31m-$base-height: 1.4;[m
[32m+[m[32m$base-height: 1.875;[m
 [m
 /* -------------------------------------[m
  * Colors[m
  * ------------------------------------- */[m
 // Scheme[m
[31m-$brand-color: #D23333;[m
[32m+[m[32m$brand-color: #D23333 !important;[m
 [m
 $red: #EE5F5B;[m
 $blue: #469AE0;[m
[36m@@ -54,3 +57,6 @@[m [m$screen-md-min: 992px;[m
 [m
 /* Large devices (large desktops, 1200px and up) */[m
 $screen-lg-min: 1200px;[m
[32m+[m
[32m+[m[32m/* Layout  */[m
[32m+[m[32m$navbar-height: 60px;[m
[1mdiff --git a/source/stylesheets/layout/_footer.css.scss b/source/stylesheets/layout/_footer.css.scss[m
[1mindex c59a159..adb11f6 100644[m
[1m--- a/source/stylesheets/layout/_footer.css.scss[m
[1m+++ b/source/stylesheets/layout/_footer.css.scss[m
[36m@@ -1,7 +1,14 @@[m
[32m+[m[32m/* -------------------------------------[m
[32m+[m[32m * Media Queries[m
[32m+[m[32m * ------------------------------------- */[m
[32m+[m
[32m+[m[32m /* Extra small devices (phones, less than 768px) */[m
[32m+[m[32m/* No media query since this is the default in Bootstrap */[m
[32m+[m
 /* Main class */[m
 footer {[m
   box-shadow: 0 1px 5px 0 rgba(0,0,0,0.07),0 1px 0 0 rgba(0,0,0,0.03);[m
[31m-  background: black;[m
[32m+[m[32m  background: rgba(0,0,0,0.333);[m
   transition: all 0.3s ease;[m
   display: flex;[m
   height: 60px;[m
[36m@@ -33,3 +40,23 @@[m [mfooter {[m
   color: $body-bg;[m
   text-decoration: none;[m
 }[m
[32m+[m
[32m+[m[32m/* Small devices (tablets, 768px and up) */[m
[32m+[m
[32m+[m[32m/* Medium devices (desktops, 992px and up) */[m
[32m+[m[32m@media (min-width: $screen-md-min) {[m
[32m+[m[32m  footer {[m
[32m+[m[32m  position:fixed;[m
[32m+[m[32m  box-shadow: 0 1px 5px 0 rgba(0,0,0,0.07),0 1px 0 0 rgba(0,0,0,0.03);[m
[32m+[m[32m  background: $gray-darker;[m
[32m+[m[32m  transition: all 0.3s ease;[m
[32m+[m[32m  display: flex;[m
[32m+[m[32m  height: 60px;[m
[32m+[m[32m  padding: 0px 30px;[m
[32m+[m[32m  align-items: center;[m
[32m+[m[32m  justify-content: space-between;[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m
[32m+[m[32m/* Large devices (large desktops, 1200px and up) */[m
[1mdiff --git a/source/stylesheets/layout/_navbar.css.scss b/source/stylesheets/layout/_navbar.css.scss[m
[1mindex ecb18e2..2a7d864 100644[m
[1m--- a/source/stylesheets/layout/_navbar.css.scss[m
[1m+++ b/source/stylesheets/layout/_navbar.css.scss[m
[36m@@ -1,10 +1,10 @@[m
 /* Main class */[m
 .navbar-portfolio {[m
   box-shadow: 0 1px 5px 0 rgba(0,0,0,0.07),0 1px 0 0 rgba(0,0,0,0.03);[m
[31m-  background: black;[m
[32m+[m[32m  background: rgba(0,0,0,0.333);[m
   transition: all 0.3s ease;[m
   display: flex;[m
[31m-  height: 60px;[m
[32m+[m[32m  height: $navbar-height;[m
   padding: 0px 30px;[m
   align-items: center;[m
   justify-content: space-between;[m
[36m@@ -19,11 +19,22 @@[m
   width: 100%;[m
 }[m
 [m
[31m-/* Navbar logo */[m
[31m-.navbar-portfolio-brand img {[m
[31m-  width: 50px;[m
[32m+[m[32m#navbar-portfolio-fixed-home {[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m/* Modal flex-box */[m
[32m+[m[32m.modal-flex-box {[m
[32m+[m[32m  display: flex;[m
[32m+[m[32m  align-items: center;[m
[32m+[m[32m  justify-content: space-around;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m/* Modal flex-item */[m
[32m+[m[32m.modal-flex-item {[m
[32m+[m[32m  flex: 0 0 auto;[m
 }[m
 [m
[32m+[m
 /* Navbar right section (with form, links, button) */[m
 .navbar-portfolio-right {[m
   display: flex;[m
[36m@@ -41,7 +52,8 @@[m
 /* Navbar standard link */[m
 .navbar-portfolio-link {[m
   color: $gray-lighter;[m
[31m-  font-size: 14px;[m
[32m+[m[32m  font-size: 16px;[m
[32m+[m[32m  font-weight: bold;[m
 }[m
 .navbar-portfolio-link:hover {[m
   color: $body-bg;[m
[36m@@ -66,11 +78,54 @@[m
 }[m
 [m
 /* Navbar dropdown menu */[m
[31m-.navbar-portfolio-dropdown-menu {[m
[31m-  margin-top: 15px;[m
[31m-  box-shadow: 1px 1px 4px #E6E6E6;[m
[31m-  border-color: #E6E6E6;[m
[32m+[m[32m/* .navbar-portfolio-dropdown-menu */[m
[32m+[m[32m.overlay {[m
[32m+[m[32m  height: 100vh;[m
[32m+[m[32m  background: $gray-darker;[m
[32m+[m[32m  display: none;[m
[32m+[m[32m  position: fixed;[m
[32m+[m[32m  top: 0%;[m
[32m+[m[32m  left: 0%;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.close {[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  right: 32px;[m
[32m+[m[32m  top: 32px;[m
[32m+[m[32m  width: 50px;[m
[32m+[m[32m  height: 50px;[m
[32m+[m[32m  color: white;[m
[32m+[m[32m  opacity: 0.3;[m
[32m+[m[32m}[m
[32m+[m[32m.close:hover {[m
[32m+[m[32m  opacity: 1;[m
 }[m
[32m+[m[32m.close:before, .close:after {[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 15px;[m
[32m+[m[32m  content: ' ';[m
[32m+[m[32m  height: 33px;[m
[32m+[m[32m  width: 2px;[m
[32m+[m[32m  background-color: white;[m
[32m+[m[32m}[m
[32m+[m[32m.close:before {[m
[32m+[m[32m  transform: rotate(45deg);[m
[32m+[m[32m}[m
[32m+[m[32m.close:after {[m
[32m+[m[32m  transform: rotate(-45deg);[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.nav-modal-margin {[m
[32m+[m[32m  margin: 10px;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m[32m.dropdown-menu > li > a {[m
[32m+[m[32m  color: $gray-lighter;[m
[32m+[m[32m  text-align: center;[m
[32m+[m[32m}[m
[32m+[m
 .navbar-portfolio-dropdown-menu li > a {[m
   transition: color 0.3s ease;[m
   font-weight: lighter !important;[m
[1mdiff --git a/source/stylesheets/layout/_utilities.css.scss b/source/stylesheets/layout/_utilities.css.scss[m
[1mindex 05dbea8..ce01666 100644[m
[1m--- a/source/stylesheets/layout/_utilities.css.scss[m
[1m+++ b/source/stylesheets/layout/_utilities.css.scss[m
[36m@@ -4,38 +4,13 @@[m
  * Feel free to change them and create your own[m
  * ------------------------------------- */[m
 [m
[31m-h1, h2, h3, h4, h5, h6, p {[m
[31m-  margin: 0 0 0.75em;[m
[31m-}[m
[31m-[m
[31m-h1:last-child, h2:last-child, h3:last-child,[m
[31m-h4:last-child, h5:last-child, h6:last-child,[m
[31m-p:last-child {[m
[31m-    margin: 0;[m
[31m-}[m
 [m
[31m-body {[m
[31m-  background: #283E51; /* fallback for old browsers */[m
[31m-  background: -webkit-linear-gradient(to left, #4B79A1, #283E51); /* Chrome 10-25, Safari 5.1-6 */[m
[31m-  background: linear-gradient(to left, #4B79A1 , #283E51); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */[m
[31m-  color: $gray-lighter;[m
[31m-}[m
[31m-[m
[31m-figcaption {[m
[31m-padding: 10px;[m
[31m-}[m
 [m
 // Form font color[m
 .form-control {[m
   color: $gray-lighter;[m
 }[m
 [m
[31m-// Paddings[m
[31m-.padded {[m
[31m-  padding-top: 4em;[m
[31m-  padding-bottom: 0.75em;[m
[31m-}[m
[31m-[m
 // Backgrounds[m
 .bg-text {[m
   background: #4a4a4a;[m
[36m@@ -50,125 +25,83 @@[m [mpadding: 10px;[m
   background: #3b5998;[m
 }[m
 [m
[31m-/* Index-page flex-box */[m
[31m-.index-flex-box {[m
[31m-  display: flex;[m
[31m-  align-items: center;[m
[31m-  justify-content: space-between;[m
[31m-}[m
[31m-[m
[31m-/* Index-page flex-item */[m
[31m-.index-flex-item {[m
[31m-  flex: 0 0 auto;[m
[31m-}[m
[31m-[m
[31m-/* Contact-page flex-box */[m
[31m-.contact-flex-box {[m
[31m-  display: flex;[m
[31m-  align-items: center;[m
[31m-  justify-content: space-around;[m
[31m-}[m
[31m-[m
[31m-/* Contact-page flex-item */[m
[31m-.contact-flex-item {[m
[31m-  flex: 1 0 auto;[m
[31m-}[m
[31m-.container {[m
[31m-  width: 90%;[m
[31m-}[m
[31m-/*[m
[31m-Extra small devices (phones, less than 768px)[m
[31m-No media query since this is the default in Bootstrap[m
[31m- */[m
[31m-/* Small devices (tablets, 768px and up) */[m
[31m-@media (min-width: $screen-sm-min) {[m
[31m- .banner {[m
[31m-   color: red;[m
[31m-   text-align: center;[m
[31m-   height: 100vh;[m
[31m-   /* if you have a 70px navbar => height: calc(100vh - 70px); */[m
[31m-   background-size: cover !important;[m
[31m-   display: flex;[m
[31m-   align-items: center;[m
[31m-   justify-content: center;[m
[31m-   background: linear-gradient(-225deg, rgba(0,101,168,0.6) 0%, rgba(0,36,61,0.6) 50%),[m
[31m-   image-url("labtop_on_table.jpeg");[m
[31m- }[m
[31m-  /* .banner {[m
[31m-  background-image:linear-gradient(rgba(0,0,0,0.4), rgba(0,0,0,0.7)),[m
[31m-  image-url('labtop_on_table.jpeg');[m
[31m-  background-position: center center;[m
[31m-  background-repeat: no-repeat;[m
[31m-  background-image: fixed;[m
[31m-  } */[m
[31m-[m
[31m-  .banner h1 {[m
[31m-    font-size: 50px;[m
[31m-    font-weight: bold;[m
[31m-    text-shadow: 0px 1px rgba(0, 0, 0, 0.2);[m
[31m-  }[m
[31m-  .banner p {[m
[31m-    font-size: 20px;[m
[31m-    font-weight: lighter;[m
[31m-    color: rgba(255, 255, 255, 0.7);[m
[31m-    margin-bottom: 20px;[m
[31m-  }[m
[31m-}[m
[31m-[m
[31m-// Medium devices (desktops, 992px and up)[m
[31m-@media (min-width: $screen-md-min) {[m
[31m-[m
[31m-.banner {[m
[31m-    color: orange;[m
[31m-    text-align: center;[m
[31m-    height: 100vh;[m
[31m-    /* if you have a 70px navbar => height: calc(100vh - 70px); */[m
[31m-    background-size: cover !important;[m
[31m-    display: flex;[m
[31m-    align-items: center;[m
[31m-    justify-content: center;[m
[31m-    background-image: image-url("labtop_on_table.jpeg");[m
[31m-    background-image: linear-gradient(-225deg, rgba(0,101,168,0.6) 0%, rgba(0,36,61,0.6) 50%);[m
[31m-     }[m
[31m-  .banner h1 {[m
[31m-    font-size: 75px;[m
[31m-    font-weight: bold;[m
[31m-    text-shadow: 0px 1px rgba(0, 0, 0, 0.2);[m
[31m-  }[m
[31m-  .banner p {[m
[31m-    font-size: 50px;[m
[31m-    font-weight: lighter;[m
[31m-    color: rgba(255, 255, 255, 0.7);[m
[31m-    margin-bottom: 20px;[m
[31m-  }[m
[31m-[m
[31m-}[m
[31m-[m
[31m-// Large devices (large desktops, 1200px and up)[m
[31m-@media (min-width: $screen-lg-min) {[m
[31m-[m
[31m-.banner {[m
[31m-    color: $body-bg;[m
[31m-    text-align: center;[m
[31m-    height: 100vh;[m
[31m-    /* if you have a 70px navbar => height: calc(100vh - 70px); */[m
[31m-    background-size: cover !important;[m
[31m-    display: flex;[m
[31m-    align-items: center;[m
[31m-    justify-content: center;[m
[31m-    background-image: linear-gradient(-225deg, rgba(0,0,0,0.6) 0%, rgba(0,0,0,0.4) 50%),[m
[31m-    image-url("labtop_on_table.jpeg");[m
[31m-  }[m
[31m-  .banner h1 {[m
[31m-    font-size: 100px;[m
[31m-    font-weight: bold;[m
[31m-    text-shadow: 0px 1px rgba(0, 0, 0, 0.2);[m
[31m-  }[m
[31m-  .banner p, h1>small {[m
[31m-    font-size: 75px;[m
[31m-    font-weight: lighter;[m
[31m-    color: $gray-lighter;[m
[31m-    margin-bottom: 20px;[m
[31m-  }[m
[32m+[m[32m//colorful skill's bargraph[m
[32m+[m
[32m+[m[32m.bargraph {[m
[32m+[m[32m    list-style: none;[m
[32m+[m[32m    padding-top: 20px;[m
[32m+[m[32m    width:560px;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32mul.bargraph li {[m
[32m+[m[32m    height: 35px;[m
[32m+[m[32m    color: white;[m
[32m+[m[32m    text-align: left;[m
[32m+[m[32m    font-style: italic;[m
[32m+[m[32m    font-weight:bolder;[m
[32m+[m[32m    font-size: 14px;[m
[32m+[m[32m    line-height: 35px;[m
[32m+[m[32m    padding: 0px 20px;[m
[32m+[m[32m    margin-bottom: 5px;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32mul.bargraph li.barfill {[m
[32m+[m[32mbackground: rgba(0,0,0,0.333);[m
[32m+[m[32mwidth:100%;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mul.bargraph li.redpink {[m
[32m+[m[32mbackground: #EF465B;[m
[32m+[m[32mwidth:95%;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mul.bargraph li.pink {[m
[32m+[m[32mbackground: #E55A6B;[m
[32m+[m[32mwidth:93%;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mul.bargraph li.orangered {[m
[32m+[m[32mbackground: #E28159;[m
[32m+[m[32mwidth:85%;[m
[32m+[m[32m}[m
 [m
[32m+[m[32mul.bargraph li.orange {[m
[32m+[m[32mbackground: #F99C1C;[m
[32m+[m[32mwidth:75%;[m
 }[m
[32m+[m
[32m+[m[32mul.bargraph li.yellow {[m
[32m+[m[32mbackground: #F4D41E;[m
[32m+[m[32mwidth:74%;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mul.bargraph li.green {[m
[32m+[m[32mbackground: #97B546;[m
[32m+[m[32mwidth:55%;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mul.bargraph li.greenbright {[m
[32m+[m[32mbackground: #36B669;[m
[32m+[m[32mwidth:40%;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mul.bargraph li.greenblue {[m
[32m+[m[32mbackground: #42BDA5;[m
[32m+[m[32mwidth:30%;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mul.bargraph li.blue {[m
[32m+[m[32mbackground: #00AEEF;[m
[32m+[m[32mwidth:30%;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mul.bargraph li.xaxis {[m
[32m+[m[32mbackground: url(../images/x-axis.jpg);[m
[32m+[m[32mheight: 49px;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mul.bargraph li.xaxis {[m
[32m+[m[32mbackground: url(../images/x-axis.jpg);[m
[32m+[m[32mheight: 49px;[m
[32m+[m[32m}[m
[41m+[m
[1mdiff --git a/source/stylesheets/pages/_home.scss b/source/stylesheets/pages/_home.scss[m
[1mindex e69de29..ce0e1f8 100644[m
[1m--- a/source/stylesheets/pages/_home.scss[m
[1m+++ b/source/stylesheets/pages/_home.scss[m
[36m@@ -0,0 +1,15 @@[m
[32m+[m[32m/* Index-page flex-box */[m
[32m+[m[32m.index-flex-box {[m
[32m+[m[32m  display: flex;[m
[32m+[m[32m  align-items: center;[m
[32m+[m[32m  justify-content: space-between;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m/* Index-page flex-item */[m
[32m+[m[32m.index-flex-item {[m
[32m+[m[32m  flex: 0 0 auto;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m footer #hompage {[m
[32m+[m[32m     display: none;[m
[32m+[m[32m }[m
