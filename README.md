# COOKPAD WEB TEST

* Ruby version: Ruby 2.2.1p85

* Rails version: Rails 4.2.6

* Used gems: devise, paperclip, simple_form, therubyracer ...

* Demo: [52.78.0.229:3000](http://52.78.0.229:3000)

## Requirements

### Ruby on Rails

Please install Ruby on Rails on your Computer.

### ImageMagick

If you're on Mac OS X, you'll want to run the following with [Homebrew]
<pre><code>brew install imagemagick</code></pre>
If you are on Ubuntu (or any Debian base Linux distribution), you'll want to run the following with apt-get:
<pre><code>sudo apt-get install imagemagick -y</code></pre>

If tou are on Centos, you'll want to run the following with yum:
<pre><code>sudo yum install ImageMagick ImageMagick-devel</code></pre>

### Bundle, Migrate, Run

<pre><code>bundle install</code></pre>
<pre><code>rake db:migrate</code></pre>
<pre><code>rails s</code></pre>

Check localhost:3000 through your web browser
