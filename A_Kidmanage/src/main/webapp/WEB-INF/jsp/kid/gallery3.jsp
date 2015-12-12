<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>

<head>
  <title>남자반 앨범</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <!-- stylesheets -->
  <link href="../css/style.css" rel="stylesheet" type="text/css" />
  <link href="../css/portfolio_one.css" rel="stylesheet" type="text/css" />
  <link href="../css/light.css" rel="stylesheet" type="text/css" />
  <!-- we only want the thunbnails to display when javascript is disabled -->
  <script type="text/javascript">
    document.write('<style>.noscript { display: none; }</style>');
  </script>
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="../js/modernizr-1.5.min.js"></script>
  
  
  
  <style type="text/css">
  /* Button */

  input[type="submit"],
  input[type="reset"],
  input[type="button"],
  button,
  .button {
    -moz-appearance: none;
    -webkit-appearance: none;
    -ms-appearance: none;
    appearance: none;
    -moz-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
    -webkit-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
    -ms-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
    transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
    border-radius: 2.5em;
    border: 0;
    cursor: pointer;
    display: inline-block;
    font-weight: 700;
    height: 2.85em;
    line-height: 2.95em;
    min-width: 10em;
    padding: 0 1.5em;
    text-align: center;
    text-decoration: none;
    text-transform: uppercase;
    white-space: nowrap;
  }

    input[type="submit"].icon,
    input[type="reset"].icon,
    input[type="button"].icon,
    button.icon,
    .button.icon {
      padding-left: 1.35em;
    }

      input[type="submit"].icon:before,
      input[type="reset"].icon:before,
      input[type="button"].icon:before,
      button.icon:before,
      .button.icon:before {
        margin-right: 0.5em;
      }

    input[type="submit"].fit,
    input[type="reset"].fit,
    input[type="button"].fit,
    button.fit,
    .button.fit {
      display: block;
      margin: 0 0 1em 0;
      width: 100%;
    }

    input[type="submit"].small,
    input[type="reset"].small,
    input[type="button"].small,
    button.small,
    .button.small {
      font-size: 0.8em;
    }

    input[type="submit"].big,
    input[type="reset"].big,
    input[type="button"].big,
    button.big,
    .button.big {
      font-size: 1.2em;
      height: 3.25em;
      line-height: 3.25em;
      padding: 0 2.5em;
    }

    input[type="submit"].disabled, input[type="submit"]:disabled,
    input[type="reset"].disabled,
    input[type="reset"]:disabled,
    input[type="button"].disabled,
    input[type="button"]:disabled,
    button.disabled,
    button:disabled,
    .button.disabled,
    .button:disabled {
      cursor: default;
      opacity: 0.25;
    }

    @media screen and (max-width: 980px) {

      input[type="submit"].big,
      input[type="reset"].big,
      input[type="button"].big,
      button.big,
      .button.big {
        font-size: 1em;
      }

    }

    @media screen and (max-width: 480px) {

      input[type="submit"],
      input[type="reset"],
      input[type="button"],
      button,
      .button {
        padding: 0;
      }

    }

  input[type="submit"],
  input[type="reset"],
  input[type="button"],
  button,
  .button {
    background-color: #25383B;
    box-shadow: none;
    color: #fff !important;
  }

    input[type="submit"].icon:before,
    input[type="reset"].icon:before,
    input[type="button"].icon:before,
    button.icon:before,
    .button.icon:before {
      color: #999;
    }

    input[type="submit"]:hover,
    input[type="reset"]:hover,
    input[type="button"]:hover,
    button:hover,
    .button:hover {
      background-color: #2f474b;
    }

    input[type="submit"]:active,
    input[type="reset"]:active,
    input[type="button"]:active,
    button:active,
    .button:active {
      background-color: #1b292b;
    }

    input[type="submit"].special,
    input[type="reset"].special,
    input[type="button"].special,
    button.special,
    .button.special {
      background-color: #51BAA4;
      box-shadow: none;
      color: #fff !important;
    }

      input[type="submit"].special:hover,
      input[type="reset"].special:hover,
      input[type="button"].special:hover,
      button.special:hover,
      .button.special:hover {
        background-color: #63c1ae;
      }

      input[type="submit"].special:active,
      input[type="reset"].special:active,
      input[type="button"].special:active,
      button.special:active,
      .button.special:active {
        background-color: #45ad97;
      }

    input[type="submit"].alt,
    input[type="reset"].alt,
    input[type="button"].alt,
    button.alt,
    .button.alt {
      background-color: transparent;
      box-shadow: inset 0 0 0 2px #51BAA4;
      color: #51BAA4 !important;
    }

      input[type="submit"].alt:hover,
      input[type="reset"].alt:hover,
      input[type="button"].alt:hover,
      button.alt:hover,
      .button.alt:hover {
        background-color: rgba(144, 144, 144, 0.075);
      }

      input[type="submit"].alt:active,
      input[type="reset"].alt:active,
      input[type="button"].alt:active,
      button.alt:active,
      .button.alt:active {
        background-color: rgba(144, 144, 144, 0.2);
      }
      
      
      
      .wrapper.style1 input[type="submit"],
      .wrapper.style1 input[type="reset"],
      .wrapper.style1 input[type="button"],
      .wrapper.style1 button,
      .wrapper.style1 .button {
        background-color: #555;
        box-shadow: none;
        color: #EEE !important;
      }

        .wrapper.style1 input[type="submit"].icon:before,
        .wrapper.style1 input[type="reset"].icon:before,
        .wrapper.style1 input[type="button"].icon:before,
        .wrapper.style1 button.icon:before,
        .wrapper.style1 .button.icon:before {
          color: #bbb;
        }

        .wrapper.style1 input[type="submit"]:hover,
        .wrapper.style1 input[type="reset"]:hover,
        .wrapper.style1 input[type="button"]:hover,
        .wrapper.style1 button:hover,
        .wrapper.style1 .button:hover {
          background-color: #626262;
        }

        .wrapper.style1 input[type="submit"]:active,
        .wrapper.style1 input[type="reset"]:active,
        .wrapper.style1 input[type="button"]:active,
        .wrapper.style1 button:active,
        .wrapper.style1 .button:active {
          background-color: #484848;
        }

        .wrapper.style1 input[type="submit"].special,
        .wrapper.style1 input[type="reset"].special,
        .wrapper.style1 input[type="button"].special,
        .wrapper.style1 button.special,
        .wrapper.style1 .button.special {
          background-color: #51BAA4;
          box-shadow: none;
          color: #fff !important;
        }

          .wrapper.style1 input[type="submit"].special:hover,
          .wrapper.style1 input[type="reset"].special:hover,
          .wrapper.style1 input[type="button"].special:hover,
          .wrapper.style1 button.special:hover,
          .wrapper.style1 .button.special:hover {
            background-color: #63c1ae;
          }

          .wrapper.style1 input[type="submit"].special:active,
          .wrapper.style1 input[type="reset"].special:active,
          .wrapper.style1 input[type="button"].special:active,
          .wrapper.style1 button.special:active,
          .wrapper.style1 .button.special:active {
            background-color: #45ad97;
          }

        .wrapper.style1 input[type="submit"].alt,
        .wrapper.style1 input[type="reset"].alt,
        .wrapper.style1 input[type="button"].alt,
        .wrapper.style1 button.alt,
        .wrapper.style1 .button.alt {
          background-color: transparent;
          box-shadow: inset 0 0 0 2px #51BAA4;
          color: #51BAA4 !important;
        }

          .wrapper.style1 input[type="submit"].alt:hover,
          .wrapper.style1 input[type="reset"].alt:hover,
          .wrapper.style1 input[type="button"].alt:hover,
          .wrapper.style1 button.alt:hover,
          .wrapper.style1 .button.alt:hover {
            background-color: #fff;
          }

          .wrapper.style1 input[type="submit"].alt:active,
          .wrapper.style1 input[type="reset"].alt:active,
          .wrapper.style1 input[type="button"].alt:active,
          .wrapper.style1 button.alt:active,
          .wrapper.style1 .button.alt:active {
            background-color: rgba(144, 144, 144, 0.2);
          }
          
          
          
          
          
          
          .wrapper.style2 input[type="submit"],
      .wrapper.style2 input[type="reset"],
      .wrapper.style2 input[type="button"],
      .wrapper.style2 button,
      .wrapper.style2 .button {
        background-color: #fff;
        box-shadow: none;
        color: #1E2832 !important;
      }

        .wrapper.style2 input[type="submit"].icon:before,
        .wrapper.style2 input[type="reset"].icon:before,
        .wrapper.style2 input[type="button"].icon:before,
        .wrapper.style2 button.icon:before,
        .wrapper.style2 .button.icon:before {
          color: #a5a9ad;
        }

        .wrapper.style2 input[type="submit"]:hover,
        .wrapper.style2 input[type="reset"]:hover,
        .wrapper.style2 input[type="button"]:hover,
        .wrapper.style2 button:hover,
        .wrapper.style2 .button:hover {
          background-color: white;
        }

        .wrapper.style2 input[type="submit"]:active,
        .wrapper.style2 input[type="reset"]:active,
        .wrapper.style2 input[type="button"]:active,
        .wrapper.style2 button:active,
        .wrapper.style2 .button:active {
          background-color: #f2f2f2;
        }

        .wrapper.style2 input[type="submit"].special,
        .wrapper.style2 input[type="reset"].special,
        .wrapper.style2 input[type="button"].special,
        .wrapper.style2 button.special,
        .wrapper.style2 .button.special {
          background-color: #51BAA4;
          box-shadow: none;
          color: #fff !important;
        }

          .wrapper.style2 input[type="submit"].special:hover,
          .wrapper.style2 input[type="reset"].special:hover,
          .wrapper.style2 input[type="button"].special:hover,
          .wrapper.style2 button.special:hover,
          .wrapper.style2 .button.special:hover {
            background-color: #63c1ae;
          }

          .wrapper.style2 input[type="submit"].special:active,
          .wrapper.style2 input[type="reset"].special:active,
          .wrapper.style2 input[type="button"].special:active,
          .wrapper.style2 button.special:active,
          .wrapper.style2 .button.special:active {
            background-color: #45ad97;
          }

        .wrapper.style2 input[type="submit"].alt,
        .wrapper.style2 input[type="reset"].alt,
        .wrapper.style2 input[type="button"].alt,
        .wrapper.style2 button.alt,
        .wrapper.style2 .button.alt {
          background-color: transparent;
          box-shadow: inset 0 0 0 2px #fff;
          color: #fff !important;
        }

          .wrapper.style2 input[type="submit"].alt:hover,
          .wrapper.style2 input[type="reset"].alt:hover,
          .wrapper.style2 input[type="button"].alt:hover,
          .wrapper.style2 button.alt:hover,
          .wrapper.style2 .button.alt:hover {
            background-color: rgba(255, 255, 255, 0.05);
          }

          .wrapper.style2 input[type="submit"].alt:active,
          .wrapper.style2 input[type="reset"].alt:active,
          .wrapper.style2 input[type="button"].alt:active,
          .wrapper.style2 button.alt:active,
          .wrapper.style2 .button.alt:active {
            background-color: rgba(255, 255, 255, 0.1);
          }
          
          
          
          
          
          
          
      .wrapper.style3 input[type="submit"],
      .wrapper.style3 input[type="reset"],
      .wrapper.style3 input[type="button"],
      .wrapper.style3 button,
      .wrapper.style3 .button {
        background-color: #fff;
        box-shadow: none;
        color: #1E2832 !important;
      }

        .wrapper.style3 input[type="submit"].icon:before,
        .wrapper.style3 input[type="reset"].icon:before,
        .wrapper.style3 input[type="button"].icon:before,
        .wrapper.style3 button.icon:before,
        .wrapper.style3 .button.icon:before {
          color: #a5a9ad;
        }

        .wrapper.style3 input[type="submit"]:hover,
        .wrapper.style3 input[type="reset"]:hover,
        .wrapper.style3 input[type="button"]:hover,
        .wrapper.style3 button:hover,
        .wrapper.style3 .button:hover {
          background-color: white;
        }

        .wrapper.style3 input[type="submit"]:active,
        .wrapper.style3 input[type="reset"]:active,
        .wrapper.style3 input[type="button"]:active,
        .wrapper.style3 button:active,
        .wrapper.style3 .button:active {
          background-color: #f2f2f2;
        }

        .wrapper.style3 input[type="submit"].special,
        .wrapper.style3 input[type="reset"].special,
        .wrapper.style3 input[type="button"].special,
        .wrapper.style3 button.special,
        .wrapper.style3 .button.special {
          background-color: #51BAA4;
          box-shadow: none;
          color: #fff !important;
        }

          .wrapper.style3 input[type="submit"].special:hover,
          .wrapper.style3 input[type="reset"].special:hover,
          .wrapper.style3 input[type="button"].special:hover,
          .wrapper.style3 button.special:hover,
          .wrapper.style3 .button.special:hover {
            background-color: #63c1ae;
          }

          .wrapper.style3 input[type="submit"].special:active,
          .wrapper.style3 input[type="reset"].special:active,
          .wrapper.style3 input[type="button"].special:active,
          .wrapper.style3 button.special:active,
          .wrapper.style3 .button.special:active {
            background-color: #45ad97;
          }

        .wrapper.style3 input[type="submit"].alt,
        .wrapper.style3 input[type="reset"].alt,
        .wrapper.style3 input[type="button"].alt,
        .wrapper.style3 button.alt,
        .wrapper.style3 .button.alt {
          background-color: transparent;
          box-shadow: inset 0 0 0 2px #fff;
          color: #fff !important;
        }

          .wrapper.style3 input[type="submit"].alt:hover,
          .wrapper.style3 input[type="reset"].alt:hover,
          .wrapper.style3 input[type="button"].alt:hover,
          .wrapper.style3 button.alt:hover,
          .wrapper.style3 .button.alt:hover {
            background-color: rgba(255, 255, 255, 0.05);
          }

          .wrapper.style3 input[type="submit"].alt:active,
          .wrapper.style3 input[type="reset"].alt:active,
          .wrapper.style3 input[type="button"].alt:active,
          .wrapper.style3 button.alt:active,
          .wrapper.style3 .button.alt:active {
            background-color: rgba(255, 255, 255, 0.1);
          }
          
          
          
          
          #nav > ul.links > li > a:not(.button) {
            border: 0;
            border-top: solid 1px transparent;
            color: inherit;
            display: block;
            line-height: 3.5em;
            text-decoration: none;
          }

          #nav > ul.links > li > .button {
            display: block;
            margin: 0.5em 0 0 0;
          }

          #nav > ul.links > li:first-child > a:not(.button) {
            border-top: 0 !important;
          }
          
          
          
          
          
          
      
      
  </style>
  
</head>

<body>
  <div id="main">

        <!-- begin header -->
    <header>
      <div id="logo" style="margin-bottom: 0%; margin-top: 2%; font-size: 11px;">
        <h1>
          <a href="login.do">다인이</a>유치원
        </h1>
      </div>
      <nav>
        <ul class="sf-menu" id="nav" style="margin-bottom: 5%;">
          <li class="selected" style="font-size: 12px;"><a href="index.html">공지사항</a></li>
          <li style="font-size: 12px;"><a href="#">우리 아이들</a>
            <ul>
              <li style="font-size: 12px;"><a href="portfolio_one.html">나비반</a></li>
              <li style="font-size: 12px;"><a href="portfolio_two.html">호랑이반</a></li>
              <li style="font-size: 12px;"><a href="portfolio_two.html">남자반</a></li>
            </ul></li>
          <li style="font-size: 12px;"><a href="#">앨범</a>
            <ul>
              <li><a href="gallery.do">나비반</a></li>
              <li><a href="portfolio_two.html">호랑이반</a></li>
              <li><a href="portfolio_two.html">남자반</a></li>
            </ul></li>
          <li style="font-size: 12px;"><a href="blog.html">식단표</a></li>
        </ul>
      </nav>
    </header>
    <!-- end header -->

    <!-- begin content -->
    <div id="site_content">
      <!-- start gallery HTML containers -->
      <div id="gallery" class="content">
        <div class="slideshow-container">
          <div id="loading" class="loader"></div>
          <div id="slideshow" class="slideshow"></div>
        </div>
      </div>
      <div id="thumb-container">
        <div id="thumbs" class="navigation">
          <h1>나비반 앨범</h1>
          
          <ul class="actions">
              <li><input type="submit" class="special" value="Submit" /></li>
              <li><input type="reset" class="alt" value="Reset" /></li>
            </ul>
            
          <ul class="thumbs noscript">
            <li>
              <a class="thumb" href="../images/portfolio_one/1.jpg"><img src="../images/portfolio_one/1_thumb.jpg" alt="one" /></a>
              <div class="caption">
                <div class="image-title portfolio_one">&quot;Pier by the sea, Fowey, Cornwall, UK&quot;</div>
              </div>
            </li>
            <li>
              <a class="thumb" href="../images/portfolio_one/2.jpg"><img src="../images/portfolio_one/2_thumb.jpg" alt="two" /></a>
              <div class="caption">
                <div class="image-title portfolio_one">&quot;Cheeky monkey and his friend - wooden rabbit&quot;</div>
              </div>
            </li>
            <li>
              <a class="thumb" href="../images/portfolio_one/3.jpg"><img src="../images/portfolio_one/3_thumb.jpg" alt="three" /></a>
              <div class="caption">
                <div class="image-title portfolio_one">&quot;A beautiful rose looking for the sunlight&quot;</div>
              </div>
            </li>
            <li>
              <a class="thumb" href="../images/portfolio_one/4.jpg"><img src="../images/portfolio_one/4_thumb.jpg" alt="four" /></a>
              <div class="caption">
                <div class="image-title portfolio_one">&quot;Number 7 derailment - playroom style&quot;</div>
              </div>
            </li>
            <li>
              <a class="thumb" href="../images/portfolio_one/5.jpg"><img src="../images/portfolio_one/5_thumb.jpg" alt="five" /></a>
              <div class="caption">
                <div class="image-title portfolio_one">&quot;A small boat on the big ocean (Croyde, Devon, UK)&quot;</div>
              </div>
            </li>
            <li>
              <a class="thumb" href="../images/portfolio_one/6.jpg"><img src="../images/portfolio_one/6_thumb.jpg" alt="six" /></a>
              <div class="caption">
                <div class="image-title portfolio_one">&quot;One, two, three daisies in the grass&quot;</div>
              </div>
            </li>
            <li>
              <a class="thumb" href="../images/portfolio_one/7.jpg"><img src="../images/portfolio_one/7_thumb.jpg" alt="seven" /></a>
              <div class="caption">
                <div class="image-title portfolio_one">&quot;Abstract angles, dark and light&quot;</div>
              </div>
            </li>
            <li>
              <a class="thumb" href="../images/portfolio_one/8.jpg"><img src="../images/portfolio_one/8_thumb.jpg" alt="eight" /></a>
              <div class="caption">
                <div class="image-title portfolio_one">&quot;Water fountain, lake and trees&quot;</div>
              </div>
            </li>
            <li>
              <a class="thumb" href="../images/portfolio_one/9.jpg"><img src="../images/portfolio_one/9_thumb.jpg" alt="nine" /></a>
              <div class="caption">
                <div class="image-title portfolio_one">&quot;A glimpse of light through the trees (Malvern, UK)&quot;</div>
              </div>
            </li>
            <li>
              <a class="thumb" href="../images/portfolio_one/10.jpg"><img src="../images/portfolio_one/10_thumb.jpg" alt="ten" /></a>
              <div class="caption">
                <div class="image-title portfolio_one">&quot;Waves and Rocks (Croyde, Devon, UK)&quot;</div>
              </div>
            </li>
            <li>
              <a class="thumb" href="../images/portfolio_one/2.jpg"><img src="../images/portfolio_one/2_thumb.jpg" alt="two" /></a>
              <div class="caption">
                <div class="image-title portfolio_one">&quot;Cheeky monkey and his friend - wooden rabbit&quot;</div>
              </div>
            </li>
            <li>
              <a class="thumb" href="../images/portfolio_one/4.jpg"><img src="../images/portfolio_one/4_thumb.jpg" alt="four" /></a>
              <div class="caption">
                <div class="image-title portfolio_one">&quot;Number 7 derailment - playroom style&quot;</div>
              </div>
            </li>
            <li>
              <a class="thumb" href="../images/portfolio_one/6.jpg"><img src="../images/portfolio_one/6_thumb.jpg" alt="six" /></a>
              <div class="caption">
                <div class="image-title portfolio_one">&quot;One, two, three daisies in the grass&quot;</div>
              </div>
            </li>
            <li>
              <a class="thumb" href="../images/portfolio_one/8.jpg"><img src="../images/portfolio_one/8_thumb.jpg" alt="eight" /></a>
              <div class="caption">
                <div class="image-title portfolio_one">&quot;Water fountain, lake and trees&quot;</div>
              </div>
            </li>
            <li>
              <a class="thumb" href="../images/portfolio_one/10.jpg"><img src="../images/portfolio_one/10_thumb.jpg" alt="ten" /></a>
              <div class="caption">
                <div class="image-title portfolio_one">&quot;Waves and Rocks (Croyde, Devon, UK)&quot;</div>
              </div>
            </li>
            <li>
              <a class="thumb" href="../images/portfolio_one/1.jpg"><img src="../images/portfolio_one/1_thumb.jpg" alt="one" /></a>
              <div class="caption">
                <div class="image-title portfolio_one">&quot;Pier by the sea, Fowey, Cornwall, UK&quot;</div>
              </div>
            </li>
            <li>
              <a class="thumb" href="../images/portfolio_one/3.jpg"><img src="../images/portfolio_one/3_thumb.jpg" alt="three" /></a>
              <div class="caption">
                <div class="image-title portfolio_one">&quot;A beautiful rose looking for the sunlight&quot;</div>
              </div>
            </li>
            <li>
              <a class="thumb" href="../images/portfolio_one/5.jpg"><img src="../images/portfolio_one/5_thumb.jpg" alt="five" /></a>
              <div class="caption">
                <div class="image-title portfolio_one">&quot;A small boat on the big ocean (Croyde, Devon, UK)&quot;</div>
              </div>
            </li>
            <li>
              <a class="thumb" href="../images/portfolio_one/7.jpg"><img src="../images/portfolio_one/7_thumb.jpg" alt="seven" /></a>
              <div class="caption">
                <div class="image-title portfolio_one">&quot;Abstract angles, dark and light&quot;</div>
              </div>
            </li>
            <li>
              <a class="thumb" href="../images/portfolio_one/9.jpg"><img src="../images/portfolio_one/9_thumb.jpg" alt="nine" /></a>
              <div class="caption">
                <div class="image-title portfolio_one">&quot;A glimpse of light through the trees (Malvern, UK)&quot;</div>
              </div>
            </li>
          </ul>
        </div>
        <div id="controls" class="controls portfolio_one"></div>
        <div id="caption" class="caption-container"></div>
        <div style="clear: both;"></div>
        <!-- end gallery HTML containers -->
      </div>
    </div>
    <!-- end content -->

    <!-- begin footer -->
    <footer>
          <p style="font-size: 15px;">
        Copyright &copy; 2015 다인이유치원. All Rights Reserved. <a
          href="http://www.css3templates.co.uk">Design from 갓지현</a>.
      </p>
      <p><img src="../images/twitter.png" alt="twitter" />&nbsp;
      <img src="../images/facebook.png" alt="facebook" />&nbsp;
      <img src="../images/rss.png" alt="rss" /></p>
    </footer>
    <!-- end footer -->
    
    
    <!-- Standard button -->
<button type="button" class="btn btn-default">Default</button>

<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
<button type="button" class="btn btn-primary">Primary</button>

<!-- Indicates a successful or positive action -->
<button type="button" class="btn btn-success">Success</button>

<!-- Contextual button for informational alert messages -->
<button type="button" class="btn btn-info">Info</button>

<!-- Indicates caution should be taken with this action -->
<button type="button" class="btn btn-warning">Warning</button>

<!-- Indicates a dangerous or potentially negative action -->
<button type="button" class="btn btn-danger">Danger</button>

<!-- Deemphasize a button by making it look like a link while maintaining button behavior -->
<button type="button" class="btn btn-link">Link</button>
    
    
    
  </div>
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="../js/jquery.min.js"></script>
  <script type="text/javascript" src="../js/jquery.easing-sooper.js"></script>
  <script type="text/javascript" src="../js/jquery.sooperfish.js"></script>
  <!-- initialise sooperfish menu -->
  <script type="text/javascript">
    $(document).ready(function() {
      $('ul.sf-menu').sooperfish();
    });
  </script>
  <script type="text/javascript" src="../js/jquery.galleriffic.js"></script>
  <script type="text/javascript" src="../js/jquery.opacityrollover.js"></script>
  <script type="text/javascript">
    jQuery(document).ready(function($) {
      // we only want these styles applied when javascript is enabled
      $('div.navigation').css({'width' : '450px', 'float' : 'left'});
      $('div.content').css('display', 'block');
      // initially set opacity on thumbs and add additional styling for hover effect on thumbs
      var onMouseOutOpacity = 0.67;
      $('#thumbs ul.thumbs li').opacityrollover({
        mouseOutOpacity:   onMouseOutOpacity,
        mouseOverOpacity:  1.0,
        fadeSpeed:         'fast',
        exemptionSelector: '.selected'
      });
      // initialize advanced galleriffic gallery
      var gallery = $('#thumbs').galleriffic({
        delay:                     3500,
        numThumbs:                 10,
        preloadAhead:              10,
        enableTopPager:            false,
        enableBottomPager:         true,
        maxPagesToShow:            7,
        imageContainerSel:         '#slideshow',
        controlsContainerSel:      '#controls',
        captionContainerSel:       '#caption',
        loadingContainerSel:       '#loading',
        renderSSControls:          true,
        renderNavControls:         true,
        playLinkText:              'Play Slideshow',
        pauseLinkText:             'Pause Slideshow',
        prevLinkText:              '&lsaquo; Previous Photo',
        nextLinkText:              'Next Photo &rsaquo;',
        nextPageLinkText:          'Next &rsaquo;',
        prevPageLinkText:          '&lsaquo; Prev',
        enableHistory:             false,
        autoStart:                 false,
        syncTransitions:           true,
        defaultTransitionDuration: 900,
        onSlideChange:             function(prevIndex, nextIndex) {
          // 'this' refers to the gallery, which is an extension of $('#thumbs')
          this.find('ul.thumbs').children()
            .eq(prevIndex).fadeTo('fast', onMouseOutOpacity).end()
            .eq(nextIndex).fadeTo('fast', 1.0);
        }
      });
    });
  </script>
</body>
</html>
