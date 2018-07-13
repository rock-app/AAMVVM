<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>

	<instantiate from="root/res/layout/databinding.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <#if generateViewModel>  
    <instantiate from="root/src/app_package/viewmodel/ViewModel.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/viewmodel/${shortName}ViewModel.${ktOrJavaExt}" />
    </#if>
    
    <instantiate from="root/src/app_package/VMFragment.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentClass}.${ktOrJavaExt}" />

    <open file="${escapeXmlAttribute(srcOut)}/${fragmentClass}.${ktOrJavaExt}" />
</recipe>
