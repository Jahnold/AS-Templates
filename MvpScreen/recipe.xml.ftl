<?xml version="1.0"?>
<recipe>
 
	<instantiate 
		from="src/app_package/View.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/${className}View.java" 
        />

	<instantiate 
		from="src/app_package/Screen.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/${className}Screen.java" 
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
    <open file="${srcOut}/${className}Screen.java"/>
</recipe>