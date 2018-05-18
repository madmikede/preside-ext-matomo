<cfscript>
	MatomoIsActive         = getSystemSetting( category="matomo", setting="is_active"         , default=false    );
	MatomoServername       = getSystemSetting( category="matomo", setting="servername"        , default="0"      );
	MatomoFontColor        = getSystemSetting( category="matomo", setting="optout_fontcolor"  , default="000000" );
	MatomoBgColor          = getSystemSetting( category="matomo", setting="optout_bgcolor"    , default=""       );
	MatomoFontSize         = getSystemSetting( category="matomo", setting="optout_fontsize"   , default=""       );
	MatomoFontFamily       = getSystemSetting( category="matomo", setting="optout_fontfamily" , default=""       );
	MatomoLanguage         = getSystemSetting( category="matomo", setting="optout_language"   , default="en"     );

	if(isEmpty(MatomoFontColor)) { MatomoFontColor="000000" }
</cfscript>
<cfoutput>
	<cfif ( IsBoolean( MatomoIsActive ?: false ) && MatomoIsActive ) >
		<iframe style="border: 0; height: 200px; width: 600px;"
      src="#MatomoServername#/index.php?module=CoreAdminHome&action=optOut&language=#MatomoLanguage#&backgroundColor=#MatomoBgColor#&fontColor=#MatomoFontColor#&fontSize=#MatomoFontSize#&fontFamily=#MatomoFontFamily#"
      ></iframe>
	</cfif>
</cfoutput>