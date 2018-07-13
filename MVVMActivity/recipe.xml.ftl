<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
  <#include "root://activities/common/recipe_manifest.xml.ftl" />

	<instantiate from="root/res/layout/databinding.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <#if generateViewModel>  
    <instantiate from="root/src/app_package/viewmodel/ViewModel.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/viewmodel/${shortName}ViewModel.${ktOrJavaExt}" />
    </#if>
    
    <instantiate from="root/src/app_package/VMActivity.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.${ktOrJavaExt}" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.${ktOrJavaExt}" />
</recipe>
