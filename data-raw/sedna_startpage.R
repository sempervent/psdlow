#!/usr/bin/Rscript
#' testing environment for link generation function
#'
#' eventually creation of each of these items will be through a function and a
#' more bare template will be present here
sedna_startpage <- list(
  title = 'sedna',
  # since i'm referring to these objects as sedna objects in the phasedna
  # environment, we will call this startpage sedna
  layout_style = c('simple','trendyFart','minimal','vaporwave')[1],
  # simple  a simplistic, low movement layout
  # trendyFart has a lot of animations and such
  # minimal is a clean black and white text layout
  # vaporwave is in the style of vaporwave; 1980s miami with more fake trees
  #           and neon lights
  # define sections and links within sections -------------------------------
  # notice how all the link sections end in '_links'. That is important because
  # it could also end in '_boxes' if they are searchable web boxes
  sections = list(
    # sections are made up of different types that are always separated by _
    # main_links --------------------------------------------------------------
    # main links will always be displayed on the page, other link and link sections
    # will take slightly longer to access, whereas these are constantly displayed
    # but not large enough to be obtrusive. some of these main_links are also
    # included in other sections
    main_links = c(
      gmail = 'https://mail.google.com',
      live  = 'https://outlook.live.com',
      github = 'https://github.com',
      forbin = 'http://192.168.1.245/cgi-bin/',
      rstudio = 'http://192.168.1.178:8787',
      trello = 'http://trello.com',
      plex = 'http://192.168.1.178:32400/web/index.html',
      pocket = 'http://getpocket.com',
      reddit = 'http://reddit.com'
    ),
    # productivity links ------------------------------------------------------
    # productivity links are useful links that help me throughout the day
    productivity_links = c(
      sheets = 'https://sheets.google.com',
      docs   = 'https://docs.google.com',
      office = 'http://office365.com',
      dropbox = 'https://dropbox.com',
      github = 'https://github.com',
      trello = 'http://trello.com',
      drive = 'http://drive.google.com',
      pocket = 'http://getpocket.com'
    ),

    # watch links -------------------------------------------------------------
    # these are primarily videos you watch on the internet tubes i'm told
    watch_links = c(
      youtube = 'http://youtube.com',
      plex = 'http://plex.tv',
      netflix = 'http://netflix.com',
      hulu = 'http://www.hulu.com',
      flixster = 'http://flixster.com/',
      comedycentral = 'http://comedycentral.com',
      amazonVideo = 'http://www.amazon.com/Amazon-Video/b?ie=UTF8&node=2858778011',
      watchEspn = 'http://watchespn.com',
      hbonow = 'http://www.hbonow.com/'
    ),
    # listen links ------------------------------------------------------------
    listen_links = c(
      spotify = 'http://spotify.com',
      soundcloud = 'http://soundcloud.com',
      lma = 'https://archive.org/details/etree',
      pandora = 'https://pandora.com',
      rmusic = 'http://reddit.com/r/music',
      discogs = 'http://discogs.com'
    ),
    # make links --------------------------------------------------------------
    # these links are where you can put things you want to make or where you put
    # the things you make to try to support your making habbits
    make_links = c(
      blogspot = 'http://blogger.com/',
      etsy = 'http://etsy.com',
      thingiverse = 'https://www.thingiverse.com/',
      makezine = 'https://makezine.com',
      hackaday = 'https://hackaday.com/'
    ),

# finance links -----------------------------------------------------------
    finance_links = c(
      mint = 'https://mint.com',
      suntrust = 'https://suntrust.com',
      chase = 'https://chase.com',
      paypal = 'https://paypal.com',
      treasurydirect = 'http://www.treasurydirect.gov/',
      bankofAmerica = 'https://www.bankofamerica.com/'
    ),

# tech links --------------------------------------------------------------
    tech_links = c(
      pcpartpicker = 'https://pcpartpicker.com',
      techcrunch = 'https://techcrunch.com/'
    ),
# social links ------------------------------------------------------------
    social_links = c(
      facebook = 'https://facebook.com',
      twitter = 'https://twitter.com',
      linkedin = 'https://linkedin.com',
      researchgate = 'http://researchgate.com',
      pocket = 'http://getpocket.com',
      reddit = 'http://reddit.com',
      discogs = 'http://www.discogs.com/',
      boardgamegeek = 'https://boardgamegeek.com/',
      goodreads = 'https://www.goodreads.com'
    ),
# shopping links ----------------------------------------------------------
    shop_links = c(
      amazon = 'https://amazon.com',
      massdrop = 'https://massdrop.com',
      woot = 'http://woot.com',
      etsy = 'https://etsy.com',
      craigslist = 'http://knoxville.craigslist.com',
      ebay = 'https://ebay.com',
      abebooks = 'http://www.abebooks.com',
      leftlanesports = 'http://leftlanesports.com',
      alibaba = 'https://www.alibaba.com/',
      banggood = 'https://www.banggood.com/'
    ),
# learn links -------------------------------------------------------------
    learn_links = c(# i so want this as a search box
      googlescholar = 'https://scholar.google.com',
      kahnacademy = 'https://www.khanacademy.org/',
      udacity = 'https://www.udacity.com/'),
# game links --------------------------------------------------------------
    game_links = c(
      dominion = "http://dominion.games",
      foe = "https://us0.forgeofempires.com/page/",
      steam = "http://store.steampowered.com/"
    ),
# search boxes ------------------------------------------------------------
    # the plan is to make these boxes more customizable eventually, but they are
    # only raw html right now. Eventually want to get them cleaner and more
    # customizable
    search_boxes = c(
      # display the google search bar
      google = '<form method="get" action="http://www.google.com/search">
      <input type="text" name="q" size="31" maxlength="255" value="">
      <input type="submit" value="Google">
      </form>',
      # display the wikipedia search bar
      wikipedia = '<form method="get" action="http://www.wikipedia.org/search-redirect.php">
      <input type="hidden" name="language" value="en">
      <input type="text" name="search" size="31">
      <input type="submit" name="go" value="Wikipedia">
      </form>',
      # display the imdb search bar
      imdb = '<form method="get" action="http://www.imdb.com/find">
      <input type="text" name="q" size="31">
      <input type="submit" value="IMDB">
      </form>',
      # display the ebay search bar
      ebay = '<form method=”get” action=”http://search.ebay.com/search/search.dll”>
      <input type=”hidden” name=”fts” value=”2″ />
      <input type=”text” name=”satitle” value=”” maxlength=”300″ size=”30″ />
      <input type=”submit” value=”Search” />
      </form>',
      # search on amazon
      amazon = '<form method="get" action="http://www.amazon.com/s/">
      <input type="hidden" name="url" value="search-alias=aps">
      <input type="text" name="field-keywords" size="31">
      <input type="submit" name="Go" value="Amazon">
      </form>',
      # search on thesaurus
      thesaurus = '<form method="get" action="http://dictionary.reference.com/search"><input type="hidden" name="db" value="thesaurus">
      <input type="text" name="q" size="31" maxlength="50"><input type="submit" value="Thesaurus"></form>',
      # look up a word
      dictionary = '<form method="get" action="http://dictionary.reference.com/search">
      <input type="hidden" name="db" value="dictionary">
      <input type="text" name="q" size="31" maxlength="50">
      <input type="submit" value="Dictionary">
      </form>'
    )
  )
)

saveRDS(sedna_startpage, 'data/sedna_startpage.rds')
