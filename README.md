# Preside Matomo (former Piwik) Extension
Extension to add functionality for including Matomo (former Piwik) analytics to your website.

## Installation
Install the extension to your application via either of the methods detailed below (Git submodule / CommandBox + ForgeBox)

### Git Submodule method
From the root of your application, type the following command:

	git submodule add https://github.com/madmikede/preside-ext-matomo.git application/extensions/preside-ext-matomo

### CommandBox (box.json) method
From the root of your application type the following command:

	box install preside-ext-matomo

From the Preside CMS developer console (using the back tick ` key) reload the application:

	reload all

### Enabling the extension
Once the files are installed, enable the extension by opening up the Preside CMS developer console and entering:

	extension enable preside-ext-matomo
	reload all

## Usage
### Settings
The extensions need some settings. They can all be set in System > Settings > Matomo

### Layouts
Add the following line below the closing </body> tag in your layout templates.

```...
        #renderViewlet( event="Matomo._matomo" )#
    </body>
</html>
```

### OptOut Iframe
You may need the possibility for the user to OptOut from Matomo analytics. In this case you can include an Iframe with one of the two ways:

1. OptOut-Iframe on every page
	If you need the OptOut-Iframe on every page you can include it in your layout/view templates wherever you need it:


	```
					...
					#renderViewlet( event="Matomo._matomo_optout" )#
					...
	```

2. OptOut-Iframe on a specific page
	If you need the OptOut-Iframe only on a specific page you can add a widget to your main content. 

	**Note:** _The Iframe is maybe hidden. If this happens, in your browser is already activated the DoNotTrack-Option and the Iframe is automatically hidden by the browser. This is not a bug in the extension._


### License
Code released under the [MIT licence](http://opensource.org/licenses/MIT).

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.