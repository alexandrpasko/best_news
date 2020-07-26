<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output encoding="utf-8" indent="yes" method="html" />
  
  <xsl:template match="/">
    <html>
      <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700%7cMontserrat:400,700&amp;display=swap" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="index.css" media="all" />
        <title><xsl:value-of select="webpage/title" /></title>
        <style>
          
        </style>
      </head>
      
      <body>
       
        <header>
          <div class="wrapper">
            <p>
              <img src="{webpage/logo}" alt="logo" width="55" height="55" />
              <span><xsl:value-of select="webpage/company" /></span>
            </p>
            <ul class="icons">
              <xsl:for-each select="webpage/icons">
                <li>
                  <a href="#" title="{title}"><img src="{icon}" alt="icon" width="25" height="25" /></a>
                </li>
              </xsl:for-each>
            </ul>
          </div>
        </header>
        
        <nav>
          <div class="wrapper">
           
            <!--for mobile styles in the future-->
            
            <!--<p id="menue">menu</p>
            <div id="navcontainer">
              <div id="topbar" class="navbars"></div>
              <div id="middlebar" class="navbars"></div>
              <div id="bottombar" class="navbars"></div>
            </div>-->
              
            <ul class="menu">
              <xsl:for-each select="webpage/navigation/page">
                <li>
                  <a href="#"><xsl:value-of select="." /></a>
                </li>
              </xsl:for-each>
            </ul>
            
            
          </div>
        </nav>
        
        <main>
          <div class="wrapper">
            
            <h1><xsl:value-of select="webpage/title" /></h1>
           
            <div class="partners">
              <xsl:for-each select="webpage/menu/partner">
                <div class="container">
                  <a class="logo" href="{link_url}">
                    <img src="{logo}" alt="logo" width="80" height="80"/>
                  </a>
                  <a class="title" href="{link_url}">
                    <xsl:value-of select="link_title" />
                  </a>
                  <p>
                    <xsl:value-of select="link_url" />
                  </p>
                </div>
              </xsl:for-each>
            </div>
            
            <div class="introduction">
              <xsl:for-each select="webpage/content/text">
                <p>
                  <xsl:value-of select="." />
                </p>
              </xsl:for-each>
              <a href="{webpage/content/cta_link}"><xsl:value-of select="webpage/content/cta" /></a>
            </div>
            
            <div class="clear"></div>
            
          </div>
          
          <div id="image">
            <img src="down-arrow.svg" width="50" height="50" alt="#"/>
            <p>Scroll for more</p>
          </div>
          
        </main>
        
        <section>
          <div class="wrapper">
            <xsl:for-each select="webpage/news/article">
              <xsl:sort select="pablished/@numeric" order="descending"/>
              <div class="article">
                <div class="visual"><img src="{image}" alt="image"/></div>
                <div class="content">
                  <a class="heading" href="{article_url}"><xsl:value-of select="title" /></a>
                  <p class="intro"><xsl:value-of select="intro" /></p>
                  <p class="url"><xsl:value-of select="article_url" /></p>
                  <p class="date"><xsl:value-of select="pablished" /></p>
                  <a class="learn" href="{article_url}">Learn more</a>
                  <a class="learn top" href="{article_url}">News</a>
                </div>
              </div>
            </xsl:for-each>
            <p><a class="loadmore" href="#">Load more</a></p>
          </div>
        </section>
        
        <footer>
          <div class="wrapper">
            
            <p>
              <xsl:for-each select="webpage/menu/partner">
                <a href="{link_url}">
                  <img src="{logo}" alt="logo" width="60" height="60" />
                </a>
              </xsl:for-each>
            </p>
            
          </div>
        </footer>
        
        
      </body>
    </html>
  
  </xsl:template>
  
  
</xsl:stylesheet>