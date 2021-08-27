<!DOCTYPE html>
<html lang="en">
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="twitter:card" content="summary">
  <meta name="twitter:card" content="summary_large_image" />
  <meta name="twitter:title" content="Specifying a Windows Service Description" />
  <meta name="twitter:description" content="You've been Haacked is a blog about Technology, Software, Management, and Open Source. It's full of good stuff.
" />
  <meta name="twitter:url" content="" />
  <meta name="twitter:image" content="https://2.gravatar.com/avatar/cdf546b601bf29a7eb4ca777544d11cd?s=160" /><meta name="twitter:site" content="@haacked" />

  <!-- Begin Jekyll SEO tag v2.7.1 -->
<title>Specifying a Windows Service Description | You’ve Been Haacked</title>
<meta name="generator" content="Jekyll v3.9.0" />
<meta property="og:title" content="Specifying a Windows Service Description" />
<meta name="author" content="Phil Haack" />
<meta property="og:locale" content="en_US" />
<meta name="description" content="You’ve been Haacked is a blog about Technology, Software, Management, and Open Source. It’s full of good stuff." />
<meta property="og:description" content="You’ve been Haacked is a blog about Technology, Software, Management, and Open Source. It’s full of good stuff." />
<meta property="og:site_name" content="You’ve Been Haacked" />
<meta name="twitter:card" content="summary" />
<meta property="twitter:title" content="Specifying a Windows Service Description" />
<script type="application/ld+json">
{"author":{"@type":"Person","name":"Phil Haack"},"@type":"WebPage","description":"You’ve been Haacked is a blog about Technology, Software, Management, and Open Source. It’s full of good stuff.","url":"/articles/specifying-a-windows-service-description.aspx","headline":"Specifying a Windows Service Description","@context":"https://schema.org"}</script>
<!-- End Jekyll SEO tag -->

  <link rel="stylesheet" href="/assets/css/main.css">
  <link type="application/atom+xml" rel="alternate" href="/atom.xml" title="You've Been Haacked" />
  
  <script src="/assets/js/utils.js"></script>
  <script src="/assets/js/slash.js" async></script>
  
	<script src="/assets/js/md5.min.js" async></script>
  <script src="/assets/js/comment-box.js" async></script>
  
  <link href="https://fonts.googleapis.com/css?family=Mate|Open+Sans|Open+Sans+Condensed:300" rel="stylesheet">
</head>

  <body>
    <header class="header" class="inner"><div class="site-header">
  <div class="profilepic">
    
    <img src="https://2.gravatar.com/avatar/cdf546b601bf29a7eb4ca777544d11cd?s=160" alt="Profile Picture" />
    
  </div>

  
  <a class="site-title" rel="author" href="/">You&#39;ve Been Haacked</a>
  
  <div class="site-subtitle">…and you like it</div>
  
  
  
    <nav class="site-nav">
      <ul>
          
          
          
          
          <li><a class="page-link" href="/about/">About</a></li>
          
        
          
          
          
          <li><a class="page-link" href="/archives/">Archives</a></li>
          
        
          
          
          
          <li><a class="page-link" href="/contributors/">Contributors</a></li>
          
        
        
        <li><a class="page-link" href="https://github.com/Haacked/feedback/issues/new">Contact</a></li>
        
      </ul>
    </nav>
  
  <div class="social-footer">
    <ul class="social-media-list">
  
  
  
  <li><a href="https://github.com/haacked"><svg class="svg-icon"><use xlink:href="/assets/svg/minima-social-icons.svg#github"></use></svg> <span class="username">haacked</span></a></li>
  
  
  
  <li><a href="https://twitter.com/haacked"><svg class="svg-icon"><use xlink:href="/assets/svg/minima-social-icons.svg#twitter"></use></svg> <span class="username">haacked</span></a></li>
  
  
  <li><a href="http://feeds.haacked.com/haacked"><svg class="svg-icon"><use xlink:href="/assets/svg/minima-social-icons.svg#rss"></use></svg> <span>rss</span></a></li>
</ul>


<!--  viewBox="0 1 16 14" -->
  </div>
</div>
</header>
    <main class="page-content" aria-label="Content">
      <div class="wrapper">
        <article class="page">

  <header class="post-header">
    <h1 class="post-title">Specifying a Windows Service Description</h1>
  </header>

  <div class="post-content">
    <p>Source listing for methods to add and remove a Windows Service
description to and from the Registry.</p>

<p>AddServiceDescriptionToRegistry should be called within the Install
method of a System.Configuration.Install.Installer instance while
RemoveServiceDescriptionFromRegistry should be called from the Uninstall
method.</p>

<p>Notice that these methods use a Log</p>

<div class="language-csharp highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="c1">/// &lt;summary&gt;</span>
<span class="c1">/// Adds the service description to the registry.</span>
<span class="c1">/// &lt;/summary&gt;</span>
<span class="c1">/// &lt;param name="serviceName"&gt;&lt;/param&gt;</span>
<span class="c1">/// &lt;param name="description"&gt;&lt;/param&gt;</span>
<span class="k">protected</span> <span class="k">virtual</span> <span class="k">void</span> <span class="nf">AddServiceDescriptionToRegistry</span><span class="p">(</span><span class="kt">string</span> <span class="n">serviceName</span><span class="p">,</span> <span class="kt">string</span> <span class="n">description</span><span class="p">)</span>
<span class="p">{</span>
    <span class="n">Microsoft</span><span class="p">.</span><span class="n">Win32</span><span class="p">.</span><span class="n">RegistryKey</span> <span class="n">system</span><span class="p">;</span>
    <span class="n">Microsoft</span><span class="p">.</span><span class="n">Win32</span><span class="p">.</span><span class="n">RegistryKey</span>    <span class="n">currentControlSet</span><span class="p">;</span> <span class="c1">//HKEY_LOCAL_MACHINE\Services\CurrentControlSet</span>
    <span class="n">Microsoft</span><span class="p">.</span><span class="n">Win32</span><span class="p">.</span><span class="n">RegistryKey</span> <span class="n">services</span><span class="p">;</span> <span class="c1">//...\Services</span>
    <span class="n">Microsoft</span><span class="p">.</span><span class="n">Win32</span><span class="p">.</span><span class="n">RegistryKey</span> <span class="n">service</span><span class="p">;</span> <span class="c1">//...\&lt;Service Name&gt;</span>
    <span class="n">Microsoft</span><span class="p">.</span><span class="n">Win32</span><span class="p">.</span><span class="n">RegistryKey</span> <span class="n">config</span><span class="p">;</span> <span class="c1">//...\Parameters - this is where you can put service-specific configuration</span>
    <span class="k">try</span>
    <span class="p">{</span>
        <span class="c1">//Open the HKEY_LOCAL_MACHINE\SYSTEM key</span>
        <span class="n">system</span> <span class="p">=</span> <span class="n">Microsoft</span><span class="p">.</span><span class="n">Win32</span><span class="p">.</span><span class="n">Registry</span><span class="p">.</span><span class="n">LocalMachine</span><span class="p">.</span><span class="nf">OpenSubKey</span><span class="p">(</span><span class="s">"System"</span><span class="p">);</span>
        <span class="c1">//Open CurrentControlSet</span>
        <span class="n">currentControlSet</span> <span class="p">=</span> <span class="n">system</span><span class="p">.</span><span class="nf">OpenSubKey</span><span class="p">(</span><span class="s">"CurrentControlSet"</span><span class="p">);</span>
        <span class="c1">//Go to the services key</span>
        <span class="n">services</span> <span class="p">=</span> <span class="n">currentControlSet</span><span class="p">.</span><span class="nf">OpenSubKey</span><span class="p">(</span><span class="s">"Services"</span><span class="p">);</span>
        <span class="c1">//Open the key for your service, and allow writing</span>
        <span class="n">service</span> <span class="p">=</span> <span class="n">services</span><span class="p">.</span><span class="nf">OpenSubKey</span><span class="p">(</span><span class="n">serviceName</span><span class="p">,</span> <span class="k">true</span><span class="p">);</span>
        <span class="c1">//Add your service's description as a REG_SZ value named "Description"</span>
        <span class="n">service</span><span class="p">.</span><span class="nf">SetValue</span><span class="p">(</span><span class="s">"Description"</span><span class="p">,</span> <span class="n">description</span><span class="p">);</span>
        <span class="c1">//(Optional) Add some custom information your service will use...</span>
        <span class="n">config</span> <span class="p">=</span> <span class="n">service</span><span class="p">.</span><span class="nf">CreateSubKey</span><span class="p">(</span><span class="s">"Parameters"</span><span class="p">);</span>
    <span class="p">}</span>
    <span class="k">catch</span><span class="p">(</span><span class="n">Exception</span> <span class="n">e</span><span class="p">)</span>
    <span class="p">{</span>
        <span class="c1">//Log.Error("Error occurred while attempting to add a service description to the registry.", e);</span>
    <span class="p">}</span>
<span class="p">}</span>
<span class="c1">/// &lt;summary&gt;</span>
<span class="c1">/// Removes the service description from the registry.</span>
<span class="c1">/// &lt;/summary&gt;</span>
<span class="c1">/// &lt;param name="serviceName"&gt;&lt;/param&gt;</span>
<span class="k">protected</span> <span class="k">virtual</span> <span class="k">void</span> <span class="nf">RemoveServiceDescriptionFromRegistry</span><span class="p">(</span><span class="kt">string</span> <span class="n">serviceName</span><span class="p">)</span>
<span class="p">{</span>
    <span class="n">Microsoft</span><span class="p">.</span><span class="n">Win32</span><span class="p">.</span><span class="n">RegistryKey</span> <span class="n">system</span><span class="p">;</span>
    <span class="n">Microsoft</span><span class="p">.</span><span class="n">Win32</span><span class="p">.</span><span class="n">RegistryKey</span>    <span class="n">currentControlSet</span><span class="p">;</span> <span class="c1">//HKEY_LOCAL_MACHINE\Services\CurrentControlSet</span>
    <span class="n">Microsoft</span><span class="p">.</span><span class="n">Win32</span><span class="p">.</span><span class="n">RegistryKey</span> <span class="n">services</span><span class="p">;</span> <span class="c1">//...\Services</span>
    <span class="n">Microsoft</span><span class="p">.</span><span class="n">Win32</span><span class="p">.</span><span class="n">RegistryKey</span> <span class="n">service</span><span class="p">;</span> <span class="c1">//...\&lt;Service Name&gt;</span>
    <span class="n">Microsoft</span><span class="p">.</span><span class="n">Win32</span><span class="p">.</span><span class="n">RegistryKey</span> <span class="n">config</span><span class="p">;</span> <span class="c1">//...\Parameters - this is where you can put service-specific configuration</span>
    <span class="k">try</span>
    <span class="p">{</span>
        <span class="c1">//Drill down to the service key and open it with write permission</span>
        <span class="n">system</span> <span class="p">=</span> <span class="n">Microsoft</span><span class="p">.</span><span class="n">Win32</span><span class="p">.</span><span class="n">Registry</span><span class="p">.</span><span class="n">LocalMachine</span><span class="p">.</span><span class="nf">OpenSubKey</span><span class="p">(</span><span class="s">"System"</span><span class="p">);</span>
        <span class="n">currentControlSet</span> <span class="p">=</span> <span class="n">system</span><span class="p">.</span><span class="nf">OpenSubKey</span><span class="p">(</span><span class="s">"CurrentControlSet"</span><span class="p">);</span>
        <span class="n">services</span> <span class="p">=</span> <span class="n">currentControlSet</span><span class="p">.</span><span class="nf">OpenSubKey</span><span class="p">(</span><span class="s">"Services"</span><span class="p">);</span>
        <span class="n">service</span> <span class="p">=</span> <span class="n">services</span><span class="p">.</span><span class="nf">OpenSubKey</span><span class="p">(</span><span class="n">serviceName</span><span class="p">,</span> <span class="k">true</span><span class="p">);</span>
        <span class="c1">//Delete any keys you created during installation (or that your service created)</span>
        <span class="n">service</span><span class="p">.</span><span class="nf">DeleteSubKeyTree</span><span class="p">(</span><span class="s">"Parameters"</span><span class="p">);</span>
        <span class="c1">//...</span>
    <span class="p">}</span>
    <span class="k">catch</span><span class="p">(</span><span class="n">Exception</span> <span class="n">e</span><span class="p">)</span>
    <span class="p">{</span>
        <span class="c1">//Log.Error("Error occurred while trying to remove the service description from the registry.", e);</span>
    <span class="p">}</span>
<span class="p">}</span>
</code></pre></div></div>


  </div>

</article>

      </div>
      <footer class="site-footer h-card">
  <div class="wrapper">
    <div class="footer-col-wrapper">
      <div class="footer-col footer-col-1">
        <ul class="contact-list">
          <li class="p-name">
            
              Phil Haack
            
            </li>
            
        </ul>
      </div>

      <div class="footer-col footer-col-2">
        <ul class="social-media-list">
  
  
  
  <li><a href="https://github.com/haacked"><svg class="svg-icon"><use xlink:href="/assets/svg/minima-social-icons.svg#github"></use></svg> <span class="username">haacked</span></a></li>
  
  
  
  <li><a href="https://twitter.com/haacked"><svg class="svg-icon"><use xlink:href="/assets/svg/minima-social-icons.svg#twitter"></use></svg> <span class="username">haacked</span></a></li>
  
  
  <li><a href="http://feeds.haacked.com/haacked"><svg class="svg-icon"><use xlink:href="/assets/svg/minima-social-icons.svg#rss"></use></svg> <span>rss</span></a></li>
</ul>


<!--  viewBox="0 1 16 14" -->
      </div>

      <div class="footer-col footer-col-3">
        <p>You&#39;ve been Haacked is a blog about Technology, Software, Management, and Open Source. It&#39;s full of good stuff.
</p>
      </div>
    </div>

  </div>

</footer>

    </main>
  </body>
</html>
