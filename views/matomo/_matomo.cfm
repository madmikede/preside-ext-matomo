<cfscript>
	MatomoIsActive         = getSystemSetting( category="matomo", setting="is_active"   , default=false );
	MatomoSiteId           = getSystemSetting( category="matomo", setting="siteid"      , default=""    );
	MatomoServername       = getSystemSetting( category="matomo", setting="servername"  , default="0"    );

</cfscript>
<cfoutput>
	<cfif ( IsBoolean( MatomoIsActive ?: false ) && MatomoIsActive ) >
		<!-- Matomo -->
		<script type="text/javascript">
			var _paq = _paq || [];
			_paq.push(['trackPageView']);
			_paq.push(['enableLinkTracking']);
			(function() {
				var u="#MatomoServername#/";
				_paq.push(['setTrackerUrl', u+'piwik.php']);
				_paq.push(['setSiteId', '#MatomoSiteId#']);
				var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
				g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'piwik.js'; s.parentNode.insertBefore(g,s);
			})();
		</script>
		<!-- End Matomo Code -->
	</cfif>
</cfoutput>