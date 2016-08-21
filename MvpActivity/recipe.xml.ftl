<?xml version="1.0"?>
<recipe>
 
    <merge 
        from="AndroidManifest.xml.ftl"
        to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" 
        />

	<instantiate 
		from="src/app_package/View.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/${className}View.java" 
        />

	<instantiate 
		from="src/app_package/Activity.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/${className}Activity.java" 
        />

	<instantiate 
		from="src/app_package/Presenter.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/${className}Presenter.java" 
        />
 
    <#if includeLayout>

    <instantiate 
    	from="res/layout/layout.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" 
        />

    <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />

    </#if>
 
	<open file="${srcOut}/${className}Presenter.java"/>
    <open file="${srcOut}/${className}Activity.java"/>
</recipe>