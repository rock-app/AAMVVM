package ${escapeKotlinIdentifiers(packageName)}
<#if generateViewModel>
import ${packageName}.viewmodel.${shortName}ViewModel
import javax.inject.Inject
</#if>  

<#if applicationPackage??>
import ${applicationPackage}.R
import ${applicationPackage}.databinding.${activityClass}Binding
import ${applicationPackage}.view.base.BaseActivity
</#if>

/**
 * description: ${activityClass}
 <#if generateViewModel>
 * @see ${shortName}ViewModel
 </#if>
 *
 * @date ${.now?string("yyyy/MM/dd")}
 */

class ${activityClass} : BaseActivity<${activityClass}Binding>(){

	<#if generateViewModel>
	@Inject
	lateinit var mViewModel : ${viewmodelName}
	</#if>

	override fun getLayoutId(): Int = R.layout.${layoutName}

    override fun initView() {
         <#if generateViewModel>
        getComponent().inject(this)
        mBinding.vm=mViewModel
        </#if>
    }
}
