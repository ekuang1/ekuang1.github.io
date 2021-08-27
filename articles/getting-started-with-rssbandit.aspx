<!DOCTYPE html>
<html lang="en">
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="twitter:card" content="summary">
  <meta name="twitter:card" content="summary_large_image" />
  <meta name="twitter:title" content="Getting Started With RssBandit" />
  <meta name="twitter:description" content="You've been Haacked is a blog about Technology, Software, Management, and Open Source. It's full of good stuff.
" />
  <meta name="twitter:url" content="" />
  <meta name="twitter:image" content="https://2.gravatar.com/avatar/cdf546b601bf29a7eb4ca777544d11cd?s=160" /><meta name="twitter:site" content="@haacked" />

  <!-- Begin Jekyll SEO tag v2.7.1 -->
<title>Getting Started With RssBandit | You’ve Been Haacked</title>
<meta name="generator" content="Jekyll v3.9.0" />
<meta property="og:title" content="Getting Started With RssBandit" />
<meta name="author" content="Phil Haack" />
<meta property="og:locale" content="en_US" />
<meta name="description" content="You’ve been Haacked is a blog about Technology, Software, Management, and Open Source. It’s full of good stuff." />
<meta property="og:description" content="You’ve been Haacked is a blog about Technology, Software, Management, and Open Source. It’s full of good stuff." />
<meta property="og:site_name" content="You’ve Been Haacked" />
<meta name="twitter:card" content="summary" />
<meta property="twitter:title" content="Getting Started With RssBandit" />
<script type="application/ld+json">
{"author":{"@type":"Person","name":"Phil Haack"},"@type":"WebPage","description":"You’ve been Haacked is a blog about Technology, Software, Management, and Open Source. It’s full of good stuff.","url":"/articles/getting-started-with-rssbandit.aspx","headline":"Getting Started With RssBandit","@context":"https://schema.org"}</script>
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
    <h1 class="post-title">Getting Started With RssBandit</h1>
  </header>

  <div class="post-content">
    <p>Getting Started With RSSBandit</p>

<p>A beginners guide to RSS feed aggregation.</p>

<p>Phil Haack
February 2004</p>

<p><strong>Summary:</strong> Outlines the basic steps to getting started with RSSBandit.
Also downloadable as a <a href="https://haacked.com/GettingStartedWithRssBandit.zip">Word
document</a>.</p>

<h1 id="introduction">Introduction</h1>

<p>So what exactly is a blog?  And what does a blog have to do with RSS? 
And now that you mention it, what is RSS?  Slow down there fella. </p>

<p>Blogs have been getting a lot of press lately due to their adoption by
various campaigns during this election year.  A Blog is simply a weblog,
an online diary. Nothing more, Nothing less.  For an example of a blog
written by a simpleton, visit <a href="http://haack.org/">http://haack.org/</a>.</p>

<p>The reason you read about blogs in Doonesbury is due to the plethora of
tools out there that make it very easy to publish every interesting or
inane thought in you head to the World Wide Web.  A Japanese hip-hopper
can boot up a browser and find out what type of meatloaf Sally in Omaha
cooked for her family last night.  Average citizens can deem themselves
journalists and publish un-edited reports of the events near them.  This
can be very good or bad depending on whether the journalist said
something nice about you.</p>

<p>As the presence of blogs proliferates, how do you keep track of them
all?  One option is to keep a list in and check every one of them each
day to see if something new has been published.  That hardly seems
efficient.</p>

<p>That’s where RSS comes into the picture.  If you took the time to visit
my blog, you’ll notice a big orange “XML” link in the left hand side. 
That’s my RSS feed.</p>

<p>RSS is an XML syntax for syndicating content.  In English, this means
that RSS is used to describe the content that one is publishing.  For
example, I may write a blog entry like so:</p>

<p>Today I sat in front of the computer all day.</p>

<p>Now if you want to know whether or not you’ve already read this entry,
it would be nice to know some information about this specific entry,
such as its title, when the entry was made, etc…</p>

<p>RSS is a format for marking up a news item or blog entry with such
information and it looks a little something like this (note: not
exactly):</p>

<div class="language-xml highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="cp">&lt;?xml version="1.0" encoding="utf-8" ?&gt;</span>
<span class="nt">&lt;item&gt;</span>
  <span class="nt">&lt;title&gt;</span>My Exciting Day<span class="nt">&lt;/title&gt;</span>
  <span class="nt">&lt;link&gt;</span>http://haack.org/<span class="nt">&lt;/link&gt;</span>
  <span class="nt">&lt;description&gt;</span> <span class="nt">&lt;/description&gt;</span>
  <span class="nt">&lt;date&gt;</span>2004-02-08<span class="nt">&lt;/date&gt;</span>
<span class="nt">&lt;/item&gt;</span>
</code></pre></div></div>
<p> </p>

<p>Now to the untrained eye, this mark-up is quite unsightly.  The actual
RSS format is even uglier, and that’s OK because it isn’t intended for
the untrained eye.  It’s intended to be read by other computers.</p>

<p>“Huh?  You mean my computer is interested in reading about Sally’s
Meatloaf?”</p>

<p>Not quite.  The Japanese hip-hopper is still interested in reading about
Sally, but rather than checking in on Sally’s blog every day, he uses an
RSS Aggregator (sometimes called an RSS Reader or News Aggregator) to
aggregate all the various blogs to which he subscribes.  It’s the
aggregator that reads the unslightly mark-up and will notify our
fearless hip-hopper that Sally’s cooked up another fantastic dish.</p>

<p>For more information about RSS, please see the following URL:
<a href="http://www.mnot.net/RSS/tutorial/">http://www.mnot.net/RSS/tutorial/</a>.</p>

<p>So where can you get your hands on such a program?  Visit the following
link
(<a href="http://sourceforge.net/project/showfiles.php?group_id=96589">http://sourceforge.net/project/showfiles.php?group_id=96589</a>).
 You’ll see a list of the various versions of RSSBandit.  In general,
select the version with the largest number (usually at the top of the
list) and download the installer.  For example, at the time of this
writing, you would click on the link that says
“<a href="http://prdownloads.sourceforge.net/rssbandit/RssBandit1.2.0.90installer.zip?download">RssBandit1.2.0.90installer.zip</a>”. </p>

<p>Before you install RssBandit, make sure that you have the Microsoft .NET
Framework installed.  How?  Go to
<a href="http://windowsupdate.microsoft.com/">http://windowsupdate.microsoft.com/</a>
and scan for the latest updates.  If an option comes up for Microsoft
.NET, install it. If not, you may already have the framework.</p>

<h1 id="rss-bandit-application">Rss Bandit Application</h1>

<h2 id="overview">Overview</h2>

<p>Now we get to the whole point of the article.  After you’ve downloaded
and installed RSSBandit, you should see a screen that looks something
like this (results may vary)</p>

<p><img src="/assets/images/RssBanditImages/image001.jpg" alt="" /></p>

<p>On the left is a list of feed subscriptions organized into category
folders.  On the right is a list of headlines in the top pane.  In the
bottom right pane is the actual content of a selected headline. 
RssBandit allows you to customize the layout of the reading pane and
headlines list.</p>

<p>One thing to note, the headlines displayed in the list depend on the
feed category or feed selected in the list of feed subscriptions.  When
a category is selected, the headlines for every feed in that category
(and sub-category) are displayed.  When a single feed is selected, then
only the headlines for that feed are displayed.</p>

<p>At the top, you’ll notice a toolbar with multiple buttons.  Most of
these items are self explanatory, but I’ll delve into them a bit.</p>

<p><img src="/assets/images/RssBanditImages/image002.jpg" alt="" /></p>

<h2 id="subscribing-to-your-first-feed">Subscribing To Your First Feed</h2>

<p>When you install RssBandit, you’ll actually notice that the creators of
RssBandit were kind enough to already include a few feeds.  Feel free to
read them.  There are a couple of feeds devoted to RssBandit in there
along with Wired News (a favorite of mine) and Slashdot.</p>

<p>But if you’re looking for really good content, it’s time to learn to
subscribe to a new feed.  Hey! Let’s try mine!</p>

<p>Step 1: Click on “New Feed”.  This will bring up a dialog for adding new
feeds.</p>

<p><img src="/assets/images/RssBanditImages/image003.jpg" alt="" /></p>

<p><strong><img src="/assets/images/RssBanditImages/image004.jpg" alt="" /></strong></p>

<p>Step 2: Paste the text
<a href="https://haacked.com/Rss.aspx">https://haacked.com/Rss.aspx</a>
into the box labelled with “Url”.  Afterwards, click the button “Get
Title From Feed.”  Rss Bandit will look up the title via the web. 
Finally, select a category and then click “Ok”.  You’ve successfully
subscribed to an Rss Feed of my blog.  If you look in the list of
subscribed feeds, you’ll notice a new entry in Bold.  The (19) is number
of unread items.  Go ahead, read them all!</p>

<p><img src="/assets/images/RssBanditImages/image005.jpg" alt="" /></p>

<h2 id="setting-preferences-for-a-feed">Setting Preferences For A Feed</h2>

<p>By default, items within a feed are held for a limited time only.  Since
I’m producing ground breaking content, you may want to change this
setting for my feed.  Right click on the feed and click on the
properties menu item.</p>

<p><img src="/assets/images/RssBanditImages/image006.jpg" alt="" /></p>

<p>This brings up the “Feed Properties” Dialog box.  Please feel free to
change the Max. Item Age option to Unlimited.  Feed items will never
expire with this setting.  You can also change the Update Frequency as
well.  This setting tells RssBandit how often to check the feed for new
headlines.  Since I’m not producing content every 60 minutes, that is
more than a generous setting.  For others like Yahoo News, you might
even consider checking every half hour.</p>

<p><img src="/assets/images/RssBanditImages/image007.jpg" alt="" /></p>

<h2 id="discovering-new-feeds">Discovering New Feeds</h2>

<p>So by now you’re probably hooked and in dire need of new feeds.  You can
visit the following sites to find new and interesting blogs:
<a href="http://www.2rss.com/">http://www.2rss.com/</a> (Directory, Software and
Articles about RSS, Portal)
<a href="http://www.blogarama.com/">http://www.blogarama.com/</a> (yet another blog
directory).</p>

<p>But if you’re like me, most of the feeds you will find will be by word
of mouth.  Or should I say “word of blog”?  You see, most blogs often
have what is called a blog roll.  Basically it is a list of blogs read
by the author of the blog.  Also, many blog entries will refer to other
blogs. </p>

<p>RssBandit has a very neat feature that will automatically discover RSS
Feeds for these blogs.  Say you’re reading the latest installment of my
riveting blog, and I link to David Winer’s blog.  Look up in the toolbar
of RssBandit and you may notice that there’s an icon with an orange XML
with a #1 in front of it
<img src="/assets/images/RssBanditImages/image008.jpg" alt="" />.</p>

<p>Click on it and you’ll see a list of the feeds that RssBandit has
recently discovered.</p>

<p><img src="/assets/images/RssBanditImages/image009.jpg" alt="" /></p>

<p>In the screenshot above, you can see that “Scripting News” was
discovered. Clicking a discovered feed opens the Add New Feed dialog box
with its fields pre-populated with the information needed to subscribe
to the feed.</p>

<h2 id="rssbandit-options">RssBandit Options</h2>

<p>Now that you’re well on your way to RSS bliss, you should spend some
time playing around with the various options in RssBandit.  I won’t go
into every option, but I will discuss a couple that I find useful.</p>

<h3 id="feed-item-formatting">Feed Item Formatting</h3>

<p>In the menu bar, select the “Tools” menu and click “Preferences.”  That
will bring up a dialog box with several tabs.  Click on the “Feed Items”
tab and you’ll see the following dialog.</p>

<p><img src="/assets/images/RssBanditImages/image010.jpg" alt="" /></p>

<p>This page allows you to change the format for items within the reading
pane.  By clicking “Use a custom formatter”, you can select various
formatters that have been created for RssBandit.  My personal favorite
is outlook2003-orange.  However, have fun trying out the various
formats.</p>

<h3 id="reading-pane-position">Reading Pane Position</h3>

<p>RssBandit also allows you to change the position of the reading pane in
relation to the list of headlines. Simply select the “View” menu, and
click the “Reading Pane Position” sub-menu item.  A list of options will
appear to the right. Collect them all!</p>

<h2 id="conclusion">Conclusion</h2>

<p>This article attempts to give you an easy to use guide to getting
started with RssBandit.  Ideally it is clear enough for your techno
phobic parents to get started reading your RSS feed using these
instructions. Whether or not they understand anything you write about,
well that’s another matter.</p>

<p>This article is by no means a thorough document of all of RssBandit’s
features.  However, I do hope to write more in the future about this
wonderful piece of software.</p>

<h2 id="more-information">More Information</h2>

<p>For more information, please check out the following sites.</p>

<p>Dare Obasanjo
(<a href="http://www.25hoursaday.com/">http://www.25hoursaday.com/</a>) one of the
creators of RssBandit.</p>

<p>RSS Tutorial
(<a href="http://www.mnot.net/RSS/tutorial/">http://www.mnot.net/RSS/tutorial/</a>).</p>

<p>RssBandit Home Page (http://www.rssbandit.org)</p>

<p>David Winer’s blog, the creator of RSS
(<a href="http://www.scripting.com/">http://www.scripting.com</a>)</p>

<p>Windows Update Website
(<a href="http://windowsupdate.microsoft.com/">http://windowsupdate.microsoft.com/</a>)</p>

<p> </p>


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
